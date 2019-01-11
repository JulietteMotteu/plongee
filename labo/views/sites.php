<main> 
        <?php
        $basededonnees = "mysql:host=localhost;dbname=plongee;charset=utf8";
        $identifiant = "root";
        $motdepasse = "root";
        $pdo = new PDO($basededonnees, $identifiant, $motdepasse);
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
        
        <h2><?php echo $nom[$i]; ?></h2>
            <p id="textSite"><?php echo $texte[$i]; ?></p>
            <img src='./img/<?php echo $photos[$i]; ?>' class="img_article">
            <div class="comment">
                <form> 
                    <p>
                        <label for="comment" class="form">Laisser un commentaire</label>
                        <textarea name="text_comment" cols=90 rows=4></textarea>	
                    </p>
                    <p>
                        <button>Poster le message</button>
                    </p>
                </form>			
            </div>

        <?php	
        }

        ?>
	</main>
