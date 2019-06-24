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
    
    <form action="traitement.php" method="post">
        <input type="email" class="input" placeholder="Email" autocomplete="new-password" required><br>
        <input type="password" class="input" placeholder="Mot de passe" autocomplete="new-password" required><br>
        <input type="submit" value="Se connecter" id="submit">
    </form>
</div>

<script src="../javascript/connection.js"></script>

</body>
</html>