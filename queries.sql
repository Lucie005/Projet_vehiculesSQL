Torpedux
Torpedux
torpedux
•
Cléa prime Slayer

Torpedux
Torpedux

 — Hier à 18:17
mais en gros j'ai appris le décès d'un proche pendant le cours donc je suis pas au top ^^' 
du coup bah je me remet trkl et ce soir je m'en occupe
Loom — Hier à 18:17
ah qlq de très proche ?
okok
Torpedux
Torpedux

 — Hier à 18:18
ouais c'était ma monitrice d'équitation avec qui j'ai fait mes cours pendant 15 ans 😵‍💫
on parlais hyper souvent ça me fait chier ^^'
Loom — Hier à 18:19
ahh je comprrends oui
Torpedux
Torpedux

 — Hier à 18:20
yep, du coup je me pose un peu le temps de digérer la nouvelle et je m'y met
Loom — Hier à 18:21
okok pas de pb
Torpedux
Torpedux

 — 15:18
coucou, j'ai enfin tout fini mais je peux pas push
tu m'as pas donner l'accès
Loom — 15:18
ah mince att
Torpedux
Torpedux

 — 15:18
il me reste que la présentation mais ça c'est trkl 
tu me dira ce que t'en pense du read me
Loom — 15:20
okok ça marche, je ferai un test av tt le git avant de rendre le truc
c quoi ton nom github ,
?
Torpedux
Torpedux

 — 15:20
Image
Loom — 15:21
okok c bon
Torpedux
Torpedux

 — 15:21
Image
🤣
Loom — 15:23
MAIS PQQQQ ÇA MARCHE PAAAAAS
t’as demandé à gpt ??
Torpedux
Torpedux

 — 15:23
x)
nan mais pas sur qu'il m'aide
je vais check et je te dis
Loom — 15:24
okok psq jsp quoi faire de plus 🥲
Torpedux
Torpedux

 — 15:24
dans tout les cas le projet est fait donc pas de panique
faut juste le push
Ton erreur dit tout : GitHub te refuse l’accès (403) parce que tu essaies de pousser sur un dépôt qui appartient à Lucie005, et ton compte est Torpeddux.

👉 Donc tu es dans un de ces cas :

1) Tu n’es pas “collaborator” du dépôt

Si Lucie n’a pas ajouté ton compte en contributeur, tu ne peux pas push.

✅ Solution (côté Lucie) :

Repo GitHub → Settings → Collaborators and teams → Add people → ajouter Torpeddux

Tu acceptes l’invitation (mail / notif GitHub)

Puis tu refais git push

2) Tu es bien collaborateur, mais tu n’es pas authentifié correctement

Depuis GitHub, le mot de passe ne marche plus en HTTPS : il faut un token ou SSH.

Option A (simple) : HTTPS + Personal Access Token (PAT)

Sur GitHub : Settings → Developer settings → Personal access tokens → Generate (classic)

Coche au minimum : repo

Ensuite au push, quand il demande un mot de passe :

Username : ton username GitHub

Password : ton token (pas ton mdp)

Souvent Windows/Mac garde un mauvais identifiant en cache → il faut le vider.

✅ Effacer les identifiants Git enregistrés :

Windows : “Gestionnaire d’identifiants” → supprimer les identifiants GitHub

Mac : Trousseau d’accès → supprimer GitHub

Puis retente git push.

Option B (souvent le plus clean) : passer en SSH

Tu crées une clé SSH : ssh-keygen

Tu ajoutes la clé publique sur GitHub (Settings → SSH keys)

Tu passes le remote en SSH :

git remote set-url origin git@github.com:Lucie005/Projet_vehiculesSQL.git
git push

3) Si tu n’as pas les droits : fork + pull request

Si vous ne voulez pas donner les droits de push :

tu fork le repo

tu pushes sur ton fork

tu fais une pull request vers le repo de Lucie

Le check rapide à faire chez toi (1 commande)

Dans ton terminal, fais :

git remote -v


et dis-moi ce que ça affiche + si Lucie t’a bien ajouté en collaborator.

Je te dirai directement quelle solution est la bonne (et la plus rapide) selon ton cas.
 
