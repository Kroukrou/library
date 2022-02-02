<?php 

session_start();

if(!isset($_SESSION['cart'])){

        $_SESSION['cart'] = array();

}

if(isset($_GET["id"]) && !empty($_GET['id'])){



require_once "includes/connexion.php";


$query = $db->prepare('SELECT * FROM books WHERE id = :id');
$query->bindValue(':id', $_GET["id"], PDO::PARAM_STR);
$query->execute();

$book = $query->fetch();

if($book == false){
  
    header('location: error404.php');

}

 




}else {

    $error = true;
    header('location: error404.php');
}

 require_once "layouts/header.php"; 
 $availability = $book["availability_book"]; 
 $commanded = $book["if_is_commanded"]; ?>
        
        <section id="partDetails">
        
                <section style="display:flex;justify-content:center;" id="partChild">
                        
                        <div>
         
                        <img style="
                        
                        width:50%;
                        
                        max-height:50%;
                        
                        min-height:10%;" src="public/img/Livres/jeunesse_7ansEtMoins/<?= $book["picture"]; ?>" alt="<?= $book["picture"]; ?>">
                     
                        </div>    

         <div style="transform:translateX(-1%); text-align:left;">
         
         <h1><?= $book["title_book"]; ?></h1>
         
         <div>
         
         <h2> L'auteur : <?= $book["author"];?></h2>
         
         <h2>L'éditeur : <?= $book["editor"];?></h2>
         
         </div>
         
         <p>Note lecteurs : 
         
                <?= $book["opinion_average"]; ?>
        
        </p>
         
         <ul style="transform:translate(-25%);">
         
                <li>Avis du Libraire : 
         
                        <?= $book["bookseller_opinion"]; ?>
         
                </li>
                <li>Prix :
                    
                        <?= $book["price"]; ?>&euro;
                
                </li>
         
                <li>
             
                       Disponibilité de l'article : <?php if($availability == true ){

                            echo "En stock";
         
                        } else { echo "En rupture";  };  ?>
         
                </li>

         
         
                <li>
         
                        <?php if($commanded == true){

                                echo " Des personnes ont commandé ce livre";

                            } else { echo "Personne n'a commandé ce livre"; 
         
                        }; ?>
         
                </li>
          
        </ul>
        <a style="
        
           display:flex;
           
           flex-direction:column;
           
           position:relative;
           
           left:-0.3rem;"
           
           href="ajouter.php?id=<?= $book["id"]?>">
           
        <img style="width:2rem;height:2rem;" src="public/img/Logo/3737bed15f3726c8cb4d51d18a2eb158.svg">
           
           <span style="
           
                 position:relative;
           
                 top:-0.75rem;
           
                 left:0.3rem;
           
                 transform:translate('0% -50%');">
           
                <span style="position:relative;top:-1rem;left:2rem;">
                
                    Ajouter à votre panier 
                
                </span> 
                        
                <span style="position:relative;left:-4rem;top:-1.2rem;">
                                
                <svg styxmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"    class="bi bi-circle-fill" viewBox="0 0 16 16">
                                        
                <circle cx="8" cy="8" r="8"/>
                                
                </svg> 
                                
                <span style="color:white;position:relative;left:-0.75rem;top:-0.30rem;">
                                       
                        <?= count($_SESSION["cart"]);?>
                                
                </span>  
                        
                </span>
         
                </span>
       
        </a>
    
        </section>
         

        
        </section>
<?php require_once "layouts/footer.php"; ?>

