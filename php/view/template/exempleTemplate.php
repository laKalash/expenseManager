<?php
/**
 * Template page for the views
 * @var $title string title of the html page
 * @var $header string contain the content of the header box
 * @var $content string contain the content of the page in a div class wrap
 * @var $footer string contain the content of the footer box
 */
if(!isset($title))$title='Template html page';
if(!isset($footer))$footer='<p>Here is the footer</p>';
if(!isset($header))$header='<p>Here is the header</p>';
if(!isset($content))$content='<p>Here is the content</p>';
//TODO Creer chargeur de script et de stylesheet
?>
<!doctype html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?= $title ?></title>

    <link href="css/login.css" rel="stylesheet"/>
</head>
<body>
    <header><?= $header ?></header>
    <div class="wrap"><?= $content ?></div>
    <footer><?= $footer ?></footer>
</body>
</html>
