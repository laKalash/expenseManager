<?php
session_start();

require_once 'php/functions/autoload.php';
require_once('php/controler/common.php');
//test de positionement dans les modes gestionnaire ou commercial
//TODO trouver la bonne facons de faire pour le moment un booleen dans la session.

//TODO vérifier l'etat connecter ou non de l'utilisateur
if(isset($_SESSION['mode'])&&$_SESSION['mode']=='commercial'){

    require_once('php/controler/commercial.php');
}
elseif (isset($_SESSION['mode'])&& $_SESSION['mode']=='gestionnaire'){
    require_once ('php/controler/gestionnaire.php');
}


//routeur générique TODO Vérifier s'il vaux mieux pas le limité a des fonctions précise
if(isset($_GET['action'])){
    if(method_exists($ctrlCommon,(string)$_GET['action'])){
    $ctrlCommon->{$_GET['action']}();
}
elseif(isset($ctrlGest)&&method_exists($ctrlGest,(string)$_GET['action'])){
    $crtlGest->{$_GET['action']}();
}
elseif(isset($ctrlGest)&&method_exists($ctrlGest,(string)$_GET['action'])){
    $crtlComm->{$_GET['action']}();
}
}

else{
    $ctrlCommon->login();
}


