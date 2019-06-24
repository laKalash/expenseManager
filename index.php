<?php
require_once ('controler/combat.php');

if(isset($_GET['action'])&&function_exists($_GET['action']))$_GET['action']();
else{
    newPlayer();
}


