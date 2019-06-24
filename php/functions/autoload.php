<?php
/**
 *autoload.php provide for classes and interfaces to be automatically loaded if they are currently not defined
 *
 *
 */

    spl_autoload_register(function ($class_name) {
        $filename= "php/class/$class_name.php";
        if (file_exists($filename)){
            require_once $filename;
        }
        else{
            echo "<br>le fichier $filename n'existe pas";
        }
    });
?>
