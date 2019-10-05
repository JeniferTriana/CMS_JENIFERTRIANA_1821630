<h1>Lista de publicaciones</h1>

<a href="?controller=publication&method=create">
    <button class="btn btn-green">Create</button>

<a href="?controller=user">
    <button class="btn btn-green">Users</button>


        <li><a class="nav-link" href="?controller=user">users</a></li>
                        <li><a class="nav-link" href="?controller=publication">Publications</a></li>



</a>
<table class="table">
    <thead>
        
        <th>tittle</th>
        <th>descripcion</th>
        <th>image</th>
         <th>Option</th>
    </thead>
    <tbody>
    <?php foreach(parent::all() as $publication):  ?>
        <tr>
     
            <td><?= $publication->title ?> </td>
            <td><?= $publication->description ?></td>
           <td><a href ="" download="<?= $publication->image ?>"><img width="150" height="150"src="<?= $publication->image ?>" alt=""></a></td>
            <td width="350" class="table__options">
                <a href="?controller=publication&method=edit&id=<?= $publication->id_p ?>">
                    <button class="btn btn-outline-green">Editar</button>
                </a>
                 <a href="?controller=publication&method=delete&id=<?= $publication->id_p ?>">
                <button class="btn btn-outline-red">Borrar</button>
            </a>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>