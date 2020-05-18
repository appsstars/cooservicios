<?php

 require_once 'layouts/header.php'; 

 require_once 'app/conexion/db.php';

 require_once 'app/noticias/app.php';

?>



    <!-- ##### Header Area End ##### -->



    <!-- ##### Welcome Area Start ##### -->

    <div class="cabezera_noticia" data-options='{direction: "normal"}'>

        <div class="divimage dzsparallaxer--target" style="background-image: url(img/noticias/1.jpg);background-position:top; width:101%; height:550px; background-repeat:no-repeat"></div>

        <!-- breadcumb content -->

        <div class="breadcumb-content">

            <div class="container h-100">

                <div class="row h-100">

                    <div class="col-12" style="margin-top:350px;">

                        <nav aria-label="breadcrumb" class="breadcumb--con text-center">

                            <h2 class="w-text title wow fadeInUp" data-wow-delay="0.2s" style="color: #13287e !important">Noticias</h2>

                            <ol class="breadcrumb justify-content-center wow fadeInUp" data-wow-delay="0.4s" >

                                <li class="breadcrumb-item" ><a href="index.php" style="color: #00a8ff">Inicio</a></li>

                                <li class="breadcrumb-item active" aria-current="page" style="color: #00a8ff">Noticias</li>

                            </ol>

                        </nav>

                    </div>

                </div>

            </div>

        </div>

    </div>

    <!-- ##### Welcome Area End ##### -->



    <!-- ##### Blog Area Start ##### -->

    <section class="blog-area section-padding-100-0">

        <div class="container">

        <div class="section-heading text-center">

                    <!-- Dream Dots -->

                    <div class="dream-dots justify-content-center wow fadeInUp" data-wow-delay="0.2s">

                        <span></span><span></span><span></span><span></span><span></span><span></span><span></span>

                    </div>

                    <h2 class="d-blue fadeInUp" data-wow-delay="0.3s">Nuestras ultimas Noticias!</h2>

                    <p class="fadeInUp" data-wow-delay="0.4s" style="color:#888">

                        "Nuestra Fortaleza es su Confianza, <br> nuestro Compromiso su Bienestar".

                    </p>

                </div>

            <div class="row">

                <!-- -----CODIGO PHP PARA LISTAR---- -->

                <?php

                    $noti = new noticia();

                    $sql = "SELECT * from noticias

                    ORDER BY id DESC LIMIT 6";

                    

                    $dato = $noti->listarNoticias($sql);

                    // print_r($dato) ;

                    foreach ($dato as $key ) {

                                      

                ?>

                    

                         <!-- Single Blog Post -->

                        <div class="col-12 col-sm-6 noti">

                            <div class=" col-12 single-blog-area wow fadeInUp caja_noti" data-wow-delay="0.2s">

                                <!-- Post Thumbnail -->

                                <div class="blog_thumbnail">

                                    <img src="img/noticias/<?php echo $key['img'] ?>" alt="" style="height: 300px">

                                </div>

                                <!-- Post Content -->

                                <div class="blog-content">

                                    <!-- Dream Dots -->

                                    <div class="post-meta">

                                        <p class="fecha">Fecha <a href="#"><?php echo $key['created_at'] ?></a> </p>

                                    </div>

                                    <div class="dream-dots justify-content-center mt-30 ">

                                        <span></span><span></span><span></span><span></span><span></span><span></span><span></span>

                                    </div>

                                    

                                    <a href="index-single-blog.html" class="post-title puntos">

                                        <h4><?php echo $key['titulo'] ?></h4>

                                    </a>

                                    <p><?php echo $key['descripcion'] ?></p>

                                    <a class="btn dream-btn mt-30 wow fadeInUp" onclick="mostrar('<?php echo $key['id']; ?>')" >Leer Detalles</a>

                                  

                                </div>

                            </div>

                        </div>



                    <?php

                    } 

                    ?>

            </div>



            

        </div>

       

        <div id="divModal"></div>

    </section>



    <script>

        function mostrar(id){

            var ruta = 'modal_noticia.php?id='+id;

            $.get(ruta,function(data){

               $ ('#divModal').html(data);

               $('#detalle-noticias').modal('show');

            });

            

        }

    </script>



</body>



<?php require_once 'layouts/footer.php'; ?>



<!-- Mirrored from detotrix.netlify.com/index-blog.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Apr 2020 17:43:17 GMT -->

</html>