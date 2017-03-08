<?php 
session_start();
// Include php files
include 'src/includes/config.php';
include 'src/includes/handle_form.php';

// Fetch all items in right order
$query = $pdo->query('SELECT * FROM `items` ORDER BY `items`.`mcId` ASC');
$items = $query->fetchAll();

// Make a json format
$json_items = json_encode($items);

//echo '<pre>';
//print_r($json_items);
//echo '</pre>';

?>


<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">
        <title>Gestionnaire d'items Minecraft</title>
        <link rel="icon" type="image/png" href="src/img/favicon.png" sizes="64x64">
        <link href="https://fonts.googleapis.com/css?family=Quantico:400,400i,700,700i" rel="stylesheet">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link rel="stylesheet" href="src/css/style.css">
    </head>

    <body>
       
       <?php 
        
        if(!isset($_SESSION['admin'])) // If it is an admin, don't show the header
        {
        
        ?>
        <header class="header"> <!-- HEADER -->
            <div class="container">
                <div class="loginBar text-right">
                    <div id="errorTestLogin"><p><?= array_key_exists('login', $error_login) ? $error_login['login'] : '' ?></p></div>
                    <form action="#" method="post">
                        <input type="hidden" name="type" value="login">
                        <label for="pseudoInput">Administrer la page :</label>
                        <input type="text" name="pseudo" id="pseudoInput" placeholder="Pseudonyme" required>
                        <input type="password" name="pass" placeholder="Mot de passe" required>
                        <input type="submit" value="Valider">
                    </form>
                </div>
            </div>
        </header>
        <div class="toggleButton"><img src="src/img/hamburger.svg" alt="menu" width="30px" /></div>
        <?php
            
        } // End of the condition
            
        ?>

        <div class="container main">

            <section id="titleSearch" class="row"> <!-- TITLE SEARCH -->
                <div class="col-md-12 text-center">
                    <img src="src/img/minecraft_logo.png" alt="Logo Minecraft" width="700px" />

                    <h1>Gestionnaire d'items Minecraft</h1>
                    <h2>Cataloguez vos items favoris, et proposez vos propres items à la communauté !</h2>

                    <form action="#">
                        <input type="search" placeholder="Rechercher un bloc (nom / id / type)" id="search">
                    </form>
                </div>
            </section>

            <section id="blocList" class="row"> <!-- BLOC LIST -->

                <?php foreach($items as $_item): ?>
                <div class="col-lg-3 col-md-4 col-sm-6 blocCase id_<?=$_item->id ?>">
                    <div class="border ">
                        <div class="itemBox text-center ">
                            <?php
                            
                                if(isset($_SESSION['admin'])) // If it is an admin, show the delete button
                                {
                                    
                            ?>
                            <form action="#" method="post">
                                <input type="hidden" name="type" value="delete">
                                <input type="hidden" name="id" value="<?=$_item->id ?>">
                                <button class="delete">
                                    <img src="src/img/delete.svg" onmouseover="this.src='src/img/delete_hover.svg';" onmouseout="this.src='src/img/delete.svg';" width="20px" alt="Supprimer" />
                                    <span>Supprimer</span>
                                </button>
                            </form>
                            <?php
                                
                                } // End of the condition
                            
                            ?>
                            <div class="titleGroup">
                                <span class="title"><?=$_item->title ?></span>
                                <span class="mcId">#<?=$_item->mcId ?></span>
                            </div>
                            <div><img src="src/img/uploaded/<?=$_item->textureImg ?>" alt="Item" class="textureImg" width="64px" /></div>
                            <p class="category"><?=$_item->category ?></p>
                            <p class="description"><?=$_item->description ?></p>
                            <p class="date">Ajout : <?=Date('G:i\,\ \l\e d/m/Y', strtotime($_item->date))?></p> <!-- Formate date -->
                        </div>
                    </div>
                </div>
                <?php endforeach ?>


            </section>
            <section id="addBlockForm" class="row"> <!-- BLOC FORM -->

                <div class="col-lg-8 col-lg-offset-2 formCase">
                    <div class="border">
                        <div class="itemBox text-center">
                            <h2 class="title">Ajouter un item</h2>
                            <form action="#" method="post" enctype="multipart/form-data" class="addForm">

                                <div class="nameItem <?= array_key_exists('title', $error_messages) ? 'error' : '' ?>">
                                    <label for="nameItemInput">— Nom de l'item —</label>
                                    <div class="hidden-xs"><p><?= array_key_exists('title', $error_messages) ? $error_messages['title'] : '' ?></p></div>
                                    <img src="src/img/error.svg" alt="error" width="20px" />
                                    <input type="text" name="title" id="nameItemInput" placeholder="Grass" value="<?= $_POST['title'] ?>" required>
                                </div>

                                <div class="numberId <?= array_key_exists('mcId', $error_messages) ? 'error' : '' ?>">
                                    <label for="numberIdInput">— ID —</label>
                                    <div class="hidden-xs"><p><?= array_key_exists('mcId', $error_messages) ? $error_messages['mcId'] : '' ?></p></div>
                                    <img src="src/img/error.svg" alt="error" width="20px" />
                                    <input type="number" name="mcId" id="numberIdInput" placeholder="2" value="<?= $_POST['mcId'] ?>" required>
                                </div>

                                <div class="picture <?= array_key_exists('textureImg', $error_messages) ? 'error' : '' ?>">
                                    <label for="uploadPicture">— Aperçu de l'item —</label>
                                    <div class="hidden-xs"><p><?= array_key_exists('textureImg', $error_messages) ? $error_messages['textureImg'] : '' ?></p></div>
                                    <img src="src/img/error.svg" alt="error" width="20px" />
                                    <input type="file" name="textureImg" id="uploadPicture" required>
                                    <span>Carré < 15Ko</span>
                                </div>

                                <div class="nameCategory <?= array_key_exists('category', $error_messages) ? 'error' : '' ?>">
                                    <label for="nameCategoryInput">— Catégorie —</label>
                                    <div class="hidden-xs"><p><?= array_key_exists('category', $error_messages) ? $error_messages['category'] : '' ?></p></div>
                                    <img src="src/img/error.svg" alt="error" width="20px" />
                                    <input list="itemList" autocomplete="off" type="text" name="category" id="nameCategoryInput" placeholder="Bloc" value="<?= $_POST['category'] ?>" required>
                                    <datalist id="itemList">
                                        <option value="Blocs"></option>
                                        <option value="Décoratifs"></option>
                                        <option value="Redstone"></option>
                                        <option value="Transport"></option>
                                        <option value="Divers"></option>
                                        <option value="Nourriture"></option>
                                        <option value="Outils"></option>
                                        <option value="Combat"></option>
                                        <option value="Potions"></option>
                                        <option value="Matières premières"></option>
                                    </datalist>
                                </div>

                                <div class="textDescription <?= array_key_exists('description', $error_messages) ? 'error' : '' ?>">
                                    <label for="textDescriptionInput">— Description —</label>
                                    <div class="hidden-xs"><p><?= array_key_exists('description', $error_messages) ? $error_messages['description'] : '' ?></p></div>
                                    <img src="src/img/error.svg" alt="error" width="20px" />
                                    <textarea name="description" id="textDescriptionInput" placeholder="Composé de terre et d'herbe"><?= $_POST['description'] ?></textarea>
                                </div>

                                <div>
                                    <input type="hidden" name="type" value="add" />
                                    <input type="submit" value="Valider">
                                </div>

                            </form>
                        </div>
                    </div>
                </div>

            </section>

            <footer class="text-center"> <!-- FOOTER -->
                <p>Made with <span id="hearth">&hearts;</span> by Simon.L</p>
            </footer>
        </div>
        <script>
            var json_items = <?= $json_items; ?>;

            console.log(json_items);
        </script>
        <script src="src/js/script.js"></script>
    </body>
</html>