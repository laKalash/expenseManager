<?php
/**
 * Controler pour la connection et les fonctionnalité commune
 *
 *
 */

/**
 * description courte
 *
 * description longue 
 *
 * @param 
 * 
 * @return void
 */
function login(){
    $header='';
    $footer='';
    $title='Connection-Expense Manager';
    $formConnection= new Formulaire('traitement.php','POST');
    $formConnection->input('email','email','Email','','','input',true);
    $formConnection->br();
    $formConnection->input('password','mdp','Mot de passe','','','input',true);
    $formConnection->br();
    $formConnection->texte('<a href="#" id="oublieMdp">Mot de passe oublié ?</a>');
    $formConnection->submit('','Se connecter','submit');
    require('php/view/vwLogin.php');
}
