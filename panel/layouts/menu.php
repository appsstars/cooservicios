<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8" />

<meta name="viewport" content="width=device-width,initial-scale=1" />

<meta http-equiv="X-UA-Compatible" content="ie=edge" />

<title>Dashboard | Cooservicios</title>

<link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet" />

<link href="gull/dist-assets/css/themes/lite-purple.min.css" rel="stylesheet" />

<link href="gull/dist-assets/css/plugins/perfect-scrollbar.min.css" rel="stylesheet" />

<link rel="stylesheet" href="gull/dist-assets/css/plugins/datatables.min.css" />

</head>



<body class="text-left">

<div class="app-admin-wrap layout-sidebar-large">

<div class="main-header">

    <div class="logo">

        <img src="https://www.cooservicios.com.co/panel/images/logo_small.png" alt="">

    </div>

    <div class="menu-toggle">

        <div></div>

        <div></div>

        <div></div>

    </div>

    

    <div style="margin: auto"></div>

    <div class="header-part-right">

        <!-- Full screen toggle -->

        <i class="i-Full-Screen header-icon d-none d-sm-inline-block" data-fullscreen></i>

        <!-- Grid menu Dropdown -->

        <div class="dropdown">

            <i class="i-Safe-Box text-muted header-icon" role="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></i>

            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">

                <div class="menu-icon-grid">

                    <a href="#"><i class="i-Shop-4"></i> Home</a>

                    <a href="#"><i class="i-Library"></i> UI Kits</a>

                    <a href="#"><i class="i-Drop"></i> Apps</a>

                    <a href="#"><i class="i-File-Clipboard-File--Text"></i> Forms</a>

                    <a href="#"><i class="i-Checked-User"></i> Sessions</a>

                    <a href="#"><i class="i-Ambulance"></i> Support</a>

                </div>

            </div>

        </div>

        <!-- Notificaiton -->



        <!-- Notificaiton End -->

        <!-- User avatar dropdown -->

        <div class="dropdown">

            <div class="user col align-self-end">

                <img src="images/avatar.png" id="userDropdown" alt="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">

                    <div class="dropdown-header">

                        <i class="i-Lock-User mr-1"></i> <?php echo $_SESSION['usuario'];?>

                    </div>

                    <a class="dropdown-item" href="salir.php">Salir</a>

                </div>

            </div>

        </div>

    </div>

</div>

<div class="side-content-wrap">

    <div class="sidebar-left open rtl-ps-none" data-perfect-scrollbar="" data-suppress-scroll-x="true">

        <ul class="navigation-left">

            

            <li class="nav-item"><a href="certificaciones" class="nav-item-hold"><i class="nav-icon i-Library"></i><span class="nav-text">Certificaciones</span></a>

                <div class="triangle"></div>

            </li>

            



             <li class="nav-item"><a href="noticias" class="nav-item-hold"><i class="nav-icon i-Library"></i><span class="nav-text">Noticias</span></a>

                <div class="triangle"></div>

            </li>


            <li class="nav-item"><a href="formatos" class="nav-item-hold"><i class="nav-icon i-Library"></i><span class="nav-text">Formatos</span></a>

                <div class="triangle"></div>

            </li>

            

           

            

        </ul>

    </div>

   

    <div class="sidebar-overlay"></div>

</div>