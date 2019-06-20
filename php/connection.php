<?php
    require_once 'functions/autoload.php'
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connection-Expense Manager</title>
    <link href="../css/connection.css" rel="stylesheet">
</head>
<body>
<div>
    <h1>Expense Manager</h1>
    <h3>Connectez-vous</h3>
    <?php
        $formConnection= new Formulaire('traitement.php','POST');
        $formConnection->input('email','email','Email','','','input',true);
        $formConnection->br();
        $formConnection->input('password','mdp','Mot de passe','','','input',true);
        $formConnection->br();
        $formConnection->texte('<a href="#" id="oublieMdp">Mot de passe oublié ?</a>');
        $formConnection->submit('','Se connecter','submit');
        echo $formConnection->render()
    ?>
</div>



</body>
</html>