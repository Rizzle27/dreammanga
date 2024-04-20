<?php
$seccion = $_GET["seccion"] ?? "dashboard";
require_once "../functions/autoload.php";

try {
    $conexion = Conexion::getConexion();
} catch (Exception $e) {
    die("Error al conectar. Por favor intente nuevamente más tarde");
}

$whiteList = [
    "dashboard" => [
        "titulo" => "Panel de Control",
        "restringido" => true
    ],
    "login" => [
        "titulo" => "Iniciar Sesión",
        "restringido" => true
    ],
    "pass_incorrecta" => [
        "titulo" => "Contraseña Incorrecta",
        "restringido" => true
    ],
    "admin_mangas" => [
        "titulo" => "Administración | Mangas",
        "restringido" => true
    ],
    "admin_volumenes" => [
        "titulo" => "Administración | Volúmenes",
        "restringido" => true
    ],
    "admin_escritores" => [
        "titulo" => "Administración | Escritores",
        "restringido" => true
    ],
    "admin_editoriales" => [
        "titulo" => "Administración | Editoriales",
        "restringido" => true
    ],
    "admin_administradores" => [
        "titulo" => "Administración | Administradores",
        "restringido" => true
    ],
    "add_manga" => [
        "titulo" => "Administración | Mangas",
        "restringido" => true
    ],
    "add_volumen" => [
        "titulo" => "Administración | Volúmenes",
        "restringido" => true
    ],
    "add_escritor" => [
        "titulo" => "Administración | Escritores",
        "restringido" => true
    ],
    "add_editorial" => [
        "titulo" => "Administración | Editoriales",
        "restringido" => true
    ],
    "add_admin" => [
        "titulo" => "Administración | Administradores",
        "restringido" => true
    ],
    "editar_manga" => [
        "titulo" => "Administración | Mangas",
        "restringido" => true
    ],
    "editar_volumen" => [
        "titulo" => "Administración | Volúmenes",
        "restringido" => true
    ],
    "editar_escritor" => [
        "titulo" => "Administración | Escritores",
        "restringido" => true
    ],
    "editar_editorial" => [
        "titulo" => "Administración | Editoriales",
        "restringido" => true
    ],
    "delete_manga" => [
        "titulo" => "Eliminar | Mangas",
        "restringido" => true
    ],
    "delete_volumen" => [
        "titulo" => "Eliminar | Volumens",
        "restringido" => true
    ],
    "delete_admin" => [
        "titulo" => "Eliminar | Administradores",
        "restringido" => true
    ],
];

if ($whiteList[$seccion]["restringido"]) {
    if (!isset($_SESSION['login'])) {
        header("Location: ../index.php?seccion=login");
    } else if ($_SESSION['login']['rol'] == 'usuario') {
        header("Location: ../index.php");
    }
}

$vista = "error404";
$titulo = "Error";
if (array_key_exists($seccion, $whiteList)) {
    $vista = $seccion;
    $titulo = $whiteList[$seccion]["titulo"];
}
?>

<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="../styles/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <title>
        <?= ucwords(str_replace("_", " ", $titulo))  ?>
    </title>
</head>

<body class="text-light">
    <header>
        <?php require_once "includes/nav.php" ?>
    </header>

    <main>
        <?php
        file_exists("views/$vista.php") ?
            require "views/$vista.php" :
            require "views/error404.php"
        ?>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

    <footer>
        <?php require_once "includes/footer.php" ?>
    </footer>
</body>

</html>