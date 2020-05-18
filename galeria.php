
<?php require_once 'layouts/header.php'; ?>
<style>
    .classy-navbar {
        padding: 0;
        top: 0;
        margin: -29px 0 0 0;
    }
</style>

<<<<<<< HEAD
<div class="cabezera_galeria">
    <div class="row">
        <div class="container">
            <div class="col-12">
                <nav aria-label="breadcrumb" class="breadcumb--con text-center">
                    <h2 class="w-text title wow fadeInUp" data-wow-delay="0.2s">Galeria</h2>
                    <ol class="breadcrumb justify-content-center wow fadeInUp" data-wow-delay="0.4s">
                        <li class="breadcrumb-item"><a href="#">Inicio</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Galeria</li>
                    </ol>
                </nav>
            </div>   
=======
<div class="cabezera_galeria" data-options='{direction: "normal"}' style="margin-bottom: 100px">

    <div class="divimage dzsparallaxer--target" style="background-image: url(img/galeria/cabezera/1.jpg);background-position:top; width:101%; height:550px; background-repeat:no-repeat"></div>

    <!-- breadcumb content -->
         <div class="breadcumb-content">

            <div class="container h-100">

                <div class="row h-100">

                    <div class="col-12" style="margin-top:350px">

                        <nav aria-label="breadcrumb" class="breadcumb--con text-center">

                            <h2 class="w-text title wow fadeInUp" data-wow-delay="0.2s" style="color: #13287e !important">Galeria</h2>

                            <ol class="breadcrumb justify-content-center wow fadeInUp" data-wow-delay="0.4s" >

                                <li class="breadcrumb-item" ><a href="index.php" style="color: #00a8ff">Inicio</a></li>

                                <li class="breadcrumb-item active" aria-current="page" style="color: #00a8ff">Galeria</li>

                            </ol>

                        </nav>

                    </div>

                </div>

            </div>

>>>>>>> 830b086f4e2928d2fa8d999cd87ef7ee40a61ec1
        </div>
</div>
<div class="galeria">
    <div class="contenedor">
            <header class="header_galeria">
                <form action="">
                    <input type="text" class="barra-busqueda" id="barra-busqueda" placeholder="Buscar">
                </form>
                <?php 
                    //imprimir nombres de etiquetas categoria
                    $albums = scandir('img/eventos');
                    unset($albums[0]); 
                    unset($albums[1]);
                 ?>
                <div class="categorias" id="categorias">
                    <a href="#" class="activo">Todos</a>
                    <?php 
                        foreach ($albums as $key => $value) { ?>
                            <a href="#"><?php echo $value; ?></a>
                        <?php } ?>
                </div>
            </header>


        <section class="grid" id="grid">
            <?php 
                //impresion de items segun el albuns
                foreach ($albums as $key => $value) { ?>
                        <?php 
                                //fotos del albun
                                $fotos = scandir('img/eventos/'.$value);
                                unset($fotos[0]); 
                                unset($fotos[1]);
                                foreach ($fotos as $key => $foto) { ?>
                                    <div class="item" 
                                         data-categoria="<?php echo $value; ?>"
                                         data-etiquetas=""
                                         data-descripcion="">
                                        <div class="item-contenido">
                                            <img src="img/eventos/<?php echo $value; ?>/<?php echo $foto; ?>" alt="">
                                        </div>
                                    </div>
                                <?php  } ?>
                         
                <?php } ?>
                                    
        </section>

        <section class="overlay" id="overlay">
            <div class="contenedor-img">
                <button id="btn-cerrar-popup"><i class="fas fa-times"></i></button>
                <img src="" alt="">
            </div>
            <p class="descripcion"></p>
        </section>

    </div>
</div>




        




<?php require_once 'layouts/footer.php'; ?>
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/2c36e9b7b1.js"></script>
<link rel="stylesheet" href="img/galeria/estilos.css">


    <script src="https://unpkg.com/web-animations-js@2.3.2/web-animations.min.js"></script>
    <script src="https://unpkg.com/muuri@0.8.0/dist/muuri.min.js"></script>
    <script src="img/galeria/main.js"></script>
