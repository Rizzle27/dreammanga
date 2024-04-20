<?php
require_once "../../functions/autoload.php";

try {
    unset($_SESSION["login"]);
    header("Location: ../../index.php");
} catch(Exception $e) {
    die ("Error al cerrar la sesión");
}