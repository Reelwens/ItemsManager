# Minecraft items manager
![N|Solid](http://image.noelshack.com/fichiers/2017/09/1488649702-minecraft-items.gif)

Minecraft items manager est un site internet permettant à ses utilisateurs de gérer les différents items du jeu et d'y ajouter les leurs. Ce projet répond à un devoir scolaire à [HETIC](https://hetic.net/) consistant a réaliser un gestionnaire d'inventaire PHP sur le thème de notre choix.

Ce projet utilise PHP, les bases de données SQL, Javascript, HTML, CSS, & Bootstrap.

### Installation

1) Importer la base de donnée SQL `install\gestionnaire.sql` via phpmyadmin
2) Modifier le nom d'utilisateur et le mot de passe dans le fichier `src\includes\handle_form.php`
3) Executer le projet sur un serveur

### Fonctionnalités

##### Fonctionnalités de base :
* Connexion sécurisée à la base de donnée
* Lister les items contenus dans la base de donnée
* Formulaire permettant d'ajouter des items
* Données associées à chaque item : Nom, ID Minecraft, Image, Catégorie, Description
* Mise en ligne sécurisée via PDO.

##### Fonctionnalités avancées :
* Site entierement responsive, peu importe le nombre d'items
* Formatage en français de la date renvoyée par la base de donnée
* Suppression des items de la base de donnée depuis le site internet
* Mise en sécurisée d'images sur le serveur (apparence de l'item Minecraft) :
    * Vérification de la taille (15 Ko)
    * Vérification de l'extension
    * Vérification du ratio de l'image (les items sont carrés)
    * Mise en ligne depuis le dossier temporaire du serveur vers le dossier `uploaded\`
* Vérification de toutes les erreurs de l'utilisateur entrées dans le formulaire :
    * ID Minecraft déjà renseigné dans la base de donnée
    * Donnée manquante dans un input
    * Nombre de caractères maximum
    * Nombre de caractères minimum
    * La donnée n'est pas un nombre
    * Le nombre est négatif
* Affichage précis des erreurs à l'utilisateur
* Ré-affichage des données du formulaire en cas d'erreur
* Affichage des items dans l'ordre numérique des ID Minecraft
* Style CSS reprenant les codes graphiques du jeu Minecraft

### Remarques
* Des images sont mises à disposition dans `install\item_for_try\` afin de tester rapidement les contrôles réalisés