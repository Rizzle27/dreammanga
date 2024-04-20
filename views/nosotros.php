<section class="container-fluid text-center my-5">
    <div class="w-75 m-auto">
        <h1 class="my-4">¿Quiénes somos?</h1>
        <p>
        Bienvenido a <strong style="color: #00A78C">DreamManga</strong>, donde los amantes del manga pueden encontrar todo lo que necesitan para satisfacer su pasión. Somos un equipo de entusiastas del manga dedicados a proporcionar a nuestros usuarios la mejor experiencia de compra de manga en línea. Desde los clásicos hasta los últimos lanzamientos, <b style="color: #00A78C">nuestra página de manga tiene algo para todos</b>. Nos apasiona el manga y nuestra misión es compartir esa pasión con nuestros usuarios. Es por eso que nos esforzamos por ofrecer una amplia selección de manga en diferentes géneros, incluyendo <b style="color: #00A78C">acción, romance, musicales, deportes y más</b>. Nuestro objetivo es brindar a nuestros usuarios una experiencia de lectura sin problemas, con la mejor calidad de imágenes posible. Nos enorgullece ser una fuente confiable para nuestros usuarios cuando se trata de manga y estamos comprometidos en ofrecer una experiencia única e inolvidable. Esperamos que disfrutes explorando nuestra página de manga y te unas a nuestra comunidad. <b style="color: #00A78C">¡Gracias por visitarnos en <strong>DreamManga</strong>!</b>
        </p>
    </div>
    <div class="my-5">
        <?php require_once "nosotrosCards.php" ?>
    </div>
</section>
<section class="d-flex flex-column text-center justify-content-center align-items-center mx-3">
    <h3>¿Tenés alguna duda?</h3>
    <h4 class="my-2">No dudes en contactarnos</h4>
    <div class="my-3">
        <img src="./images/iconos/down-arrow.png" alt="Flecha hacia abajo">

    </div>
    <form class="col-12 col-md-6 my-4" method="POST">
        <div class="form-group my-3">
            <input class="form-control" name="nombre" type="text" id="nombre" placeholder="Ingresá tu nombre">
        </div>
        <div class="form-group my-3">
            <input class="form-control" name="apellido" type="text" id="apellido" placeholder="Ingresá tu apellido">
        </div>
        <div class="form-group my-3">
            <textarea class="form-control" name="mensaje" id="menaje" placeholder="Ingresá acá tu consulta"
                rows="3"></textarea>
        </div>
        <button name="enviar" type="submit" class="btn text-light w-100"
            style="background-color: #028171;">Enviar</button>
        <?php
        if (isset($_POST["enviar"])) { ?>
            <div class="toast card text-dark my-3 py-3" role="alert" aria-live="assertive" aria-atomic="true">
                <div class="toast-header">
                    <strong class="me-auto">Datos ingresados:</strong>
                </div>
                <div class="toast-body">
                    <p>Hola
                        <?= $_POST["nombre"] . " " . $_POST["apellido"] ?>! gracias por tu mensaje!
                    </p>
                </div>
            </div>
        <?php } ?>
    </form>
</section>