<section class="container">
    <h1>Registrar usuario</h1>
    <form action="?controller=user&method=store" method="POST">
        <section class="form-group">
            <label for="name">Name</label>
            <input type="text" name="name" id="name" required class="form-control">
        </section>
        <section class="form-group">
            <label for="email">Email</label>
            <input type="email" name="email" id="email" required class="form-control">
        </section>
        <section class="form-group">
            <label for="password">Password</label>
            <input type="password" name="password" id="password" required class="form-control">
        </section>
<select name="  id_rol">

<option value="1">admin</option>

<option value="2">user</option>

</select>


        <section class="form-group">
            <input type="submit" value="Registar" class="btn btn-green">
        </section>
    </form>
</section>
