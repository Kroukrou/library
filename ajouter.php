<?php

session_start();

if(isset($_GET['id'], $_SESSION['cart'])){


    array_push($_SESSION['cart'], $_GET['id']);
    $_SESSION['message'] = "Là t'as commandé un livre";





} else { $_SESSION['message'] = "Tu as déjà commandé ce livre andouillette !";}

header('location: index.php');