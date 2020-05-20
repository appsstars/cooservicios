<?php require_once 'layouts/header.php'; ?>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Welcome Area Start ##### -->
    <div class="cabezera_servicios" data-options='{direction: "normal"}'>
        <div class="divimage dzsparallaxer--target" style="background-image: url(img/normatividad/normatividad.jpg);background-position:top; width:101%; height:600px; background-repeat:no-repeat"></div>
        <div class="breadcumb-content">

            <div class="container h-100">

                <div class="row h-100">

                    <div class="col-12" style="margin-top:350px">

                        <nav aria-label="breadcrumb" class="breadcumb--con text-center">

                            <h2 class="w-text title wow fadeInUp" data-wow-delay="0.2s" style="color: #ffff !important; font-weight: bold;font-size: 45px">Normatividad</h2>

                            <ol class="breadcrumb justify-content-center wow fadeInUp" data-wow-delay="0.4s" >

                                <li class="breadcrumb-item" ><a href="index.php" style="color: #00a8ff">Inicio</a></li>

                                <li class="breadcrumb-item active" aria-current="page" style="color: #00a8ff">Servicios</li>

                            </ol>

                        </nav>

                    </div>

                </div>

            </div>

        </div>
    </div>
    <!-- ##### Welcome Area End ##### -->

    <!-- ##### Our Services Area Start ##### -->

    <style>
        .leyes {
        padding: 3px 10px;
        border: #00b38f 5px double;
        border-top-left-radius: 20px;
        border-bottom-right-radius: 20px;
        font-size: 13px;
        text-align: justify;
    }
    .circulares{
        padding: 3px 10px;
        border: #e67c03 5px double;
        border-top-left-radius: 20px;
        border-bottom-right-radius: 20px;
        font-size: 13px;
        text-align: justify;
    }
    </style>

<section class="our_services_area section-padding-100-70 clearfix" id="normatividad">
    <div class="container">
        
        <div class="section-heading text-center">
            <!-- Dream Dots -->

                        <h2 class="wow fadeInUp" data-wow-delay="0.3s">Normatividad</h2>
            <p class="wow fadeInUp" data-wow-delay="0.4s"></p>
            <div class="dream-dots justify-content-center wow fadeInUp" data-wow-delay="0.2s">
                <span></span><span></span><span></span><span></span><span></span><span></span><span></span>
            </div>

        </div>

            <?php 
                //imprimir nombres de etiquetas categoria
                $resoluciones = scandir('docs/resoluciones');
                unset($resoluciones[0]); 
                unset($resoluciones[1]);
             ?>
            

        <div class="row">
                <div class="col-xs-12 col-md-4">
                    <div class="leyes">
                        <h3>Ley</h3>
                      <img src="img/iconos/check-square.png" style="max-width: 30px" alt="">  <a href="docs/resoluciones/ley/LEY 454 DE 1998.pdf" target="_blank">LEY 454 DE 1998</a> <br>
                      <img src="img/iconos/check-square.png" style="max-width: 30px" alt="">  <a href="docs/resoluciones/ley/LEY 79 DE 1988.pdf" target="_blank">LEY 79 DE 1988</a>
                    </div>
                 </div>

                 <div class="col-xs-12 col-md-8">
                    <div class="circulares">
                        <h3>Circulares</h3>
                      <img src="img/iconos/check-square.png" style="max-width: 30px" alt="">  <a href="docs/resoluciones/circular/CIRCULAR BASICA CONTABLE SES.pdf" target="_blank">CIRCULAR BASICA CONTABLE SES</a> <br>
                      <img src="img/iconos/check-square.png" style="max-width: 30px" alt="">  <a href="docs/resoluciones/circular/circular_basica_juridica_supersolidaria_2015 (SIPLAFT).pdf" target="_blank">circular_basica_juridica_supersolidaria_2015</a>
                    </div>
                 </div>
                 <br>

                 <div class="col-xs-12 col-md-5" style="margin-top: 50px">
                    <div class="circulares">

                        <h3>Resoluciones superintendencia</h3>
                      <img src="img/iconos/check-square.png" style="max-width: 30px" alt="">  <a href="docs/resoluciones/res/super/RES 2019200002375-ABRIL 12 DE 2019-LEVANTAMIENTO SUSPENCIÓN DE PAGOS.pdf" target="_blank">RES 2019200002375-ABRIL 12 DE 2019-LEVANTAMIENTO SUSPENCIÓN DE PAGOS</a> <br>
                      <img src="img/iconos/check-square.png" style="max-width: 30px" alt="">  <a href="docs/resoluciones/res/super/RES 2019200003785-JULIO 22 2019-ADMINISTRACIÓN.pdf" target="_blank">RES 2019200003785-JULIO 22 2019-ADMINISTRACIÓN</a> <br>
                      <img src="img/iconos/check-square.png" style="max-width: 30px" alt="">  <a href="docs/resoluciones/res/super/RES 2019200005865-NOVIEMBRE 18 2019-NOMBRAMIENTO DR ANDRES ORDOÑEZ.pdf" target="_blank">RES 2019200005865-NOVIEMBRE 18 2019-NOMBRAMIENTO DR ANDRES ORDOÑEZ</a> <br>
                       <img src="img/iconos/check-square.png" style="max-width: 30px" alt="">  <a href="docs/resoluciones/res/super/RES 2020220003325 - MARZO 11 2020 SEGUNDA DEV. PARCIAL AHORRADORES.pdf" target="_blank">RES 2020220003325 - MARZO 11 2020 SEGUNDA DEV. PARCIAL AHORRADORES</a> <br>

                    </div>
                 </div>

                 <div class="col-xs-12 col-md-7" style="margin-top: 50px">
                    <div class="leyes">
                      <h3>Resoluciones agente especial</h3>
                      <img src="img/iconos/check-square.png" style="max-width: 30px" alt=""><a href="docs/resoluciones/res/RES 001-ABRIL 10 2019-INVENTARIO DEPOSITO Y EXIGIBLES.pdf" target="_blank">RES 001-ABRIL 10 2019-INVENTARIO DEPOSITO Y EXIGIBLES</a> <br>

                       <img src="img/iconos/check-square.png" style="max-width: 30px" alt=""><a href="docs/resoluciones/res/RES 002-MAYO 2 2019-RESTITUCIÓN DE PAGOS A AHORRADORES INF 6MM.pdf" target="_blank">RES 002-MAYO 2 2019-RESTITUCIÓN DE PAGOS A AHORRADORES INF 6MM</a> <br>
                        
                        <img src="img/iconos/check-square.png" style="max-width: 30px" alt=""><a href="docs/resoluciones/res/RES 003-MAYO 24 2019-INVENTARIO ACTIVOS Y APORTES SOCIALES.pdf" target="_blank">RES 003-MAYO 24 2019-INVENTARIO ACTIVOS Y APORTES SOCIALES.pdf</a> <br>

                        <img src="img/iconos/check-square.png" style="max-width: 30px" alt=""><a href="docs/resoluciones/res/RES 004-JULIO 4 2019-REPROGRAMACION PAGOS  A AHORRADORES Y DEPOSITANTES.pdf" target="_blank">RES 004-JULIO 4 2019-REPROGRAMACION PAGOS  A AHORRADORES Y DEPOSITANTES</a> <br>

                        <img src="img/iconos/check-square.png" style="max-width: 30px" alt=""><a href="docs/resoluciones/res/RES 005-JULIO 15 2019-RESUELVE UN RECURSO.pdf" target="_blank">RES 005-JULIO 15 2019-RESUELVE UN RECURSO</a> <br>

                        <img src="img/iconos/check-square.png" style="max-width: 30px" alt=""><a href="docs/resoluciones/res/RES 006-AGOSTO 5 2019-SE ADICIONA RES 003.pdf" target="_blank">RES 006-AGOSTO 5 2019-SE ADICIONA RES 003</a> <br>

                        <img src="img/iconos/check-square.png" style="max-width: 30px" alt=""><a href="docs/resoluciones/res/RES 007 SOLA-8 NOV 2019-SEG RESTITUCIÓN DE PAGOS.pdf" target="_blank">RES 007 SOLA-8 NOV 2019-SEG RESTITUCIÓN DE PAGOS</a> <br>
                        
                        <img src="img/iconos/check-square.png" style="max-width: 30px" alt=""><a href="docs/resoluciones/res/RES 007-NOV 8  2019- SEG RESTITUCIÓN PAGOS.pdf" target="_blank">RES 007-NOV 8  2019- SEG RESTITUCIÓN PAGOS.pdf</a> <br>

                    </div>
                 </div>
        </div>



        </div>
    </div>
