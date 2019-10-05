<section class="container">
    <h1>Crear publicacion</h1>
    <form action="?controller=publication&method=store" method="POST" enctype="multipart/form-data"> 
        
        <section class="form-group">
            <label for="title">title</label>
            <input type="title" name="title" id="title" required class="form-control">
        </section>
        <section class="form-group">
            <label for="description">description</label>
            <input type="description" name="description" id="description" required class="form-control">
        </section>
        <section class="form-group">
            <label for="file">Image</label>
            <input type="file" name="file" id="file" class="form-control">
        </section>
        <section class="form-group">
            <input type="submit" value="Registar" class="btn btn-green">
        </section>
    </form>
</section>