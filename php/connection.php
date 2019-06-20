<?php
    require_once 'functions/autoload.php'
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Expense Manager</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="../css/connectionStyle.css" rel="stylesheet">
</head>
<body>
<div id="center">
    <h1 id="logo">Expense Manager</h1>
    <h3>Connectez-vous</h3>
    <?php
        $formConnection= new Formulaire('#','POST');
        $formConnection->input('text','email','Email','','','',true);
        $formConnection->br();
        $formConnection->input('password','mdp','Mot de passe','','','',true);
        $formConnection->br();
        $formConnection->submit('','Se connecter');
        echo $formConnection->render()
    ?>
</div>



</body>
</html>