# Minecraft items manager
[![N|Solid](http://image.noelshack.com/fichiers/2017/09/1488649702-minecraft-items.gif)](https://www.simonlucas.fr/web/item_manager/)

Minecraft items manager est un site internet permettant à ses utilisateurs de gérer les différents items du jeu et d'y ajouter les leurs. Ce projet répond à un devoir scolaire à [HETIC](https://hetic.net/) consistant a réaliser un gestionnaire d'inventaire PHP sur le thème de notre choix.

Ce projet utilise PHP, les bases de données SQL, Javascript, HTML, CSS, & Bootstrap.

## Installation

- Importer la base de donnée SQL `install\gestionnaire.sql` via phpmyadmin
- Modifier le nom d'utilisateur et le mot de passe de la base de donnée dans le fichier `src\includes\handle_form.php`
- Executer la commande `npm install` puis `gulp` dans le terminal à la racine
- Importer et lancer `dist\` à sa racine sur un serveur

## Remarques
* Des images sont mises à disposition dans `install\item_for_try\` afin de tester rapidement les contrôles réalisés
* Le site internet est directement consultable en ligne à [cette adresse](https://www.simonlucas.fr/web/item_manager/).

## Fonctionnalités

##### Fonctionnalités de base :
* PHP : Connexion sécurisée à la base de donnée
* PHP : Lister les items contenus dans la base de donnée
* PHP : Formulaire permettant d'ajouter des items
* PHP : Données associées à chaque item : Nom, ID Minecraft, Image, Catégorie, Description
* PHP : Mise en ligne sécurisée via PDO.

##### Fonctionnalités avancées :
* PHP : Connexion & déconnexion session administrateur avec droits supplémentaires
* PHP : Suppression des items de la base de donnée depuis le site internet (en tant qu'administrateur)
* PHP : Mise en sécurisée d'images sur le serveur (apparence de l'item Minecraft) :
    * Vérification de la taille (15 Ko)
    * Vérification de l'extension
    * Vérification du ratio de l'image (les items sont carrés)
    * Mise en ligne depuis le dossier temporaire du serveur vers le dossier `uploaded\`
* PHP : Vérification de toutes les erreurs de l'utilisateur entrées dans le formulaire :
    * ID Minecraft déjà renseigné dans la base de donnée
    * Donnée manquante dans un input
    * Nombre de caractères maximum
    * Nombre de caractères minimum
    * La donnée n'est pas un nombre
    * Le nombre est négatif
* PHP : Affichage précis des erreurs à l'utilisateur
* PHP : Ré-affichage des données du formulaire en cas d'erreur
* PHP : Affichage des items dans l'ordre numérique des ID Minecraft
* PHP : Formatage en français de la date renvoyée par la base de donnée
* PHP : Conversion de la base de donnée en Json pour une utilisation JS
* JS : Recherche dynamique des items selon leur nom, id & catégorie
* CSS : Site entierement responsive, peu importe le nombre d'items
* CSS : Style CSS reprenant les codes graphiques du jeu Minecraft
* Divers : Utilisation de gulp afin d'optimiser les performances
* Divers : Mise en ligne du site internet et configuration d'apache et de ses droits d'écriture chown pour le stockage des images