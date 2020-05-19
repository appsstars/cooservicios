<?php 
    session_start();
    
 ?>
<?php require_once 'layouts/header.php'; ?>




<?php
if(!empty($_POST['correo'])){
    ini_set( 'display_errors', 1 );
    error_reporting( E_ALL );
    $message  = "
    Tipo:  ".$_POST['tipo']."
       Nombres:  ".$_POST['nombres']."
       Correo: ".$_POST['correo']."
       Asunto:".$_POST['asunto']."
      Mensaje:".$_POST['mensaje']."
    ";

    $from = "contacto@cooservicios.com.co";
    $to = "informacion@cooservicios.com.co";
    $subject = "Formulario de contacto - PQRS";
    $headers = "From:" . $from;
    mail($to,$subject,$message, $headers);
    $_SESSION['send'] = "Mensaje enviado con exito.";

}
    
?>


    <div class="cabezera_pqrs" data-options='{direction: "normal"}'>
        <div class="divimage dzsparallaxer--target" style="background-image: url(img/pqrs/1.1.jpg);background-position:center; width:101%; height:550px; background-repeat:no-repeat"></div>
        <div class="breadcumb-content">

            <div class="container h-100">

                <div class="row h-100">

                    <div class="col-12" style="margin-top:350px">

                        <nav aria-label="breadcrumb" class="breadcumb--con text-center">

                            <h2 class="w-text title wow fadeInUp" data-wow-delay="0.2s" style="color: #fff !important; font-weight: bold;font-size: 50px !important">PQRS</h2>

                            <ol class="breadcrumb justify-content-center wow fadeInUp" data-wow-delay="0.4s" >

                                <li class="breadcrumb-item" ><a href="index.php" style="color: #00a8ff">Inicio</a></li>

                                <li class="breadcrumb-item active" aria-current="page" style="color: #00a8ff">PQRS</li>

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



        <section class="contact_us_area" id="contact" style="margin-top: 30px">

        <div class="container">

            <div class="row">

                <div class="col-12">

                    <div class="section-heading text-center">

                        <!-- Dream Dots -->

                        <div class="dream-dots justify-content-center wow fadeInUp" data-wow-delay="0.2s">

                            <span></span><span></span><span></span><span></span><span></span><span></span><span></span>

                        </div>

                        <h2 class="wow fadeInUp" data-wow-delay="0.3s">Peticiones, Quejas, Recursos y Sujerencias</h2>

                        <p class="wow fadeInUp" data-wow-delay="0.4s">Deje su (PQRS) y en breve la estaremos revisando.</p>

                    </div>

                </div>

            </div>



            <!-- Contact Form -->

            <div class="row justify-content-center">

                <div class="col-12 col-md-10 col-lg-8">

                    <div class="contact_form">

                        <form action="#" method="post" id="main_contact_form" novalidate>

                            <div class="row">

                                <div class="col-md-12 text-center">
                                     <?php if(!empty($_SESSION['send'])){
                                        echo $_SESSION['send'];
                                        unset($_SESSION['send']);
                                    } ?>
                                </div>



                                <div class="col-12 col-md-6">

                                    <div class="group wow fadeInUp" data-wow-delay="0.2s">

                                        <select name="tipo" id="" class="form-control">

                                            <option ></option>

                                            <option value="peticion">Petición</option>

                                            <option value="queja">Queja</option>

                                            <option value="recurso">Recursos</option>

                                            <option value="sugerencia">Sujerencias</option>

                                        </select>

                                        <label>Tipo</label>

                                    </div>

                                </div>





                                 <div class="col-12 col-md-6">

                                    <div class="group wow fadeInUp" data-wow-delay="0.3s">

                                        <input type="text" name="nombres" id="nombres" required>

                                        <span class="highlight"></span>

                                        <span class="bar"></span>

                                        <label>Nombres</label>

                                    </div>

                                </div>





                                <div class="col-12 col-md-6">

                                    <div class="group wow fadeInUp" data-wow-delay="0.3s">

                                        <input type="email" name="correo" id="email" required>

                                        <span class="highlight"></span>

                                        <span class="bar"></span>

                                        <label>Correo</label>

                                    </div>

                                </div>

                                <div class="col-6">

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





















        <div class="section-heading text-center">

                        </div>

                    </div>

                    

                    <!--Services Block Four-->

                    

                </div>

                

            </div>

        </div>

    </section>

    <!-- ##### Our features Area End ##### -->

    </div>



    <!-- ##### Subscribe Area start ##### -->

    



    <!-- ##### FAQ & Timeline Area End ##### -->





    <!-- ##### Team Area Start ##### -->

    <!-- ##### Team Area End ##### -->



    

    <!-- ##### Blog Area Start ##### -->

   

    <!-- ##### Blog Area End ##### -->



    <!-- ##### Contact Area Start ##### -->



    <!-- ##### Contact Area End ##### -->



    <!-- ##### Footer Area Start ##### -->

<?php require_once 'layouts/footer.php'; ?>