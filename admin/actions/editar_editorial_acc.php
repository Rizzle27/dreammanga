<?php
require_once "../../functions/autoload.php";

$editorial = $_POST;
$logo = $_FILES["logo"];
$id = $_GET['id'] ?? FALSE;

try {
     // Traer la extension del archivo
     if (!empty($logo["tmp_name"])) {
        $file_name = $logo["name"];
        // https://www.php.net/manual/es/function.pathinfo.php
        // Obtengo la extensión del archivo
        $extension = pathinfo($file_name, PATHINFO_EXTENSION);
        // Obtengo el nombre del archivo sin la extensión
        $file_name_without_extension = pathinfo($file_name, PATHINFO_FILENAME);
        // Llamo primero al nombre del archivo sin extensión, sumo el identificador único y agrego la extensión
        $file_name = $file_name_without_extension . "-" . uniqid(true) . ".$extension";
        echo $file_name;
        $fileUpload = move_uploaded_file($logo["tmp_name"], "../../images/editoriales/$file_name");
        if (!$fileUpload) {
            throw new Exception("No se pudo subir la imágen");
        }
    }
    (new Editorial())->edit($id, $editorial["nombre"], $editorial["origen"], $editorial["fundacion"], $file_name);

    // El header sirve para redireccionar
    header("Location: ../index.php?seccion=admin_editoriales");
} catch(Exception $e) {
    die ("No se pudo editar la editorial");
}