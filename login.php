<?php 
ini_set('session.cache_expire', 600);
ini_set('session.gc_maxlifetime', 36000);
ini_set('session.cookie_lifetime',36000);
header('Content-Type: text/html; charset=UTF-8');
header('Expires: Sat, 29 Jun 2019 00:00:00 GMT'); // Aquí estoy poniendo una fecha 2 meses después del día de hoy
session_cache_expire(600);
session_set_cookie_params(36000);
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
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading text-center">
                        <!-- Dream Dots -->
                        <div class="dream-dots justify-content-center wow fadeInUp" data-wow-delay="0.2s">
                            <span></span><span></span><span></span><span></span><span></span><span></span><span></span>
                        </div>
                        <h2 class="wow fadeInUp" data-wow-delay="0.3s">Acceso</h2>
                        <p class="wow fadeInUp" data-wow-delay="0.4s">.</p>
                    </div>
                </div>
            </div>

            <!-- Contact Form -->
            <div class="row justify-content-center">
                <div class="col-12 col-md-10 col-lg-8">
                    <div class="contact_form">
                        <form action="#" method="post">
                            <div class="row">
                                <div class="col-12">
                                    <div id="success_fail_info"></div>
                                </div>

                                <div class="col-12 col-md-12">
                                    <div class="group wow fadeInUp" data-wow-delay="0.2s">
                                        <input type="email" name="usuario" id="usuario" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Usuario</label>
                                    </div>
                                </div>
                                <div class="col-12 col-md-12">
                                    <div class="group wow fadeInUp" data-wow-delay="0.3s">
                                        <input type="password" name="password" id="password" required>
                                        <span class="highlight"></span>
                                        <span class="bar"></span>
                                        <label>Correo</label>
                                    </div>
                                </div>
                                <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.6s">
                                    <button type="submit" class="btn btn-primary">Acceder</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
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