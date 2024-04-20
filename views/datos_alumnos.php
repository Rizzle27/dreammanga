<?php
require_once "functions/autoload.php";

$lista = new Alumno();
$alumnos = $lista->traer_alumno_completo();
?>

<section class="d-flex flex-column justify-content-center text-center my-5">
    <h1>Datos de los alumnos</h1>
    <div class="d-flex flex-row justify-content-center gap-5">
        <?php foreach ($alumnos as $alumno) { ?>
            <div>
                <img class="my-5" src="./images/<?= $alumno->getFoto() ?>" alt="Foto del alumno" style="height: 200px; width: 200px; object-fit: cover;">
                <h3><?= $alumno->getNombre() ?></h3>
                <p><?= $alumno->getNacimiento() ?></p>
                <a class="text-white fw-bold text-decoration-none" href="mailto:<?= $alumno->getMail() ?>"><?= $alumno->getMail() ?></a>
            </div>
        <?php } ?>
    </div>
    <div class="d-flex flex-column justify-content-center align-items-center mt-5">
        <a class="text-decoration-none volver mb-5" href="./">Volver al inicio</a>
    </div>
</section>