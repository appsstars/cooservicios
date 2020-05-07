<?php 
    $id = $_REQUEST['id'];
    require_once 'app/conexion/db.php';
    require_once 'app/noticias/app.php';
    $noti = new noticia();
    $sql = "SELECT * from noticias
    where id=$id";
    $dato = $noti->listarNoticias($sql);
    // print_r($dato) ;
     foreach ($dato as $key ) {

     
?>
<div class="modal fade" id="detalle-noticias" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
        
        <div class="modal-content">
        <div class="modal-body">
            <img src="img/noticias/<?php echo $key['img'] ?>" alt="">
            <div class="dream-dots justify-content-center mt-30 ">
                                        <span></span><span></span><span></span><span></span><span></span><span></span><span></span>
                                    </div>
            <h4 class="text-center" ><?php echo $key['titulo'] ?></h4>
            
            <div class="condiciones">
              <p class="text-center"><?php echo $key['descripcion'] ?></p>
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        </div>
        </div>
    </div>
</div>
<?php
}
?>