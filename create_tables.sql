-- 1. NETTOYAGE (On repart à neuf)
DROP TABLE IF EXISTS Maintenance CASCADE;
DROP TABLE IF EXISTS Location CASCADE;
DROP TABLE IF EXISTS Vehicule CASCADE;
DROP TABLE IF EXISTS Utilisateur CASCADE;
DROP TABLE IF EXISTS Station CASCADE;

-- 2. CRÉATION DES TABLES

CREATE TABLE Station (
    id_station SERIAL PRIMARY KEY,
    nom_station VARCHAR(100) NOT NULL,
    ville VARCHAR(100) NOT NULL,
    capacite_bornes INT DEFAULT 10
);

CREATE TABLE Utilisateur (
    id_utilisateur SERIAL PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    prenom VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    mot_de_passe VARCHAR(100) NOT NULL,
    role VARCHAR(20) CHECK (role IN ('CLIENT', 'TECHNICIEN')) NOT NULL
);

CREATE TABLE Vehicule (
    id_vehicule SERIAL PRIMARY KEY,
    marque VARCHAR(50) NOT NULL,
    modele VARCHAR(50) NOT NULL,
    annee_fabrication INT,
    energie VARCHAR(30),
    autonomie_km INT,
    immatriculation VARCHAR(20) UNIQUE NOT NULL,
    etat VARCHAR(30) CHECK (etat IN ('Disponible', 'En maintenance', 'Hors service', 'Loué', 'En service')), 
    localisation VARCHAR(100),
    id_station INT, 
    FOREIGN KEY (id_station) REFERENCES Station(id_station)
);

CREATE TABLE Location (
    id_location SERIAL PRIMARY KEY,
    date_debut TIMESTAMP NOT NULL,
    date_fin_prevue TIMESTAMP NOT NULL,
    date_fin_reelle TIMESTAMP,
    cout_total DECIMAL(10, 2),
    statut VARCHAR(20) CHECK (statut IN ('En cours', 'Terminée', 'Annulée')),
    id_vehicule INT NOT NULL,
    id_utilisateur INT NOT NULL,
    FOREIGN KEY (id_vehicule) REFERENCES Vehicule(id_vehicule),
    FOREIGN KEY (id_utilisateur) REFERENCES Utilisateur(id_utilisateur)
);

CREATE TABLE Maintenance (
    id_intervention SERIAL PRIMARY KEY,
    date_intervention DATE NOT NULL,
    type_intervention VARCHAR(50),
    description TEXT,
    id_vehicule INT NOT NULL,
    FOREIGN KEY (id_vehicule) REFERENCES Vehicule(id_vehicule)
);

-- 3. INSERTION DES DONNÉES FIXES (Stations & Utilisateurs)

INSERT INTO Station (nom_station, ville, capacite_bornes) VALUES
('Gare Centrale', 'Strasbourg', 20),
('Place Royale', 'Nantes', 15),
('Vieux Port', 'Marseille', 30),
('Place de la Comédie', 'Montpellier', 25),
('Part-Dieu', 'Lyon', 40),
('Capitole', 'Toulouse', 20),
('Grand Place', 'Lille', 15),
('Promenade des Anglais', 'Nice', 25),
('Miroir d''eau', 'Bordeaux', 20),
('Tour Eiffel', 'Paris', 50);

INSERT INTO Utilisateur (nom, prenom, email, mot_de_passe, role) VALUES
('Dupont', 'Thomas', 'thomas.dupont@email.com', 'pass123', 'CLIENT'),
('Martin', 'Sophie', 'sophie.martin@email.com', 'pass456', 'CLIENT'),
('Durand', 'Luc', 'luc.durand@clara.com', 'admin789', 'TECHNICIEN');

-- 4. INSERTION DES VÉHICULES (Importation SQL directe)
-- Ceci remplace l'import CSV pour garantir la compatibilité sur tout poste

