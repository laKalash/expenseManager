<?php
/**
 * View for the login page
 *
 *
 *
 */
ob_start();?>
<h1>Expense Manager</h1>
<h3>Connectez-vous</h3>
<?= $formConnection->render(); ?>
<?php $content=ob_get_clean();
require('php/view/template/tmLogin.php');
