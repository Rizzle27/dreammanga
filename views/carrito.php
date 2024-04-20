<?php

$items = (new Carrito())->get_carrito();

?>

<section class="d-flex flex-column align-items-center justify-content-center">
    <div class="d-flex flex-column justify-content-center align-items-center text-center col-10 col-md-6 m-5">
        <h1>Carrito de <span style="color: #00A78C;">Compras</span></h1>
    </div>
    <div class="d-flex flex-column col-10">
        <?php if (count($items)) { ?>
            <form action="admin/acions/update_items_acc.php" method="POST">
                <table class="table text-light">
                    <thead>
                        <tr>
                            <th scope="col" width="20%">Portada</th>
                            <th scope="col" width="25%">Manga</th>
                            <th class="text-center" scope="col" width="15%">Número</th>
                            <th class="text-center" scope="col" width="15%">Cantidad</th>
                            <th class="text-center" scope="col" width="20%">Subtotal</th>
                            <th class="text-center" scope="col" width="5%"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($items as $key => $item) { ?>
                            <tr>
                                <td class="align-middle"><img src="<?= $item['portada'] ?>" alt="Portada del volumen <?= $item['numero'] ?> del manga <?= $item['titulo'] ?>"></td>
                                <td class="align-middle">
                                    <h4><a class="mangaLink text-light" href="index.php?id=<?= $item['manga_id'] ?>&volumen=<?= $item['numero'] ?>"><?= $item['titulo'] ?></a></h4>
                                </td>
                                <td class="align-middle text-center">
                                    <b class="fs-5">N°<?= $item['numero'] ?></b>
                                </td>
                                <td class="align-middle text-center">
                                    <b class="fs-5"><?= $item['cantidad'] ?></b>
                                </td>
                                <td class="align-middle text-center">
                                    <?php
                                    $precioItem = $item['precio'];
                                    $cantidadItem = $item['cantidad'];
                                    $subtotal = $precioItem * $cantidadItem;
                                    ?>
                                    <b class="fs-5">$<?= number_format($subtotal, 2, ",", ".") ?></b>
                                </td>
                                <td class="align-middle text-center">
                                    <a href="admin/actions/remove_item_acc.php?id=<?= $key ?>"><img src="images/iconos/trash.png" alt=""></a>
                                </td>
                            </tr>
                        <?php } ?>
                        <tr>
                            <td colspan="5" class="text-end">
                                <h2 class="h5 py-3">Total:</h2>
                            </td>
                            <td class="text-end">
                                <p class="h5 py-3">$<?= number_format((new Carrito())->get_total(), 2, ",", ".") ?></p>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div class="d-flex justify-content-end gap-2">
                    <a href="index.php?seccion=catalogo&genero=catalogo" role="button" class="btnSeguirComprando text-decoration-none text-light">Seguir Explorando</a>
                    <a href="admin/actions/vaciar_carrito_acc.php" role="button" class="btnVaciar text-decoration-none text-light">Vaciar Carrito</a>
                    <a href="index.php?seccion=pago" role="button" class="btnFinalizarCompra text-decoration-none text-light">Realizar Pago</a>
                </div>
            </form>
        <?php } else { ?>
            <div class="text-center mt-3">
                <h2 class="mb-5">¡Tú <span style="color: #00A78C;">carrito</span> está vacío!</h2>
                <h3 class="mb-5">Probá agregando un producto al carrito</h3>
                <div class="mt-5">
                    <img src="images/iconos/entendido.png" alt="Ícono entendido">
                </div>
                <a class="volver text-decoration-none" href="index.php?seccion=catalogo&genero=catalogo">Explorar el catálogo →</a>
            </div>
        <?php } ?>
    </div>
</section>