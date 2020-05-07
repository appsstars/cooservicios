<?php 

require '../app/conexion/conexion.php';
ini_set('session.cache_expire', 600);
ini_set('session.gc_maxlifetime', 36000);
ini_set('session.cookie_lifetime',36000);
header('Content-Type: text/html; charset=UTF-8');
header('Expires: Sat, 29 Jun 2019 00:00:00 GMT'); // Aquí estoy poniendo una fecha 2 meses después del día de hoy
session_cache_expire(600);
session_set_cookie_params(36000);
    session_start();
    if(empty($_SESSION['usuario'])){
         echo ' <meta http-equiv="refresh" content="0;url=../login.php">';
    }

 ?>
 <?php 
    $sql = 'SELECT * FROM archivos ORDER BY id DESC';
    $query = mysqli_query($conexion, $sql);
    $rows = mysqli_fetch_all($query, MYSQLI_ASSOC);

  ?>


        <?php require 'layouts/menu.php'; ?>
        <!-- =============== Left side End ================-->
        <div class="main-content-wrap sidenav-open d-flex flex-column">
            <!-- ============ Body content start ============= -->
            <div class="main-content">
                <div class="breadcrumb">
                    <h1>Formatos</h1>
                    <ul>
                        <li><a href="#">Formatos</a></li>
                    </ul>
                </div>
                <div class="separator-breadcrumb border-top"></div>
                
                <!-- end of row-->
                <div class="row mb-4">
                    <div class="col-md-12 mb-4">
                        <div class="card text-left">
                            <div class="card-body">
                                <h4 class="card-title mb-3">Formatos</h4>
                                <p>Formatos de vinculaciones y lineas de credito.</p>
                                <div class="table-responsive">
                                    <table class="display table table-striped table-bordered" id="zero_configuration_table" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Nombre/Razon social</th>
                                                <th>Documento/Nit</th>
                                                <th>Archivos</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($rows as $key => $value) { ?>
                                                <tr>
                                                    <td> <?php echo $key; ?> </td>
                                                    <td> <?php echo $value['nombres']; ?> </td>
                                                    <td> <?php echo $value['documento']; ?> </td>
                                                    <td>
                                                        <?php 
                                                           $data =  explode(',', $value['url']);
                                                           foreach ($data as $key => $file) { ?>
                                                               <a href="../docs/formatos/uploads/<?php echo $file; ?>" download="../docs/formatos/uploads/<?php echo $file; ?>"> <?php echo $file; ?> </a> <br>
                                                       <?php    }
                                                         ?> </td>
                                                </tr>
                                            <?php } ?>
                                        </tbody>
                                        <tfoot>
                                            
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end of row-->
                <!-- end of main-content -->
            </div><!-- Footer Start -->
            <div class="flex-grow-1"></div>
            <div class="app-footer">

                <div class="footer-bottom border-top pt-3 d-flex flex-column flex-sm-row align-items-center">
                   
                    <span class="flex-grow-1"></span>
                    <div class="d-flex align-items-center">
                        <img class="logo" src="https://www.cooservicios.com.co/panel/images/logo_small.png" alt="">
                        <div>
                            <p class="m-0">Desarrollado by Apps Stars <a href="https://www.appsstars.com.co">App Stars</a></p>
                            <p class="m-0">Todos los derechos reservados</p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- fotter end -->
        </div>
    </div><!-- ============ Search UI Start ============= -->
    <div class="search-ui">
        <div class="search-header">
            <img src="gull/dist-assets/images/logo.png" alt="" class="logo">
            <button class="search-close btn btn-icon bg-transparent float-right mt-2">
                <i class="i-Close-Window text-22 text-muted"></i>
            </button>
        </div>
        <input type="text" placeholder="Type here" class="search-input" autofocus>
        <div class="search-title">
            <span class="text-muted">Search results</span>
        </div>
        <div class="search-results list-horizontal">
            <div class="list-item col-md-12 p-0">
                <div class="card o-hidden flex-row mb-4 d-flex">
                    <div class="list-thumb d-flex">
                        <!-- TUMBNAIL -->
                        <img src="gull/dist-assets/images/products/headphone-1.jpg" alt="">
                    </div>
                    <div class="flex-grow-1 pl-2 d-flex">
                        <div class="card-body align-self-center d-flex flex-column justify-content-between align-items-lg-center flex-lg-row">
                            <!-- OTHER DATA -->
                            <a href="#" class="w-40 w-sm-100">
                                <div class="item-title">Headphone 1</div>
                            </a>
                            <p class="m-0 text-muted text-small w-15 w-sm-100">Gadget</p>
                            <p class="m-0 text-muted text-small w-15 w-sm-100">$300
                                <del class="text-secondary">$400</del>
                            </p>
                            <p class="m-0 text-muted text-small w-15 w-sm-100 d-none d-lg-block item-badges">
                                <span class="badge badge-danger">Sale</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="list-item col-md-12 p-0">
                <div class="card o-hidden flex-row mb-4 d-flex">
                    <div class="list-thumb d-flex">
                        <!-- TUMBNAIL -->
                        <img src="gull/dist-assets/images/products/headphone-2.jpg" alt="">
                    </div>
                    <div class="flex-grow-1 pl-2 d-flex">
                        <div class="card-body align-self-center d-flex flex-column justify-content-between align-items-lg-center flex-lg-row">
                            <!-- OTHER DATA -->
                            <a href="#" class="w-40 w-sm-100">
                                <div class="item-title">Headphone 1</div>
                            </a>
                            <p class="m-0 text-muted text-small w-15 w-sm-100">Gadget</p>
                            <p class="m-0 text-muted text-small w-15 w-sm-100">$300
                                <del class="text-secondary">$400</del>
                            </p>
                            <p class="m-0 text-muted text-small w-15 w-sm-100 d-none d-lg-block item-badges">
                                <span class="badge badge-primary">New</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="list-item col-md-12 p-0">
                <div class="card o-hidden flex-row mb-4 d-flex">
                    <div class="list-thumb d-flex">
                        <!-- TUMBNAIL -->
                        <img src="gull/dist-assets/images/products/headphone-3.jpg" alt="">
                    </div>
                    <div class="flex-grow-1 pl-2 d-flex">
                        <div class="card-body align-self-center d-flex flex-column justify-content-between align-items-lg-center flex-lg-row">
                            <!-- OTHER DATA -->
                            <a href="#" class="w-40 w-sm-100">
                                <div class="item-title">Headphone 1</div>
                            </a>
                            <p class="m-0 text-muted text-small w-15 w-sm-100">Gadget</p>
                            <p class="m-0 text-muted text-small w-15 w-sm-100">$300
                                <del class="text-secondary">$400</del>
                            </p>
                            <p class="m-0 text-muted text-small w-15 w-sm-100 d-none d-lg-block item-badges">
                                <span class="badge badge-primary">New</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="list-item col-md-12 p-0">
                <div class="card o-hidden flex-row mb-4 d-flex">
                    <div class="list-thumb d-flex">
                        <!-- TUMBNAIL -->
                        <img src="gull/dist-assets/images/products/headphone-4.jpg" alt="">
                    </div>
                    <div class="flex-grow-1 pl-2 d-flex">
                        <div class="card-body align-self-center d-flex flex-column justify-content-between align-items-lg-center flex-lg-row">
                            <!-- OTHER DATA -->
                            <a href="#" class="w-40 w-sm-100">
                                <div class="item-title">Headphone 1</div>
                            </a>
                            <p class="m-0 text-muted text-small w-15 w-sm-100">Gadget</p>
                            <p class="m-0 text-muted text-small w-15 w-sm-100">$300
                                <del class="text-secondary">$400</del>
                            </p>
                            <p class="m-0 text-muted text-small w-15 w-sm-100 d-none d-lg-block item-badges">
                                <span class="badge badge-primary">New</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- PAGINATION CONTROL -->
        <div class="col-md-12 mt-5 text-center">
            <nav aria-label="Page navigation example">
                <ul class="pagination d-inline-flex">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                            <span class="sr-only">Previous</span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                            <span class="sr-only">Next</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- ============ Search UI End ============= -->
    <script src="gull/dist-assets/js/plugins/jquery-3.3.1.min.js"></script>
    <script src="gull/dist-assets/js/plugins/bootstrap.bundle.min.js"></script>
    <script src="gull/dist-assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="gull/dist-assets/js/scripts/script.min.js"></script>
    <script src="gull/dist-assets/js/scripts/sidebar.large.script.min.js"></script>
    <script src="gull/dist-assets/js/plugins/datatables.min.js"></script>
    <script src="gull/dist-assets/js/scripts/datatables.script.min.js"></script>
</body>


<!-- Mirrored from demos.ui-lib.com/gull/html/layout1/datatables.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 25 Mar 2020 21:43:45 GMT -->
</html>