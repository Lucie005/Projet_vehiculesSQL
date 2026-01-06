# 🚗 Projet BDD - Clara Mobility

Bienvenue sur le dépôt du projet de base de données pour **Clara Mobility**.
Ce projet a pour but de gérer une flotte de véhicules électriques, leurs stations, les utilisateurs et les locations.

## 📂 Contenu du dépôt

* **`Analyse_ProjetSQL.pdf`** : Le dossier de conception (Mission 1) contenant le Dictionnaire de Données et le MCD.
* **`create_tables.sql`** : Le script SQL principal (Mission 2). Il contient la structure complète de la base et les données.
* **`vehicules_clara_2025.csv`** : Le fichier source des véhicules (présent pour archivage, mais déjà intégré dans le script SQL).

## 🛠️ Prérequis

* **PostgreSQL** (Serveur de base de données)
* **pgAdmin 4** (Interface de gestion)

## 🚀 Installation (Guide "Pas à pas")

Grâce à la méthode d'intégration SQL, l'installation est automatisée. **Aucun import manuel de fichier CSV n'est nécessaire.**

### 1. Création de la Base de Données
1. Ouvrez **pgAdmin 4**.
2. Faites un clic-droit sur **Databases** > **Create** > **Database...**
3. Nommez la base : `clara_mobility_db`
4. Cliquez sur **Save**.

### 2. Exécution du Script
1. Faites un clic-droit sur la nouvelle base `clara_mobility_db`.
2. Sélectionnez **Query Tool**.
3. Ouvrez le fichier `create_tables.sql` présent dans ce dépôt (ou copiez-collez son contenu dans l'éditeur).
4. Cliquez sur le bouton **Execute** (▶️).

> **Note :** Ce script va automatiquement :
> * Supprimer les anciennes tables si elles existent (Nettoyage).
> * Créer les 5 tables (Station, Utilisateur, Vehicule, Location, Maintenance).
> * Insérer toutes les données (y compris les 200 véhicules).
> * Relier les véhicules aux stations correspondantes.

### 3. Vérification
Pour confirmer que l'installation s'est bien passée, lancez cette requête dans le Query Tool :

```sql
SELECT * FROM Vehicule;
