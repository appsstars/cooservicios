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



 ?>

 

<?php require_once 'layouts/header.php'; ?>

   <div class="breadcumb-area clearfix dzsparallaxer auto-init" data-options='{direction: "normal"}'>

        <div class="divimage dzsparallaxer--target" style="width: 101%; height: 130%; background-image: url(img/images/anexos.jpg)"></div>

        <!-- breadcumb content -->

        <div class="breadcumb-content">

            <div class="container h-100">

                <div class="row h-100 align-items-center">

                    <div class="col-12">

                        <nav aria-label="breadcrumb" class="breadcumb--con text-center">

                            <h2 class="w-text title wow fadeInUp" data-wow-delay="0.2s">ANEXOS</h2>

                            <ol class="breadcrumb justify-content-center wow fadeInUp" data-wow-delay="0.4s">

                                <li class="breadcrumb-item"><a href="Iindex">Inicio</a></li>

                                <li class="breadcrumb-item active" aria-current="page">Anexos</li>

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

        <section class="contact_us_area" id="section-anexos">

              <div class="row banner-anexs">



            <!-- Start Slider Area -->

              <div class="container">

                     <div class="section-heading text-center">

                      <!-- Dream Dots -->

                      <div class="dream-dots justify-content-center wow fadeInUp" data-wow-delay="0.2s">

                          <span></span><span></span><span></span><span></span><span></span><span></span><span></span>

                      </div>

                      <h2 class="wow fadeInUp" data-wow-delay="0.3s">Anexo de Documentos</h2>

                      <p class="wow fadeInUp" data-wow-delay="0.4s">Adjunte el anexo junto con una certificación bancaria.</p>

                  </div>

                  <div class="col-md-12">

                    <div class="row">
                      <div class="col-md-12">
                        
                    <?php 

                      if(!empty($_SESSION['success'])){ ?>

                    

                          <div class="alert alert-success alert-dismissible">

                              <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>

                              <strong>Mensaje!</strong> <?php echo $_SESSION['success']; ?>.
                              <?php 
                                  unset($_SESSION['success']);
                               ?>

                            </div>

                      <?php }

                      ?>
                      </div>

                      <div class="col-md-12">

                        <h4 class="page-header">Pasos</h4>

                      </div>

                        <div class="col-md-4">

                            1. Descargue el anexo y rellene todos los campos. <a href="docs/ANEXO-2-FORMATO-DE-TRANSFERENCIA ELECTRONICA.docx" download="docs/ANEXO-2-FORMATO-DE-TRANSFERENCIA ELECTRONICA.docx">Descargar</a>

                        </div>

                        <div class="col-md-4">

                          2. Descargue la certificacion bancaria en su banca virtual.

                        </div>

                        <div class="col-md-4">

                          3. Suba los dos archivos en el siguiente formulario.

                        </div>

                      </div>

                   </div>



                  <div class="col-md-12">

                      <div class="form-anexos">


                          <form action="app/controller/anexo-controller.php" method="POST" enctype="multipart/form-data">

                              <div class="row">

                                <div class="col-md-6">

                                    <div class="form-group">

                                      Nombres y/o Razón Social 

                                      <input type="text" class="form-control" name="nombres" placeholder="Nombres y apellidos" required="required">

                                    </div>

                                    <div class="form-group">

                                      Documento y/o NIT

                                      <input type="text" class="form-control" name="documento" placeholder="Documento" required="required">

                                    </div> 

                                  </div>



                                <div class="col-md-6">

                                    <div class="form-group">

                                      Certificación bancaria

                                      <input type="file" class="form-control" name="certificacion" required="required">

                                    </div>

                                    <div class="form-group">

                                      Anexo

                                      <input type="file" class="form-control" name="anexo"  required="required">

                                    </div>

                                </div>



                                <div class="col-md-12">

                                    <button type="submit" class="btn btn-success">Enviar</button>

                                  </div>

                                </div>

                              </div>

                              

                          

                          </form>

                        </div>

                  </div>    

              </div>

          

          <!-- End Slider Area -->

        </section>











        <div class="sh-bg">

    <!-- ##### Our Services Area Start ##### -->

        <section class="section-formatos">

              <div class="row banner-anexs">



            <!-- Start Slider Area -->

              <div class="container">

                     <div class="section-heading text-center">

                      <!-- Dream Dots -->

                      <div class="dream-dots justify-content-center wow fadeInUp" data-wow-delay="0.2s">

                          <span></span><span></span><span></span><span></span><span></span><span></span><span></span>

                      </div>

                      <h2 class="wow fadeInUp" data-wow-delay="0.3s">Formatos</h2>

                      <p class="wow fadeInUp" data-wow-delay="0.4s">Adjunte los formularios de vinculacion o lineas de credito segun su necesidad.</p>

                  </div>

                  <div class="col-md-12">
                    <form action="formatos.php" method="post" enctype="multipart/form-data">
                        <div class="row">     

                            <div class="col-md-3">

                              <div class="form-group">

                                <span>Razon social / nombres</span>

                                <input type="text" name="nombres"  class="form-control" >

                              </div>

                            </div>

                            <div class="col-md-3">

                              <div class="form-group">

                                <span>Nit / Documento</span>

                                <input type="text" name="documento"  class="form-control">

                              </div>

                            </div>

                            <div class="col-md-3">

                              <a href="docs/formatos/Anexo 5 Vinculacion.xlsx" download="docs/formatos/Anexo 5 Vinculacion.xlsx"  >Anexo vinculación</a> <br> <input type="file" name="archivo[]">

                            </div>

                            <div class="col-md-3">

                              <a href="docs/formatos/AUTORIZACION CONSULTA CENTRALES.xlsx" download="docs/formatos/AUTORIZACION CONSULTA CENTRALES.xlsx"  >Autorizacion consulta centrales</a> <br> <input type="file" name="archivo[]">

                            </div>

                             <div class="col-md-3">

                              <a href="docs/formatos/COMPROMISO DE APORTE.docx" download="docs/formatos/COMPROMISO DE APORTE.docx"  >Compromiso de aporte</a> <br> <input type="file" name="archivo[]">

                            </div>



                             <div class="col-md-3">

                              <a href="docs/formatos/formulario credito cooservicio .pdf" download="docs/formatos/formulario credito cooservicio .pdf"  >Formulario credito</a> <br> <input type="file" name="archivo[]">

                            </div>



                             <div class="col-md-3">

                              <a href="docs/formatos/FORMULARIO DE NO DECLARANTE.pdf" download="docs/formatos/FORMULARIO DE NO DECLARANTE.pdf">Formulario de no declarante</a> <br> <input type="file" name="archivo[]">

                            </div>



                             <div class="col-md-3">

                              <a href="docs/formatos/LINKS PARA SERVICIOS.xlsx" download="docs/formatos/LINKS PARA SERVICIOS.xlsx"  >Links servicios</a> <br> <input type="file" name="archivo[]">

                            </div>

                            <div class="col-md-12">
                            	<div class="form-group">
                            		<div class="clearfix"></div>
                            		<button type="submit" class="btn btn-outline-success">Enviar</button>
                            	</div>
                            </div>



                          </div>

                    </form>

                      
                   </div>



                    

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