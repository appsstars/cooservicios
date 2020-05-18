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


    <section class="col-lg-12 section_home"></div>


        <div class="contain">
            <div id="carouselExampleSlidesOnly" class="slider_home" data-ride="carousel">
                <div class="carousel-inner">
                    <div class=" carousel-item active" >                       
                        <img class="d-block w-100" src="img/home/1.jpg" alt="First slide" style="height: 100%">
                        <div class="welcome-content v2" style="position: absolute; left: 100px; bottom: 10%; z-index: 3;">

                            <h1 class="wow fadeInUp w-text" data-wow-delay="0.2s" style="color: #13287e !important">Afíliate con nosotros</h1>

                            <p class="wow fadeInUp" data-wow-delay="0.3s" style="color: black !important">Ofrecemos servicios crédito que se adaptan a tus necesidades,<br>
                            Somos la mejor opción para respaldar tus sueños.</p>

                            <div class="dream-btn-group wow fadeInUp" data-wow-delay="0.4s">

                                <a href="servicios" class="btn dream-btn">Servicios</a>

                                <small><a href="contacto" class="btn dream-btn btn-sm">Contáctenos</a></small>


                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                       <img class="d-block w-100" src="img/home/2.jpg" alt="Second slide">
                       <div class="welcome-content v2" style="position: absolute; left: 100px; bottom: 10%; z-index: 3;">

                            <h1 class="wow fadeInUp w-text" data-wow-delay="0.2s" style="color: #13287e !important">Afíliate con nosotros</h1>

                            <p class="wow fadeInUp" data-wow-delay="0.3s" style="color: black !important">Ofrecemos servicios crédito que se adaptan a tus necesidades,<br>
                            Somos la mejor opción para respaldar tus sueños.</p>

                            <div class="dream-btn-group wow fadeInUp" data-wow-delay="0.4s">

                                <a href="servicios" class="btn dream-btn">Servicios</a>

                                <small><a href="contacto" class="btn dream-btn btn-sm">Contáctenos</a></small>


                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="img/home/3.jpg" alt="Third slide">
                        <div class="welcome-content v2" style="position: absolute; left: 100px; bottom: 10%; z-index: 3;">

                            <h1 class="wow fadeInUp w-text" data-wow-delay="0.2s" style="color: #13287e !important">Afíliate con nosotros</h1>

                            <p class="wow fadeInUp" data-wow-delay="0.3s" style="color: black !important">Ofrecemos servicios crédito que se adaptan a tus necesidades,<br>
                            Somos la mejor opción para respaldar tus sueños.</p>

                            <div class="dream-btn-group wow fadeInUp" data-wow-delay="0.4s">

                                <a href="servicios" class="btn dream-btn">Servicios</a>

                                <small><a href="contacto" class="btn dream-btn btn-sm">Contáctenos</a></small>


                            </div>
                        </div>
                    </div>
                        
                </div>
               
                
             </div>

        

        

    </section>

    <!-- ##### Welcome Area End ##### -->





    

    <!-- ##### Our Services Area Start ##### -->

    <section class="our_services_area section-padding-100-70 clearfix" id="services">

        <div class="container">

            

            <div class="section-heading text-center">

                <!-- Dream Dots -->
                <div class="dream-dots justify-content-center wow fadeInUp" data-wow-delay="0.2s">
                    <span></span><span></span><span></span><span></span><span></span><span></span><span></span>
                </div>

                <h2 class="wow fadeInUp" data-wow-delay="0.3s">Nuestros servicios</h2>

                <p class="wow fadeInUp" data-wow-delay="0.4s">Ofrecemos servicios de ahorro y crédito que se adaptan a tus necesidades, Somos la mejor opción para respaldar tus sueños.</p>

            </div>

                



            <div class="row">

              

               <div class="col-12 col-sm-6 col-lg-4">

                <!-- Content -->

                    <div class="service_single_content text-center mb-100 wow fadeInUp" data-wow-delay="0.2s">

                        <!-- Icon -->

                        <div class="service_icon">

                            <img src="img/services/1.svg" alt="">

                        </div>

                        <h6>CREDIAPORTES</h6>

                        <p>

                             Esta línea de crédito permite a nuestros asociados acceder hasta una cuantía máxima del 150% del valor de sus Aportes Sociales, la tasa es muy atractiva...

                             <br>

                             <a class="btn btn-link btn-servicio" data-id="1">Detalles</a>

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

                        <h6>CREDITO EDUCATIVO</h6>

                        <p>

                            Por medio de esta línea brindamos una Solución de Financiamiento Educativo a nuestros asociados, cubriendo niveles educativos de Pregrado y Posgrado...

                            <br>

                             <a class="btn btn-link btn-servicio" data-id="2">Detalles</a>

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

                        <h6>CREDITO LIBRE INVERSIÓN</h6>

                        <p>

                            Por medio de esta línea, nuestros asociados pueden acceder a una solución de financiamiento para sus proyectos de Inversión y Consumo...

                            <br>

                            <a class="btn btn-link btn-servicio" data-id="3">Detalles</a>

                        </p>

                    </div>

                </div>

               <div class="col-md-12">

                    <p class="text-center">

                        <a href="servicios" class="text-center text-success">Ver completo</a>

                    </p>

                   

               </div>

            </div>

        </div>

    </section>

    <!-- ##### Our Services Area End ##### -->







    <section class="demo-video feat section-padding-0-100 bub-right">

        <div class="container">

            <div class="section-heading text-center">

                <!-- Dream Dots -->

                <div class="dream-dots justify-content-center fadeInUp" data-wow-delay="0.2s">

                    <span></span><span></span><span></span><span></span><span></span><span></span><span></span>

                </div>

                <h2 class="d-blue fadeInUp" data-wow-delay="0.3s"> Beneficios</h2>

                <p class="fadeInUp" data-wow-delay="0.4s" style="color:#888">

                    Servirle bien y oportunamente, es nuestro mayor objetivo. Afíliese, disponga de múltiples alternativas para el manejo de sus finanzas y disfrute entre otros, de los siguientes beneficios:.</p>

            </div>

            <div class="row align-items-center">

                <!-- Welcome Video Area -->

                <div class="col-lg-6 col-md-12 col-sm-12">

                    <div class="services-block-four mt-s">

                        <div class="inner-box">

                            <div class="icon-img-box">

                            <i class="icon_index fas fa-book" style="color: #03a9f4 !important"></i>

                            </div>

                            <h3><a href="#">REFERENCIAS FINANCIERAS.</a></h3>

                            <div class="text"></div>

                            

                        </div>

                    </div>

                </div>



                <div class="col-lg-6 col-md-12 col-sm-12">

                    <div class="services-block-four mt-s">

                        <div class="inner-box">

                            <div class="icon-img-box" >

                            <i class="icon_index far fa-clock" style="color: #03a9f4"></i>

                            </div>

                            <h3><a href="#">CÓMODOS HORARIOS DE ATENCIÓN.</a></h3>

                            <div class="text"></div>

                            

                        </div>

                    </div>

                </div>





                <div class="col-lg-6 col-md-12 col-sm-12">

                    <div class="services-block-four mt-s">

                        <div class="inner-box">

                            <div class="icon-img-box">

                            <i class="icon_index far fa-handshake" style="color: #ff5722 !important"></i>

                            </div>

                            <h3><a href="#">PROGRAMAS DE SOLIDARIDAD Y EDUCACIÓN.</a></h3>

                            <div class="text"></div>

                            

                        </div>

                    </div>

                </div>



                <div class="col-lg-6 col-md-12 col-sm-12">

                    <div class="services-block-four mt-s">

                        <div class="inner-box">

                            <div class="icon-img-box">

                            <!-- <i class="icon_index fas fa-donate" style="color: #ff5722"></i> -->
                            <i class="icon_index fas fa-award" style="color: #ff5722 "></i>

                            </div>

                            <h3><a href="#">DERECHO A PARTICIPAR EN SORTEOS Y PROMOCIONES.</a></h3>

                            <div class="text"></div>

                            

                        </div>

                    </div>

                </div>



                <div class="col-lg-6 col-md-12 col-sm-12">

                    <div class="services-block-four mt-s">

                        <div class="inner-box">

                            <div class="icon-img-box">

                              <i class="icon_index fas fa-hand-holding-usd" style="color: #ffc107"></i>

                            </div>

                            <h3><a href="#">AMPLIAS Y OPORTUNAS LÍNEAS DE CRÉDITO.</a></h3>

                            <div class="text"></div>

                            

                        </div>

                    </div>

                </div>



                





                <div class="col-lg-6 col-md-12 col-sm-12">

                    <div class="services-block-four mt-s">

                        <div class="inner-box">

                            <div class="icon-img-box">

                            <i class="icon_index fas fa-people-arrows" style="color: #ffc107"></i>

                            </div>

                            <h3><a href="#">SERVICIO PERSONALIZADO.</a></h3>

                            <div class="text"></div>

                            

                        </div>

                    </div>

                </div>



                <div class="col-lg-12 col-md-12 col-sm-12">

                    <div class="services-block-four mt-s row align-items-center justify-content-center">

                        <div class="col-md-7 inner-box ">

                            <div class="icon-img-box">

                            <!-- <i class="icon_index fas fa-award" style="color: #20B2AA "></i> -->

                            </div>

                            <!-- <h3><a href="#">COOSERVICIOS O.C</a></h3> -->

                            <div class="text"></div>

                            

                        </div>

                    </div>

                </div>







            </div>

        </div>

    </section>









    <!-- ##### About Us Area Start ##### -->



    <!-- ##### About Us Area End ##### -->



    <!-- ##### About Us Area Start ##### -->



    <!-- ##### About Us Area End ##### -->

    









    <!-- ##### Subscribe Area start ##### -->



    <!-- ##### Subscribe Area End ##### -->



    <!-- ##### FAQ & Timeline Area Start ##### -->



    <!-- ##### FAQ & Timeline Area End ##### -->





    <!-- ##### Team Area Start ##### -->



    <!-- ##### Team Area End ##### -->



    

    <!-- ##### Blog Area Start ##### -->



    <!-- ##### Blog Area End ##### -->



    <!-- ##### Contact Area Start ##### -->

    <section class="contact_us_area" id="contact">

        <div class="container">

            <div class="row">

                <div class="col-12">

                    <div class="section-heading text-center">

                        <!-- Dream Dots -->

                        <div class="dream-dots justify-content-center wow fadeInUp" data-wow-delay="0.2s">

                            <span></span><span></span><span></span><span></span><span></span><span></span><span></span>

                        </div>

                        <h2 class="wow fadeInUp" data-wow-delay="0.3s">Contáctenos</h2>

                        <p class="wow fadeInUp" data-wow-delay="0.4s">Dejanos tus datos junto con tu solicitud y en breve uno de nuestros asesores se prondra en contacto.</p>

                    </div>

                </div>

            </div>



            <!-- Contact Form -->

            <div class="row justify-content-center">
                <div class="col-md-12 text-center">
                    <?php if(!empty($_SESSION['send'])){
                        echo $_SESSION['send'];
                        unset($_SESSION['send']);
                    } ?>
                </div>

                <div class="col-12 col-md-10 col-lg-8">

                    <div class="contact_form">

                        <form  method="post" id="main_contact_form" novalidate>

                            <div class="row">

                                <div class="col-12">

                                    <div id="success_fail_info"></div>

                                </div>



                                <div class="col-12 col-md-6">

                                    <div class="group wow fadeInUp" data-wow-delay="0.2s">

                                        <input type="text" name="nombres" id="name" required>

                                        <span class="highlight"></span>

                                        <span class="bar"></span>

                                        <label>Nombres</label>

                                    </div>

                                </div>

                                <div class="col-12 col-md-6">

                                    <div class="group wow fadeInUp" data-wow-delay="0.3s">

                                        <input type="text" name="correo" id="email" required>

                                        <span class="highlight"></span>

                                        <span class="bar"></span>

                                        <label>Correo</label>

                                    </div>

                                </div>

                                <div class="col-12">

                                    <div class="group wow fadeInUp" data-wow-delay="0.4s">

                                        <input type="text" name="asunto" id="subject" required>

                                        <span class="highlight"></span>

                                        <span class="bar"></span>

                                        <label>Asunto</label>

                                    </div>

                                </div>

                                <div class="col-12">

                                    <div class="group wow fadeInUp" data-wow-delay="0.5s">

                                        <textarea name="mensaje" id="message" required></textarea>

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



    <!-- ##### Footer Area Start ##### -->

<?php require_once 'layouts/footer.php'; ?>