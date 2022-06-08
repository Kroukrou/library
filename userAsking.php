<?php

  session_start();

// The path of the fonction above is in the folder source linked to the namespace PHPMailer\PHPMailer and the class PHPMailer 
  if(isset($_POST['email'], $_POST["rgpd"]) && !empty($_POST['email']) && !empty($_POST['rgpd'])){


    strip_tags($_POST['email']);
     
    
  if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)){


        $_SESSION['error'] = 'Votre adresse email est invalide';
        header('Location: index.php');
      
  } else { 
        
    require_once "includes/connexion.php";

    $query = $db->prepare('SELECT email FROM users WHERE email = :email');
    $query->bindValue(':email', $_POST["email"], PDO::PARAM_STR);
    
    
    if($query->execute()){
        
      if($query->rowCount() === 0){

      $emailVerified = $db->prepare('INSERT INTO `users`(email) VALUES (:email);'); 
      $emailVerified->bindValue(':email', $_POST["email"], PDO::PARAM_STR);
      
    if($emailVerified->execute()){


    try {

      

      $_SESSION["success"] = "Votre inscription s'est effectuée";

       header('Location: index.php');

    }catch(Exception $error){

       $_SESSION['error'] = "Le mail de bienvenue n'est pas partie : {$error->getMessage()}";       
        
    }

    } else { 

        $_SESSION['error'] = "Un problème est survenu lors du chargement";


    }
       



    } else { 
        
        $_SESSION["error"] = "Votre adresse e-mail a déjà été envoyée";
        header("Location: contact.php");      
    }
      
    } else {
        
        
        
       $_SESSION["error"] = "Une erreur est survenue lors du chargement";
       header('Location: contact.php');
      
      
    }
   
}
 
} else {
    $_SESSION["error"] = "Tous les champs sont obligatoires";
    header('Location: contact.php');
  }
   
