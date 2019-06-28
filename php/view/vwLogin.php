<?php
    /**
     * View for the login page
     *
     *
     *
     */
    ob_start();
?>
    <h1>Expense Manager</h1>
    <h3>Connectez-vous</h3>
    <form action="?action=submitLogin" method="post" autocomplete="off">
        <input type="email" name="email" class="input" placeholder="Email" required><br>
        <input type="password" name="mdp" class="input" placeholder="Mot de passe" required><br>
        <a href="#" id="oublieMdp">Mot de passe oublié ?</a><br>
        <input type="submit" value="Se connecter" id="submit">
    </form>
<?php $content=ob_get_clean();
    require('php/view/template/tmLogin.php');