Loom — 15:27
JAI FAIT CAAAAAA
Torpedux
Torpedux

 — 15:27
bah je vais chercher de mon coté tqt
j'ai une idée
Loom — 15:28
okioki
Torpedux
Torpedux

 — 15:28
c'est honteux mais je vais pas le faire en push
juste importer le fichier sur github
parce que en ligne je peux bien y acceder x)
ET BAH MEME PAS JE L'AI REGLER LE PB
VOILA TU VAS FAIRE QUOI GITHUB
bref
c'est push ^^
Image
ah bah nan ...
je vais tout casser j'en fait une affaire personnelle
Loom — 15:32
MDMDRRRRRRRRRRRRR
t’as pull ou clone le git ??
Torpedux
Torpedux

 — 15:34
clone oui
ensuite j'ai rajouter mes trucs et je push
mais je vais le mêler tqt
Loom — 15:35
défoncé le ouioui
Torpedux
Torpedux

 — 15:36
je suis venue
j'ai vu
ET J'AI VAINCU !
Image
Image
VOILA
COMME CA LE GITHUB
Loom — 15:37
NICEEEE
VOILAAAA
Torpedux
Torpedux

 — 15:37
Loom — 15:38
t’as modifié le read me pr ajouter tes fonctionnalités etc ??
Torpedux
Torpedux

 — 15:38
yes mam
Loom — 15:38
niceee
Torpedux
Torpedux

 — 15:38
tout est au top
Loom — 15:38
ben nickellllll
Torpedux
Torpedux

 — 15:38
plus que la pres
je vais la boire
(j'écoute du hard métal depuis 10h je crois que ça me rend folle 🤣 )
Loom — 15:39
yesss, fais un truc simple en vrai et si tu veux je ferai ma partie
Torpedux
Torpedux

 — 15:39
tqt trkl c'est mon p'tit dej la prez
c'est EZ
je peux même faire la prez de tout le monde s'il faut
Loom — 16:56
HAHHAHAH
défonce la cette prez
Torpedux
Torpedux

 — 16:59
Image
Loom — 16:59
tu l’as bien défoncée 😱
Torpedux
Torpedux

 — 17:00
https://www.canva.com/design/DAG9v_adh3c/hsqy33uRdZNRu3nQ4Ew6yA/edit?utm_content=DAG9v_adh3c&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton
Canva
Projet SQL B2 – cIAra Mobility
Projet SQL B2 – cIAra Mobility
je le fini
Loom — 17:01
okayy
Torpedux
Torpedux

 — 17:24
fini
dit moi vite fait ce que t'en pense
je te laisse mission 1 et 2 et je fait la 3 et le sommaire ?
pour les pb rencontrés on fera 50/50, j'ai mis des problèmes qu'on aurait pu rencontrés
Loom — 17:27
c bien, jvais juste modifier les pb rencontrés qd je rentrerai chez moi
Loom — 17:27
ah ben nickel
Torpedux
Torpedux

 — 17:27
okay, je te laisse mettre le coup de grace
Loom — 17:28
je m’occupe de ça plus tard
Torpedux
Torpedux

 — 17:28
aucun soucis
Loom — 19:02
je faisais un test pour verifier que tt marche bien, et au moment d'executerr ton code j'ai cette erreur, sque tu l'as déja eu ??
Image
jsuis partie du git comme si gt un mentor qui suivait le readme a la lettre psq c'est ce qu'ils risquent de faire
Loom — 19:15
j'ai du modifier le script pr le "blinder" je t'avoue que jsp exccatement c'est gemini quii l'a fait mais jtai mis ce' qu'il a modifié, et le script modfiié
Image
Image
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
... (55lignes restantes)
Réduire
message.txt
6 Ko
il faudrait que tu le push si possible
et je referai un test de 0 depuis le repo apres pr verifier que les mentors n'auront pas de pb
Torpedux
Torpedux

 — 19:17
merde j'avais pas vu je me reposais
je push ça de suite
Loom — 19:18
tktk ct pas grave ni long
oki
﻿
Loom
lu_om
elle/she/her
 
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