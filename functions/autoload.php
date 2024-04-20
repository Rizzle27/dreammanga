<?php

session_start();

function autoloadClasses($nombreDeClase)
{
    $archivoClase = __DIR__ . "/../classes/$nombreDeClase.php";

    if (file_exists($archivoClase)) {
        require_once $archivoClase;
    }
}

spl_autoload_register("autoloadClasses");