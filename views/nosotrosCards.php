<?php
$ventajas = [
    [
        'titulo' => 'Objetivos',
        'icono' => 'goal.png',
        'informacion' => 'Los objetivos de DreamManga son proporcionar a los fanáticos del manga una experiencia excepcional de compra en línea, ofreciendo una amplia variedad de títulos y géneros para satisfacer sus gustos e intereses.'
    ],
    [
        'titulo' => 'Logros',
        'icono' => 'award.png',
        'informacion' => 'A a lo largo de nuestra actividad acumulamos más de 500 titulos tanto clásicos como estrenos recientes, además de ser el sitio líder en cuanto a cantidad de editoriales se refiere.'
    ],
    [
        'titulo' => 'Líderes',
        'icono' => 'podio.png',
        'informacion' => 'DreamManga ha logrado posicionarse como un referente en la industria, gracias a su amplia colección que abarca tanto clásicos como las últimas novedades. Disfrutá de las compras fluidas y convenientes a través de nuestro sitio.'
    ],
    [
        'titulo' => 'Equipo',
        'icono' => 'equipo.png',
        'informacion' => 'Nuestro equipo está comprometido con tu satisfacción y siempre estará listo para ayudarte en cualquier consulta que puedas tener. Nos esforzamos por brindarte un servicio excepcional en cada paso del camino.'
    ]
];
?>

<div class="row justify-content-around mx-5">
    <?php
    foreach ($ventajas as $info) { ?>
        <div id="cardInfo" class="card col-12 col-sm-6 col-lg-3 my-4 text-light">
            <img class="card-img-top w-25 m-auto" src="./images/iconos/<?= $info["icono"] ?>" alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title mt-1 mb-3">
                    <?= $info["titulo"] ?>
                </h5>
                <p class="card-text">
                    <?= $info["informacion"] ?>
                </p>
            </div>
        </div>
    <?php } ?>
</div>