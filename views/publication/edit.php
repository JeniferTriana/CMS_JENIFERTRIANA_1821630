<section class="container">
    <h1>Editar publicaciones</h1>
    <form action="?controller=publication&method=update" method="POST">
            <input type="hidden" name="id_p" value="<?= $publication->id_p ?>">
        <section class="form-group">
            <label for="title">title</label>
            <input type="title" name="title" id="title" required class="form-control" value="<?= $publication->title ?>">
        </section>
        <section class="form-group">
            <label for="description">description</label>
            <input type="text" name="description" id="description" required class="form-control" value="<?= $publication->description ?>">
        </section>

       
        <section class="form-group">
            <input type="submit" value="Actualizar" class="btn btn-green">
        </section>
    </form>
</section>