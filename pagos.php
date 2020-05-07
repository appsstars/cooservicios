<?php 
session_start();
    
require 'app/conexion/conexion.php';
$error = '';

    if(!empty($_POST['usuario'])){
      $sql = 'SELECT * FROM usuarios WHERE usuario = "'.$_POST['usuario'].'"';
      $query = mysqli_query($conexion, $sql);
      $rows = mysqli_fetch_assoc($query);
      if(count($rows)>0){
        if(password_verify($_POST['password'], $rows['password'])){
          $_SESSION['usuario'] = $rows['usuario'];
          $_SESSION['id'] = $rows['id'];
          echo ' <meta http-equiv="refresh" content="0;url=panel">';
        }
      }else{
          $error = 'Los datos de acceso son incorrectos';
      }
    }


    if(!empty($_SESSION['usuario'])){
      echo ' <meta http-equiv="refresh" content="0;url=panel">';
    }
 ?>
 
<?php require_once 'layouts/header.php'; ?>
   <div class="breadcumb-area clearfix dzsparallaxer auto-init" data-options='{direction: "normal"}'>
        <div class="divimage dzsparallaxer--target" style="width: 101%; height: 130%; background-image: url(img/bg-img/bg-2.jpg)"></div>
        <!-- breadcumb content -->
        <div class="breadcumb-content">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <nav aria-label="breadcrumb" class="breadcumb--con text-center">
                            <h2 class="w-text title wow fadeInUp" data-wow-delay="0.2s">PQRS</h2>
                            <ol class="breadcrumb justify-content-center wow fadeInUp" data-wow-delay="0.4s">
                                <li class="breadcrumb-item"><a href="./">Inicio</a></li>
                                <li class="breadcrumb-item active" aria-current="page">PQRS</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ##### Welcome Area Start ##### -->

    <!-- ##### Welcome Area End ##### -->


    <div class="sh-bg">
    <!-- ##### Our Services Area Start ##### -->
        <section class="contact_us_area" id="contact">
              <div class="row banner-anexs">

            <!-- Start Slider Area -->
              <div class="container">
               <h4 class="titulo-info">Informacion</h4>
                  <p>NO OLVIDE ENVIAR LA FOTO DE SOPORTE AL NUMERO DE WHATSAPP 313 332 9704 <a href="https://api.whatsapp.com/send?phone=573133329704&text=Hola,%20adjunto%20el%20comprobante%20de%20pago,%20mi%20nombre%20y%20mi%20c%C3%A9dula%20es:" target="blank">Enviar comprobante</a></p>
                  <img src="img/pagos/pago1.png" class="img-pago" alt="page con pse cooservicios">
                  <img src="img/pagos/pago2.png" class="img-pago" alt="page con pse cooservicios">

                  <form action="app/pagos/pay.php" method="post">
                        <div class="row">
                            <div class="col-12">
                                <div id="success_fail_info"></div>
                            </div>

                            <div class="col-12 col-md-6">
                                <div class="group wow fadeInUp" data-wow-delay="0.2s">
                                    <input type="text" name="nombres" id="nombres" required>
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Nombres</label>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <div class="group wow fadeInUp" data-wow-delay="0.3s">
                                    <input type="text" name="documento" id="documento" required>
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Documento</label>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="group wow fadeInUp" data-wow-delay="0.4s">
                                    <input type="number" name="valor" id="valor" required>
                                    <span class="highlight"></span>
                                    <span class="bar"></span>
                                    <label>Valor</label>
                                </div>
                            </div>


                            <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.6s">
                                <button type="submit" class="btn dream-btn">Enviar</button>
                            </div>
                        </div>
                    </form>


              </div>

                    
              
          
          <!-- End Slider Area -->
        </section>
    <!-- ##### Our Services Area End ##### -->
    </div>
   
    <!-- ##### About Us Area Start ##### -->
  
    <!-- ##### About Us Area End ##### -->


    <!-- ##### About Us Area End ##### -->
    



    <div class="clearfix"></div>

    <div class="sh-bg">
    <!-- ##### Our features Area start ##### -->
    
    <!-- ##### Our features Area End ##### -->
    </div>


    <!-- ##### Subscribe Area End ##### -->

    <!-- ##### FAQ & Timeline Area Start ##### -->

    <!-- ##### FAQ & Timeline Area End ##### -->


    <!-- ##### Team Area Start ##### -->

    <!-- ##### Team Area End ##### -->

    
    <!-- ##### Blog Area Start ##### -->

    <!-- ##### Blog Area End ##### -->

    <!-- ##### Contact Area Start ##### -->

    <!-- ##### Contact Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <?php require_once 'layouts/footer.php'; ?>