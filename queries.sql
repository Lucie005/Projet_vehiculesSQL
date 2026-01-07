-- 1) Requête de base : véhicules actuellement disponibles
SELECT id_vehicule, marque, modele, immatriculation, autonomie_km, localisation
FROM Vehicule
WHERE etat = 'Disponible';

-- 2) JOIN : véhicules + station (nom, ville, capacité)
SELECT v.id_vehicule, v.marque, v.modele, v.etat,
       s.nom_station, s.ville, s.capacite_bornes
FROM Vehicule v
LEFT JOIN Station s ON v.id_station = s.id_station
ORDER BY s.ville, s.nom_station, v.id_vehicule;

-- 3) Agrégation : nombre de véhicules par état
SELECT etat, COUNT(*) AS nb_vehicules
FROM Vehicule
GROUP BY etat
ORDER BY nb_vehicules DESC;

-- 4) Agrégation : autonomie moyenne par marque (avec filtre)
SELECT marque, ROUND(AVG(autonomie_km), 1) AS autonomie_moyenne_km
FROM Vehicule
WHERE autonomie_km IS NOT NULL
GROUP BY marque
HAVING COUNT(*) >= 2
ORDER BY autonomie_moyenne_km DESC;

-- 5) Agrégation + JOIN : nombre de véhicules par station
SELECT s.id_station, s.nom_station, s.ville, COUNT(v.id_vehicule) AS nb_vehicules
FROM Station s
LEFT JOIN Vehicule v ON v.id_station = s.id_station
GROUP BY s.id_station, s.nom_station, s.ville
ORDER BY nb_vehicules DESC, s.ville;

-- 6) Sous-requête : véhicules jamais loués
SELECT *
FROM Vehicule
WHERE id_vehicule NOT IN (
    SELECT DISTINCT id_vehicule
    FROM Location
);

-- 7) Sous-requête + dates : dernière location par véhicule
SELECT v.id_vehicule, v.marque, v.modele,
       (
         SELECT MAX(l.date_debut)
         FROM Location l
         WHERE l.id_vehicule = v.id_vehicule
       ) AS derniere_location_debut
FROM Vehicule v
ORDER BY derniere_location_debut DESC NULLS LAST;

-- 8) Analyse métier : top 5 des véhicules avec la meilleure autonomie
SELECT id_vehicule, marque, modele, autonomie_km
FROM Vehicule
WHERE autonomie_km IS NOT NULL
ORDER BY autonomie_km DESC
LIMIT 5;

-- 9) Vue : locations détaillées
-- On supprime d'abord pour éviter les erreurs "Relation already exists"
DROP VIEW IF EXISTS vue_locations_detaillees CASCADE;
CREATE VIEW vue_locations_detaillees AS
SELECT l.id_location,
       u.id_utilisateur, u.nom, u.prenom, u.email, u.role,
       v.id_vehicule, v.marque, v.modele, v.immatriculation,
       s.nom_station, s.ville,
       l.date_debut, l.date_fin_prevue, l.date_fin_reelle,
       l.cout_total, l.statut
FROM Location l
JOIN Utilisateur u ON u.id_utilisateur = l.id_utilisateur
JOIN Vehicule v ON v.id_vehicule = l.id_vehicule
LEFT JOIN Station s ON s.id_station = v.id_station;

-- Test de la vue
SELECT * FROM vue_locations_detaillees LIMIT 5;


-- 10) Vue : véhicules actuellement en maintenance
DROP VIEW IF EXISTS vue_vehicules_maintenance CASCADE;
CREATE VIEW vue_vehicules_maintenance AS
SELECT v.id_vehicule, v.marque, v.modele, v.immatriculation, v.etat,
       MAX(m.date_intervention) AS derniere_intervention
FROM Vehicule v
LEFT JOIN Maintenance m ON m.id_vehicule = v.id_vehicule
WHERE v.etat = 'En maintenance'
GROUP BY v.id_vehicule, v.marque, v.modele, v.immatriculation, v.etat
ORDER BY derniere_intervention DESC NULLS LAST;


-- 11) Fonction : calculer le coût total d'une location
DROP FUNCTION IF EXISTS calcul_cout_location CASCADE;

CREATE OR REPLACE FUNCTION calcul_cout_location(
    p_date_debut TIMESTAMP,
    p_date_fin   TIMESTAMP,
    p_tarif_horaire NUMERIC
)
RETURNS NUMERIC
LANGUAGE plpgsql
AS $$
DECLARE
    v_heures NUMERIC;
BEGIN
    IF p_date_fin IS NULL OR p_date_fin <= p_date_debut THEN
        RETURN 0;
    END IF;

    -- Calcul propre en convertissant l'intervalle en heures
    v_heures := (EXTRACT(EPOCH FROM (p_date_fin - p_date_debut)) / 3600.0)::NUMERIC;
    RETURN ROUND(v_heures * p_tarif_horaire, 2);
END;
$$;

-- Test de la fonction (CORRIGÉ ICI : AJOUT DE ::TIMESTAMP)
-- NOW() renvoie une date avec fuseau horaire, on la convertit pour que la fonction l'accepte.
SELECT calcul_cout_location(NOW()::TIMESTAMP - INTERVAL '3 hours', NOW()::TIMESTAMP, 4.50) AS exemple_cout;


-- 12) Triggers : automatiser la mise à jour de l'état du véhicule
CREATE OR REPLACE FUNCTION trg_maj_etat_vehicule_location()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        -- Nouvelle location -> Véhicule devient 'Loué'
        UPDATE Vehicule
        SET etat = 'Loué'
        WHERE id_vehicule = NEW.id_vehicule;
        RETURN NEW;
    ELSIF TG_OP = 'UPDATE' THEN
        -- Fin de location -> Véhicule redevient 'Disponible'
        IF NEW.statut IN ('Terminée', 'Annulée') THEN
            UPDATE Vehicule
            SET etat = 'Disponible'
            WHERE id_vehicule = NEW.id_vehicule;
        END IF;
        RETURN NEW;
    END IF;
    RETURN NEW;
END;
$$;

-- Création des déclencheurs (triggers)
DROP TRIGGER IF EXISTS location_insert_maj_etat ON Location;
CREATE TRIGGER location_insert_maj_etat
AFTER INSERT ON Location
FOR EACH ROW
EXECUTE PROCEDURE trg_maj_etat_vehicule_location();

DROP TRIGGER IF EXISTS location_update_maj_etat ON Location;
CREATE TRIGGER location_update_maj_etat
AFTER UPDATE OF statut ON Location
FOR EACH ROW
EXECUTE PROCEDURE trg_maj_etat_vehicule_location();