INSERT INTO Vehicule (id_vehicule, marque, modele, annee_fabrication, energie, autonomie_km, immatriculation, etat, localisation) VALUES
(1, 'Kia', 'EV6', 2022, 'Electrique', 320, 'XR-964-LJ', 'En maintenance', 'Strasbourg'),
(2, 'Kia', 'EV6', 2024, 'Electrique', 270, 'OY-932-RY', 'En maintenance', 'Nantes'),
(3, 'Hyundai', 'Ioniq 5', 2022, 'Electrique', 380, 'BJ-663-FL', 'Hors service', 'Marseille'),
(4, 'Kia', 'EV6', 2024, 'Electrique', 480, 'MW-909-XP', 'Hors service', 'Montpellier'),
(5, 'Mercedes', 'EQA', 2021, 'Electrique', 390, 'UN-317-LM', 'En maintenance', 'Lyon'),
(6, 'Hyundai', 'Ioniq 5', 2024, 'Electrique', 330, 'PU-953-NB', 'En maintenance', 'Montpellier'),
(7, 'BMW', 'iX1', 2024, 'Electrique', 270, 'YO-412-AH', 'Hors service', 'Toulouse'),
(8, 'Nissan', 'Leaf', 2024, 'Electrique', 270, 'SO-650-ZD', 'Disponible', 'Lyon'),
(9, 'Toyota', 'Proace Electric', 2023, 'Electrique', 530, 'YE-805-LI', 'En maintenance', 'Nice'),
(10, 'Renault', 'Megane E-Tech', 2024, 'Electrique', 550, 'YE-951-QU', 'Disponible', 'Montpellier'),
(11, 'Citroen', 'Ami', 2024, 'Electrique', 550, 'WT-751-VN', 'Disponible', 'Lyon'),
(12, 'Mercedes', 'EQB', 2024, 'Electrique', 420, 'OD-742-GO', 'En maintenance', 'Toulouse'),
(13, 'Volkswagen', 'ID.5', 2022, 'Electrique', 550, 'KO-197-KW', 'Hors service', 'Nantes'),
(14, 'Mercedes', 'EQA', 2022, 'Electrique', 500, 'KM-850-ZY', 'En maintenance', 'Lille'),
(15, 'Kia', 'Soul EV', 2024, 'Electrique', 360, 'TR-567-ZM', 'Hors service', 'Nantes'),
(16, 'Renault', 'Megane E-Tech', 2021, 'Electrique', 590, 'JR-526-BM', 'Disponible', 'Marseille'),
(17, 'Citroen', 'Ami', 2023, 'Electrique', 340, 'XF-922-TM', 'Hors service', 'Strasbourg'),
(18, 'Tesla', 'Model 3', 2022, 'Electrique', 270, 'HU-769-AI', 'En maintenance', 'Nice'),
(19, 'Kia', 'Soul EV', 2022, 'Electrique', 510, 'IW-415-IT', 'En service', 'Toulouse'),
(20, 'Mercedes', 'EQA', 2022, 'Electrique', 500, 'IL-910-WY', 'Disponible', 'Paris'),
(21, 'Mercedes', 'EQB', 2023, 'Electrique', 330, 'FF-812-UQ', 'En maintenance', 'Nantes'),
(22, 'Toyota', 'Proace Electric', 2024, 'Electrique', 320, 'UD-673-OE', 'En maintenance', 'Lyon'),
(23, 'Mercedes', 'EQA', 2021, 'Electrique', 420, 'AQ-685-JB', 'En service', 'Montpellier'),
(24, 'Toyota', 'Proace Electric', 2022, 'Electrique', 290, 'PS-158-WM', 'En maintenance', 'Marseille'),
(25, 'Nissan', 'Ariya', 2021, 'Electrique', 470, 'WN-898-EP', 'En maintenance', 'Bordeaux'),
(26, 'Volkswagen', 'ID.4', 2023, 'Electrique', 580, 'XU-837-FD', 'Disponible', 'Lille'),
(27, 'Peugeot', 'e-308', 2023, 'Electrique', 320, 'ON-875-UO', 'Hors service', 'Marseille'),
(28, 'Toyota', 'Proace Electric', 2023, 'Electrique', 430, 'GO-836-IU', 'En maintenance', 'Nantes'),
(29, 'Citroen', 'Ami', 2022, 'Electrique', 480, 'VE-965-UY', 'Disponible', 'Lyon'),
(30, 'Hyundai', 'Ioniq 5', 2024, 'Electrique', 410, 'UE-921-ED', 'En maintenance', 'Nantes'),
(31, 'Mercedes', 'EQA', 2021, 'Electrique', 450, 'YA-188-TY', 'En maintenance', 'Nice'),
(32, 'Citroen', 'Ami', 2023, 'Electrique', 340, 'HV-248-IT', 'En service', 'Toulouse'),
(33, 'Hyundai', 'Ioniq 5', 2022, 'Electrique', 500, 'TZ-433-HF', 'En maintenance', 'Strasbourg'),
(34, 'Fiat', '500e', 2021, 'Electrique', 320, 'NQ-819-BP', 'Hors service', 'Lille'),
(35, 'Fiat', 'Panda EV', 2022, 'Electrique', 540, 'DW-525-FC', 'En service', 'Paris'),
(36, 'Renault', 'Zoe', 2023, 'Electrique', 300, 'QC-782-KP', 'En maintenance', 'Lyon'),
(37, 'BMW', 'iX1', 2022, 'Electrique', 400, 'UG-214-SA', 'En service', 'Bordeaux'),
(38, 'Mercedes', 'EQB', 2021, 'Electrique', 290, 'IT-929-YS', 'Hors service', 'Lyon'),
(39, 'Nissan', 'Leaf', 2022, 'Electrique', 490, 'TH-749-AC', 'En service', 'Montpellier'),
(40, 'Tesla', 'Model 3', 2022, 'Electrique', 390, 'NC-394-CX', 'Disponible', 'Paris'),
(41, 'Volkswagen', 'ID.4', 2023, 'Electrique', 340, 'HX-598-OS', 'En maintenance', 'Strasbourg'),
(42, 'Citroen', 'Berlingo EV', 2023, 'Electrique', 450, 'AN-441-ZU', 'Disponible', 'Bordeaux'),
(43, 'Mercedes', 'EQE', 2022, 'Electrique', 520, 'QN-135-FB', 'En maintenance', 'Nice'),
(44, 'Fiat', '500e', 2024, 'Electrique', 590, 'ZO-456-RC', 'Hors service', 'Marseille'),
(45, 'Tesla', 'Model Y', 2022, 'Electrique', 450, 'HY-708-CY', 'Hors service', 'Lille'),
(46, 'Hyundai', 'Kona Electric', 2023, 'Electrique', 560, 'AR-624-YF', 'Hors service', 'Montpellier'),
(47, 'Citroen', 'e-C4', 2022, 'Electrique', 420, 'TW-514-GR', 'Disponible', 'Nice'),
(48, 'Toyota', 'bZ4X', 2021, 'Electrique', 250, 'SI-389-FD', 'Disponible', 'Lyon'),
(49, 'Toyota', 'bZ4X', 2023, 'Electrique', 320, 'QI-180-WY', 'En service', 'Nantes'),
(50, 'Renault', 'Zoe', 2024, 'Electrique', 550, 'SW-740-DO', 'Hors service', 'Nice');

-- 5. LIAISON AUTOMATIQUE DES STATIONS
UPDATE Vehicule
SET id_station = Station.id_station
FROM Station
WHERE Vehicule.localisation = Station.ville;

-- 6. VÉRIFICATION
SELECT * FROM Vehicule;