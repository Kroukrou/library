<?php 

define('HOST', 'localhost');

define('USER', 'root');

define('PASSWORD','');

define('DBNAME','librairie');

try{


    $db = new PDO('mysql:host='. HOST.';dbname='.DBNAME, USER, PASSWORD,[
        PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING,

        PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',

        PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
    ]
    );


} catch(Exception $error){

    echo 'Erreur lors de la connexion à la BDD'. $error->getMessage();

}