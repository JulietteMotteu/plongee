<?php
$basededonnees = "mysql:host=localhost;dbname=plongee;charset=utf8";
$identifiant = "root";
$motdepasse = "";
$pdo = new PDO($basededonnees, $identifiant, $motdepasse);

// On insère le commentaire dans la DB
if(isset($_POST['text_comment'], $_SESSION['id'])) {
    $statement = $pdo->prepare('INSERT INTO commentaires (id_person, text_comment) VALUES(:id_person, :text_comment)');
    $statement->bindValue(':id_person', $_SESSION['id'], PDO::PARAM_INT);
    $statement->bindValue(':text_comment', $_POST['text_comment'], PDO::PARAM_STR);
    $statement->execute();
}

// On récupère les articles
$requete = "SELECT nom, photos, texte FROM sites";
$tableau = $pdo->query($requete);
foreach($tableau as $ligne)
{		
    $nom[] = $ligne['nom'];
    $photos[] = $ligne['photos'];
    $texte[] = $ligne['texte'];
}


for ($i=0; $i < count($nom) ; $i++) 
{ 

?>

<main> 
    <h2><?php echo $nom[$i]; ?></h2>
        <p id="textSite"><?php echo $texte[$i]; ?></p>
        <img src='./img/<?php echo $photos[$i]; ?>' class="img_article">
            <form class="comment" method="post"> 
                <label for="text_comment" class="form">Laisser un commentaire</label>

                <textarea type="text" name="text_comment" rows="5"></textarea>

                <button type="submit">Poster le message</button>
            </form>			

    <?php	
    }

    ?>
	</main>
