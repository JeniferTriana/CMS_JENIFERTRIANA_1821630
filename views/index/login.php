

<section class="container">
    <h1>Login</h1>
    
    <form action="?controller=security&method=login" method="POST">
        <section class="form-group">
            <label for="email">Email</label>
            <input type="email" name="email" id="email" required class="form-control">
        </section>
        <section class="form-group">
            <label for="password">Password</label>
            <input type="password" name="password" id="password" required class="form-control">
        </section>
        <section class="form-group">
            <input type="submit" value="Ingresar" class="btn btn-green">
        </section>
        
    </form>
</section>