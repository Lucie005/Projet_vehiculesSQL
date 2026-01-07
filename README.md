# 🚗 Projet BDD - Clara Mobility

Bienvenue sur le dépôt du projet de base de données pour **Clara Mobility**.
Ce projet a pour but de gérer une flotte de véhicules électriques, leurs stations, les utilisateurs, les locations et la maintenance.

## 📌 Missions couvertes
- **Mission 1 (Analyse / Merise)** : `Analyse_ProjetSQL.pdf`
- **Mission 2 (Création PostgreSQL)** : `create_tables.sql`
- **Mission 3 (Requêtes avancées : SELECT/JOIN/AGG, vues, fonctions, triggers)** : `queries.sql`
- **Mission 4 (GitHub / versioning)** : historique de commits + dépôt partagé

## 📂 Contenu du dépôt
- **`Analyse_ProjetSQL.pdf`** : conception (dictionnaire de données + MCD + MLD).
- **`create_tables.sql`** : création des tables + contraintes + données de test.
- **`queries.sql`** : requêtes avancées (min. 10), vues, fonction de calcul, triggers de mise à jour d'état.

## 🛠️ Prérequis
- **PostgreSQL**
- **pgAdmin 4** (ou psql)

## 🚀 Installation (Guide "pas à pas")

### 1) Créer la base
Dans pgAdmin :
1. Clic droit sur **Databases** → **Create** → **Database...**
2. Nom : `clara_mobility_db`
3. **Save**

### 2) Exécuter le script de création
1. Clic droit sur `clara_mobility_db` → **Query Tool**
2. Ouvrir `create_tables.sql`
3. Exécuter (▶️)

> Le script :
> - supprime les tables si elles existent
> - crée les 5 tables (Station, Utilisateur, Vehicule, Location, Maintenance)
> - insère des données
> - lie automatiquement les véhicules aux stations via la ville/localisation

### 3) Exécuter les requêtes avancées (Mission 3)
Dans **Query Tool** :
1. Ouvrir `queries.sql`
2. Exécuter (▶️)

> `queries.sql` contient :
> - des requêtes (SELECT/JOIN/AGG, sous-requêtes)
> - 2 vues (`vue_locations_detaillees`, `vue_vehicules_maintenance`)
> - une fonction (`calcul_cout_location`)
> - des triggers qui mettent à jour automatiquement l'état du véhicule lors d'une location

## ✅ Vérifications rapides
```sql
SELECT COUNT(*) FROM Vehicule;
SELECT * FROM Station;
SELECT * FROM vue_locations_detaillees;
```

## 👥 Auteurs
- Lucie BARREZ
- Armand Levine
