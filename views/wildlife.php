<main>
   <?php
    $basededonnees = "mysql:host=localhost;dbname=plongee;charset=utf8";
    $identifiant = "root";
    $motdepasse = "";
    $pdo = new PDO($basededonnees, $identifiant, $motdepasse);
    $requete = "SELECT nom, photos FROM wildlife ORDER BY num ASC";
    $tableau = $pdo->query($requete);
    foreach($tableau as $ligne)
    {		
        $nom[] = $ligne['nom'];
        $photos[] = $ligne['photos'];
    }
    
        echo "<div id='imgWildlife'>";
        for ($i=0; $i < count($nom) ; $i++) 
        { 
            
        ?>
    
        <div class="conteneur">
            <img class="imgSea" src='./img/<?php echo $photos[$i]; ?>'>
            <div class="overlay">
                <div class="text"><?php echo $nom[$i]; ?></div>
            </div>
        </div>

    <?php	
        }
        echo "</div>";

    ?>
</main>
