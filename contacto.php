<?php require_once 'layouts/header.php'; ?>

<!-- <?php 
    session_start();
    
 ?> -->
<!-- mail -->

<?php
if(!empty($_POST['correo'])){
    ini_set( 'display_errors', 1 );
    error_reporting( E_ALL );
    $message  = "
       Nombres:  ".$_POST['nombres']."
       Correo: ".$_POST['correo']."
       Asunto:".$_POST['asunto']."
      Mensaje:".$_POST['mensaje']."
    ";

    $from = "contacto@cooservicios.com.co";
    $to = "informacion@cooservicios.com.co";
    $subject = "Formulario de contacto";
    $headers = "From:" . $from;
    mail($to,$subject,$message, $headers);
    $_SESSION['send'] = "Mensaje enviado con exito.";

}
    
?>

    <!-- ##### Welcome Area Start ##### -->

    <div class="cabezera-contacto" data-options='{direction: "normal"}'>
   
       <div class="divimage dzsparallaxer--target" style="background-image: url(img/images/img20.jpg);background-position:center; width:101%; height:550px; background-repeat:no-repeat"></div>
        <!-- breadcumb content -->

        <div class="breadcumb-content">

            <div class="container h-100">

                <div class="row h-100">

                    <div class="col-12" style="margin-top: 350px">

                         

                        <nav aria-label="breadcrumb" class="breadcumb--con text-center">

                            <h2 class="w-text title wow fadeInUp" data-wow-delay="0.2s" style="color: #13287e !important">Contacto</h2>

                            <ol class="breadcrumb justify-content-center wow fadeInUp" data-wow-delay="0.4s" >

                                <li class="breadcrumb-item" ><a href="index.php" style="color: #00a8ff">Inicio</a></li>

                                <li class="breadcrumb-item active" aria-current="page" style="color: #00a8ff">Contacto</li>

                            </ol>

                        </nav>

                    </div>

                </div>

            </div>

        </div>

    </div>

    <!-- ##### Welcome Area End ##### -->

    <section class="our_services_area section-padding-100-70 clearfix" id="services">

        <div class="container">

            

           <div class="row">

                <div class="col-12">

                    <div class="section-heading text-center">

                        <!-- Dream Dots -->

                        <div class="dream-dots justify-content-center wow fadeInUp" data-wow-delay="0.2s">

                            <span></span><span></span><span></span><span></span><span></span><span></span><span></span>

                        </div>

                        <h2 class="wow fadeInUp" data-wow-delay="0.3s">Contacta Con Nosotros</h2>

                        <p class="wow fadeInUp" data-wow-delay="0.4s">"Nuestra Fortaleza es su Confianza,<br> nuestro Compromiso su Bienestar".</p>

                    </div>

                </div>

            </div>

                



            <div class="row">

                <div class="col-12 col-sm-6 col-lg-4">

                    <!-- Content -->

                    <div class="service_single_content text-center mb-100 wow fadeInUp" data-wow-delay="0.2s">

                        <!-- Icon -->

                        <div class="service_icon">

                            <img src="img/services/1.svg" alt="">

                        </div>

                        <h6>Telefonos</h6>

                        <p>

                             <h5><strong>(098)</strong> 740 68 89</h5>

                             

                             <strong>Cel: </strong>3133329704 - 3168457954 <br>

                             <strong>Cel: </strong>3168583451 - 3162214729

                        </p>

                    </div>

                </div>

                <div class="col-12 col-sm-6 col-lg-4">

                    <!-- Content -->

                    <div class="service_single_content text-center mb-100 wow wow fadeInUp" data-wow-delay="0.3s">

                        <!-- Icon -->

                        <div class="service_icon">

                            <img src="img/services/2.svg" alt="">

                        </div>

                        <h6>Correo Electrónico</h6>

                        <p>

                            informacion@cooservicios.com.co

                            <br>

                             

                        </p>

                    </div>

                </div>

                <div class="col-12 col-sm-6 col-lg-4">

                    <!-- Content -->

                    <div class="service_single_content text-center mb-100 wow fadeInUp" data-wow-delay="0.4s">

                        <!-- Icon -->

                        <div class="service_icon">

                            <img src="img/services/3.svg" alt="">

                        </div>

                        <h6>Dirección</h6>

                        <p>

                            <strong>Carrera 10 </strong><small>No</small> 17 - 57

                            <br>

                            Tunja <strong>Boyacá </strong><br>

                        

                        </p>

                    </div>

                </div>

            </div>

        </div>

    </section>

    <!-- ##### Contact Area Start ##### -->

    <section class="demo-video feat section-padding-0-100 bub-right" id="contact" >

        <div class="container">

            

           <div class="row">

                <div class="col-12">

                    <div class="section-heading text-center">

                        <!-- Dream Dots -->

                        <div class="dream-dots justify-content-center wow fadeInUp" data-wow-delay="0.2s">

                            <span></span><span></span><span></span><span></span><span></span><span></span><span></span>

                        </div>

                        <h2 class="wow fadeInUp" data-wow-delay="0.3s">Envía tu Mensaje </h2>

                        

                    </div>

                </div>

            </div>

            <!-- Contact Form -->

            <div class="row justify-content-center">

                <div class="col-12 col-md-10 col-lg-8">

                    <div class="contact_form">

                        <form action="#" method="post" id="main_contact_form" novalidate>

                            <div class="row">
                                <div class="col-md-12">
                                     <?php if(!empty($_SESSION['send'])){
                                        echo $_SESSION['send'];
                                        unset($_SESSION['send']);
                                    } ?>
                                </div>

                                <div class="col-12">

                                    <div id="success_fail_info"></div>

                                </div>



                                <div class="col-12 col-md-6">

                                    <div class="group wow fadeInUp" data-wow-delay="0.2s">

                                        <input type="text" name="nombre" id="nombre" required>

                                        <span class="highlight"></span>

                                        <span class="bar"></span>

                                        <label>Nombre</label>

                                    </div>

                                </div>

                                <div class="col-12 col-md-6">

                                    <div class="group wow fadeInUp" data-wow-delay="0.3s">

                                        <input type="text" name="correo" id="correo" required>

                                        <span class="highlight"></span>

                                        <span class="bar"></span>

                                        <label>Correo</label>

                                    </div>

                                </div>

                                <div class="col-12">

                                    <div class="group wow fadeInUp" data-wow-delay="0.4s">

                                        <input type="text" name="tema" id="tema" required>

                                        <span class="highlight"></span>

                                        <span class="bar"></span>

                                        <label>Tema</label>

                                    </div>

                                </div>

                                <div class="col-12">

                                    <div class="group wow fadeInUp" data-wow-delay="0.5s">

                                        <textarea name="mensaje" id="mensaje" required></textarea>

                                        <span class="highlight"></span>

                                        <span class="bar"></span>

                                        <label>Mensaje</label>

                                    </div>

                                </div>

                                <div class="col-12 text-center wow fadeInUp" data-wow-delay="0.6s">

                                    <button type="submit" class="btn dream-btn">Enviar</button>

                                </div>

                            </div>

                        </form>

                    </div>

                </div>

            </div>

        </div>

    </section>

    <!-- ##### Contact Area End ##### -->

    <section class="our_services_area section-padding-100-70 clearfix">

        <div class="container">

        <div class="row">

                <div class="col-12">

                    <div class="section-heading text-center">

                        <!-- Dream Dots -->

                        <div class="dream-dots justify-content-center wow fadeInUp" data-wow-delay="0.2s">

                            <span></span><span></span><span></span><span></span><span></span><span></span><span></span>

                        </div>

                        <h2 class="wow fadeInUp" data-wow-delay="0.3s">Nuestra Ubicación   </h2>

                        

                    </div>

                </div>

            </div>

            <div class="row">

                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3971.248151399471!2d-73.36501498573556!3d5.530158635447842!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e6a7dd32284b0d3%3A0x9a674856a063a08c!2sV%C3%ADa%20Baloto%20Cooservicios%20Ltda%20Tunja!5e0!3m2!1ses!2sco!4v1586533356843!5m2!1ses!2sco"

                    width="1200" height="400" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0">

                </iframe>

            </div>

        </div>

    </section>

    



    <!-- ##### Footer Area Start ##### -->

    <?php require_once 'layouts/footer.php'; ?>



</body>







<!-- Mirrored from detotrix.netlify.com/contact-us.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Apr 2020 17:43:18 GMT -->

</html>