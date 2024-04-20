<div class="row my-5 mx-1">
    <div class="col m-auto">
        <h1 class="text-center mb-5 fw-bold">Agregar una nueva <span style="color: #028171;">Editorial</span></h1>
        <div class="m-auto col-10 col-md-8 col-lg-6 col-xl-4">
            <form action="actions/add_editorial_acc.php" method="POST" enctype="multipart/form-data">
                <div class="mb-3">
                    <label for="nombre" class="form-label">Nombre</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" placeholder="Nombre de la editorial" required>
                </div>
                <div class="mb-3">
                    <label for="origen" class="form-label">Orígen</label>
                    <input type="text" name="origen" class="form-control" id="origen" placeholder="País de orígen de la editorial">
                </div>
                <div class="mb-3">
                    <label for="fundacion" class="form-label">Fundación</label>
                    <input type="number" name="fundacion" class="form-control" id="fundacion" min="1800" max="2023" placeholder="Año de fundación (min 1800)">
                </div>
                <div class="mb-3">
                    <label for="logo" class="form-label">Logo</label>
                    <input type="file" class="form-control" id="logo" name="logo" accept="image/*">
                    <img src="../actions/" alt="">
                </div>
                <div class="d-flex justify-content-end">
                    <button type="submit" id="btn-admin" class="btn text-light w-100" style="background-color: #028171;">Subir</button>
                </div>
            </form>
        </div>
    </div>
</div>