</section>
    <!-- ##### Our Services Area End ##### -->

    <!-- ##### Our features Area start ##### -->
    <section class="features section-padding-100" style="display: none;">

        <div class="section-heading text-center">
            <!-- Dream Dots -->
            <div class="dream-dots justify-content-center wow fadeInUp" data-wow-delay="0.2s">
                <span></span><span></span><span></span><span></span><span></span><span></span><span></span>
            </div>
            <h2 class="wow fadeInUp" data-wow-delay="0.3s">Our Mobile Application</h2>
            <p class="wow fadeInUp" data-wow-delay="0.4s">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed quis accumsan nisi Ut ut felis congue nisl hendrerit commodo.</p>
        </div>

        <div class="container-fluid">
            <div class="row">
                <div class="services-column col-lg-5 col-lg-offset-1 col-md-10 offset-md-1 col-xs-10 offset-xs-1">
                    <!--Services Block Four-->
                    <div class="services-block-four">
                        <div class="inner-box">
                            <div class="icon-box">
                                <span class="icon ti-mobile"></span>
                            </div>
                            <h3><a href="#">Powerfull Mobile and Online App</a></h3>
                            <div class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium modi assumenda beatae provident non hic eum dolores natus, vitae, quae, facere perferendis quas tempore. Consequuntur commodi facilis sed similique.</div>
                            
                        </div>
                    </div>

                    <!--Services Block Four-->
                    <div class="services-block-four">
                        <div class="inner-box">
                            <div class="icon-box">
                                <span class="icon ti-widget"></span>
                            </div>
                            <h3><a href="#">Brings more Transparency and Speed</a></h3>
                            <div class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Obcaecati aut repudiandae harum, fugit, necessitatibus veritatis molestias a eligendi distinctio. Nostrum expedita deserunt maiores adipisci.</div>
                        </div>
                    </div>
                    
                    <!--Services Block Four-->
                    <div class="services-block-four" style="margin-bottom:0">
                        <div class="inner-box">
                            <div class="icon-box">
                                <span class="icon ti-settings"></span>
                            </div>
                            <h3><a href="#">Special for Multiple Use Capabilities</a></h3>
                            <div class="text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia maiores, ducimus animi a. Nulla ab dolor doloribus, aperiam, quam dolorum dicta vitae tempora, vero at quod error alias incidunt quidem.</div>
                        </div>
                    </div>
                    
                </div>
                <div class="service-img-wrapper col-lg-6 col-md-12 col-sm-12">
                    <div class="image-box">
                        <img src="img/phone.png" class="center-block img-responsive phone-img" alt="">
                        <img src="img/core-img/rings-bg.png" class="center-block img-responsive rings " alt="">
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- ##### Footer Area Start ##### -->
<?php require_once 'layouts/footer.php'; ?>