<?php
$vista = $_GET["seccion"] ?? "inicio";

require_once "functions/autoload.php";

try {
    $conexion = Conexion::getConexion();
} catch (Exception $e) {
    die("Error al conectar. Por favor intente nuevamente más tarde");
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="styles/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <title>
        <?php if (!isset($_GET['seccion'])) {
            echo "Inicio";
        } else if (isset($_GET['seccion']) && !isset($_GET['genero'])) {
            echo ucwords(str_replace("_", " ", $vista));
        } else if (isset($_GET['seccion']) && isset($_GET['genero'])) {
            if ($_GET['genero'] == "catalogo") {
                echo "Catálogo Completo";
            } else if ($_GET['genero'] == "accion") {
                echo "Catálogo | Acción";
            } else if ($_GET['genero'] == "deportes") {
                echo "Catálogo | Deportes";
            } else if ($_GET['genero'] == "musical") {
                echo "Catálogo | Musical";
            } else if ($_GET['genero'] == "romance") {
                echo "Catálogo | Romance";
            }
        }

        ?>
    </title>
</head>
<body class="text-light">
    <header>
        <?php require_once "includes/nav.php" ?>
    </header>
    <main>
        <?php
        !isset($_GET['id']) ? file_exists("views/$vista.php") ?
            require "views/$vista.php" :
            require "views/error404.php" :
            require "views/manga.php";
        ?>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

    <footer>
        <?php require_once "includes/footer.php" ?>
    </footer>
</body>
</html>