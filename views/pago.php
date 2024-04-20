<?php

$items = (new Carrito())->get_carrito();
$usuario_id = $_SESSION["login"]["id"];

?>

<section class="d-flex flex-column align-items-center justify-content-center">
    <?php if (!empty($items)) { ?>
        <h1 class="my-5">Resumen de compra</h1>
        <div class="d-flex flex-row gap-5 justify-content-around text-center col-10 m-5">

            <div class="d-flex flex-column col-6" style="max-height: 650px !important; overflow-y: scroll !important;">
                <?php if (count($items)) { ?>
                    <table class="table text-light">
                        <thead>
                            <tr>
                                <th scope="col" width="20%">Portada</th>
                                <th scope="col" width="45%">Manga</th>
                                <th class="text-center" scope="col" width="15%">Cantidad</th>
                                <th class="text-center" scope="col" width="20%">Subtotal</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php foreach ($items as $key => $item) { ?>
                                <tr>
                                    <td class="align-middle"><img height="96" src="<?= $item['portada'] ?>" alt="Portada del volumen <?= $item['numero'] ?> del manga <?= $item['titulo'] ?>"></td>
                                    <td class="align-middle">
                                        <h4><a class="mangaLink text-light fs-6" href="index.php?id=<?= $item['manga_id'] ?>&volumen=<?= $item['numero'] ?>"><?= $item['titulo'] ?></a></h4>

                                    </td>
                                    <td class="align-middle text-center">
                                        <b class="fs-6"><?= $item['cantidad'] ?></b>
                                    </td>
                                    <td class="align-middle text-center">
                                        <?php
                                        $precioItem = $item['precio'];
                                        $cantidadItem = $item['cantidad'];
                                        $subtotal = $precioItem * $cantidadItem;
                                        ?>
                                        <b class="fs-6">$<?= number_format($subtotal, 2, ",", ".") ?></b>
                                    </td>
                                </tr>
                            <?php } ?>
                            <tr>
                                <td colspan="3" class="text-end">
                                    <h2 class="h5 py-3">Total:</h2>
                                </td>
                                <td class="text-end">
                                    <p class="h5 py-3" style="color: #028171;">$<?= number_format((new Carrito())->get_total(), 2, ",", ".") ?></p>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                <?php } ?>
            </div>
            <div class="col-6">
                <form action="admin/actions/add_compra_acc.php" method="POST">
                    <h3 class="text-start">Rellená con tus datos personales</h3>
                    <?php foreach ($items as $key => $item) { ?>
                        <input class="d-none" type="text" name="manga[]" value="<?= $item['titulo'] ?>">
                        <input class="d-none" type="number" name="volumen[]" value="<?= $item['numero'] ?>">
                        <input class="d-none" type="number" name="cantidad[]" value="<?= $item['cantidad'] ?>">
                    <?php } ?>
                    <input class="d-none" type="number" name="usuario_id" value="<?= $usuario_id ?>">
                    <div class="d-flex gap-2">
                        <div class="col-6 form-group my-3">
                            <input class="form-control" name="usuario_nombre" type="text" id="usuario_nombre" placeholder="Ingresá tu nombre" required>
                        </div>
                        <div class="col-6 form-group my-3">
                            <input class="form-control" name="usuario_apellido" type="text" id="usuario_apellido" placeholder="Ingresá tu apellido" required>
                        </div>
                    </div>
                    <div class="col-12 form-group my-3">
                        <input class="form-control" name="usuario_provincia" type="text" id="usuario_provincia" placeholder="Ingresá tu provincia" required>
                    </div>
                    <div class="col-12 form-group my-3">
                        <input class="form-control" name="usuario_ciudad" type="text" id="usuario_ciudad" placeholder="Ingresá tu ciudad" required>
                    </div>
                    <div class="col-12 form-group my-3">
                        <input class="form-control" name="usuario_calle" type="text" id="usuario_calle" placeholder="Ingresá la dirección de tu calle" required>
                    </div>
                    <div class="col-12 form-group my-3">
                        <input class="form-control" name="usuario_cpa" type="number" id="usuario_cpa" placeholder="Ingresá tu código postal" required>
                    </div>
                    <div class="col-12 form-group my-3">
                        <input class="form-control" name="usuario_mail" type="email" id="usuario_mail" placeholder="Ingresá tu correo electrónico" required>
                    </div>
                    <h3 class="text-start">Rellená con los datos de tu tarjeta</h3>
                    <div class="col-12 form-group my-3">
                        <input class="form-control" name="numeroTarjeta" type="number" id="numeroTarjeta" placeholder="Número frontal de tu tarjeta de crédito o débito" required>
                    </div>
                    <div class="col-12 form-group my-3">
                        <input class="form-control" name="cvv" type="number" id="cvv" placeholder="Código de la tarjeta" required>
                    </div>
                    <div class="col-12 form-group my-3">
                        <input class="form-control" name="nombreTitular" type="text" id="nombreTitular" placeholder="Nombre del titular de la tarjeta" required>
                    </div>

                    <button name="enviar" type="submit" class="btn text-light w-100" style="background-color: #028171;">Confirmar el pago</button>
                </form>
            </div>
        </div>
    <?php } else { ?>
    <div class="text-center mt-3 mb-5 col-8">
        <h2 class="my-5">¡No hay nada que pagar!</h2>
        <p class="mb-5">Parece que todavía no tenes productos en tu carrito para efectuar un pago! Probá volviendo al catálogo y añadiendo algunos productos al carrito.</p>
        <div class="mt-5">
            <img src="images/iconos/entendido.png" alt="Ícono entendido">
        </div>
        <a class="volver text-decoration-none" href="index.php?seccion=catalogo&genero=catalogo">Explorar el catálogo →</a>
    </div>
    <?php } ?>
</section>