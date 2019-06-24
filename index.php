<?php
session_start();

require_once 'functions/autoload.php'
//test de positionement dans les modes gestionnaire ou commercial
//TODO trouver la bonne facons de faire pour le moment un booleen dans la session.
if($_SESSION['mode']=='commercial'){
    require_once('php/controler/commercial.php');
}
elseif($_SESSION['mode']=='gestionnaire'){
    require_once ('php/controler/gestionnaire.php');
}
else{
    require_once('php/controler/common.php');
}

//routeur générique TODO Vérifier s'il vaux mieux pas le limité a des fonctions précise
if(isset($_GET['action'])&&function_exists($_GET['action']))$_GET['action']();
else{
    login();
}


