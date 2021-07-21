<?php

  session_start();

  use PHPMailer\PHPMailer\PHPMailer;

// The path to the fonction above is in the folder source linked to the namespace PHPMailer\PHPMailer and the class PHPMailer cause my teacher's Php said never 2 whitout 3
  if(isset($_POST['email'], $_POST["rgpd"]) && !empty($_POST['email']) && !empty($_POST['rgpd'])){


    strip_tags($_POST['email']);
     
    
  if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){


        $_SESSION['error'] = 'Votre adresse email est invalide';
        header('location: index.php');
      
  } else { 
        
    require_once "includes/connexion.php";

    $query = $db->prepare('SELECT email FROM users WHERE email = :email');
    $query->bindValue(':email', $_POST["email"], PDO::PARAM_STR);
    
    
    if($query->execute()){
        
      if($query->rowCount() === 0){

      $emailVerified = $db->prepare('INSERT INTO `users`(email) VALUES (:email);'); 
      $emailVerified->bindValue(':email', $_POST["email"], PDO::PARAM_STR);
      
    if($emailVerified->execute()){


        require_once "vendor/autoload.php";
        

        $mailer = new PHPMailer(true);

    try {

       $mailer->isSMTP();
       $mailer->Host = 'localhost';
       $mailer->Port = 1025;
       $mailer->CharSet = 'UTF-8';

       $mailer->setFrom('louis@librairie.com', 'Librairie');

       $mailer->addAddress($_POST['email']);

       $mailer->isHTML();

       $mailer->Subject = "Vous vous êtes inscrit !";

               
                 // Message en HTML
       $mailer->Body = "<p>Merci de l'intérêt que vous portez à nos livres !</p>";

                 // si absence du HTML
       $mailer->AltBody = "Merci de l'intérêt que vous portez à nos livres !";
 
       $mailer->send();

      $_SESSION["success"] = "Votre inscription s'est effectuée";

       header('location: index.php');

    }catch(Exception $error){

       $_SESSION['error'] = "Le mail de bienvenue n'est pas partie : {$error->getMessage()}";       
        
    }

    } else { 

        $_SESSION['error'] = "Un problème est survenu lors du chargement";


    }
       



    } else { 
        
        $_SESSION["error"] = "Votre adresse e-mail a déjà été envoyée";
        header("location: index.php");      
    }
      
    } else {
        
        
        
       $_SESSION["error"] = "Une erreur est survenue lors du chargement";
       header('location: index.php');
      
      
    }
   
}
 
} else {
    $_SESSION["error"] = "Tous les champs sont obligatoires";
    header('Location: index.php');
  }
   