<div class="row my-5 mx-1">
    <div class="col m-auto">
        <h1 class="text-center mb-5 fw-bold">Agregar un nuevo <span style="color: #028171;">Escritor</span></h1>
        <div class="m-auto col-10 col-md-8 col-lg-6 col-xl-4">
            <form action="actions/add_escritor_acc.php" method="POST">
                <div class="mb-3">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre completo del escritor" required>
                </div>
                <div class="mb-3">
                    <label for="biografia" class="form-label">Biografía</label>
                    <textarea name="biografia" class="form-control" id="biografia" rows="8" placeholder="Biografía del escritor"></textarea>
                </div>
                <div class="d-flex justify-content-end">
                    <button type="submit" id="btn-admin" class="btn text-light w-100" style="background-color: #028171;">Subir</button>
                </div>
            </form>
        </div>
    </div>
</div>