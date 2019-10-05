
<center><h1>Lista de publicaciones</h1> </center>

<br>

<table class="table">
  
    <tbody>
    <?php foreach(parent::all() as $publication):  ?>
        <tr>
            <center>
            
            <h1> <tr><?= $publication->title ?></tr> </h1>
            <br>
            <br>
           <center> <h1> <tr><?= $publication->description ?> </tr> </h1></center>
            <br>

        <center>   <tr><a href ="" download="<?= $publication->image ?>">  <center><img width="300" height="300"src="<?= $publication->image ?>" alt=""></center></a></tr> 

                     <td width="100" class="table__options"> </center>
             
            </a>
            </td>
        </tr>
    <?php endforeach; ?>


</section>


   


 </section>
  