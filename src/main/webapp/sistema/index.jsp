

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Sys</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="images/favicon.ico" />
  </head>
  <body>
     

      <!-- partial:partials/_navbar.html -->
      <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
         
          <div class="search-field d-none d-md-block">
            <form class="d-flex align-items-center h-100" action="#">
              <div class="input-group">
                <div class="input-group-prepend bg-transparent">
                  <i class="input-group-text border-0 mdi mdi-magnify"></i>
                </div>
                <input type="text" class="form-control bg-transparent border-0" placeholder="Pesquisar por casas">
              </div>
            </form>
          </div>
          <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item nav-profile dropdown">
              <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-bs-toggle="dropdown" aria-expanded="false">
              
                <div class="nav-profile-text">
                </div>
              </a>
              <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
                <a class="dropdown-item" href="#">
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="../login/login.jsp">
                  <i class="mdi mdi-logout me-2 text-primary"></i> Sair </a>
              </div>
            </li>
            <li class="nav-item d-none d-lg-block full-screen-link">
              <a class="nav-link">
                <i class="mdi mdi-fullscreen" id="fullscreen-button"></i>
              </a>
            </li>
           
           
            <li class="nav-item nav-logout d-none d-lg-block">
              <a class="nav-link" href="#">
                <i class="mdi mdi-power"></i>
              </a>
            </li>
            <li class="nav-item nav-settings d-none d-lg-block">
              <a class="nav-link" href="#">
                <i class="mdi mdi-format-line-spacing"></i>
              </a>
            </li>
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
            <li class="nav-item nav-profile">
              <a href="#" class="nav-link">
               
              
                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.jsp">
                <span class="menu-title" style="color: red;">Painel</span>
                <i class="mdi mdi-home menu-icon" style="color: red;"></i>
              </a>
            </li>
            <hr style="margin: 15px;">
            <h4 style="margin-left: 15px;">Cadastros</h4>
            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <span class="menu-title">Membros</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-account-multiple"  style=" font-size: 22px; color: rgb(165, 165, 165);"></i>
              </a>
              <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="fornecedores.jsp">Fornecedores</a></li>
                </ul>
              </div>
            </li>
           
           
            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
                <span class="menu-title">Opções Apartamentos</span>
                <i class="menu-arrow"></i>
                <i class="mdi mdi-medical-bag menu-icon"></i>
              </a>
              <div class="collapse" id="general-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="cidades.jsp"> Cidade </a></li>
                  <li class="nav-item"> <a class="nav-link" href="imoveis.jsp"> Imovel </a></li>
                  <li class="nav-item"> <a class="nav-link" href="apartamento.jsp"> Apartamentos </a></li>
               
                </ul>
              </div>
            </li>
            <hr style="margin: 15px;">
            <h4 style="margin-left: 15px;">Pesquisar</h4>
           
           <li class="nav-item">
              <a class="nav-link" href="../properties.jsp">
                <span class="menu-title">AP no Site</span>
                <i class="mdi mdi-home menu-icon" style="margin-left: 110px; font-size: 22px; color: rgb(165, 165, 165);" ></i>
              </a>
            </li>
           
          </ul>
        </nav>
        <!-- partial -->
           <div class="main-panel">
          <div class="content-wrapper">
            <div class="page-header" >
              <h3 class="page-title">
                <span class="page-title-icon bg-gradient-primary text-white me-2">
                  <i class="mdi mdi-home" style="background: red; padding: 12px; border-radius: 4px;"></i>
                </span> Dashboard
              </h3>
              <nav aria-label="breadcrumb">
                <ul class="breadcrumb">
                  <li class="breadcrumb-item active" aria-current="page">
                    <span></span>Estatísticas Gerais <i class="mdi mdi-alert-circle-outline icon-sm text-primary align-middle"></i>
                  </li>
                </ul>
              </nav>
            </div>
            <div class="row">
              <div class="col-md-4 stretch-card grid-margin" >
                <div class="card bg-gradient-danger card-img-holder text-white" >
                  <div class="card-body" style="background: #ec2c2c; border-radius: 10px;">
                    
                    <h4 class="font-weight-normal mb-3">Vendas Semanais <i class="mdi mdi-chart-line mdi-24px float-right"></i>
                    </h4>
                    <h2 class="mb-5">100.000.00Mts</h2>
                    <h6 class="card-text">Aumento de 19%</h6>
                  </div>
                </div>
              </div>
              <div class="col-md-4 stretch-card grid-margin">
                <div class="card bg-gradient-info card-img-holder text-white">
                  <div class="card-body" style="background: dodgerblue; border-radius: 10px;">
                   
                    <h4 class="font-weight-normal mb-3">Apartamentos Disponiveis <i class="mdi mdi-bookmark-outline mdi-24px float-right"></i>
                    </h4>
                    <h2 class="mb-5">16</h2>
                    <h6 class="card-text">3 Pendentes</h6>
                  </div>
                </div>
              </div>
              <div class="col-md-4 stretch-card grid-margin">
                <div class="card bg-gradient-success card-img-holder text-white">
                  <div class="card-body" style="background: #46c35f; border-radius: 10px;">
                    <h4 class="font-weight-normal mb-3">Agendamentos <i class="mdi mdi-calendar-clock"></i>
                    </h4>
                    <h2 class="mb-5">3</h2>
                    <h6 class="card-text">1 Para Hoje</h6>
                  </div>
                </div>
              </div>
            </div>
           
          
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->
          <footer class="footer">
            <div class="container-fluid d-flex justify-content-between">
              <span class="text-muted d-block text-center text-sm-start d-sm-inline-block">Copyright © </span>
              <span class="float-none float-sm-end mt-1 mt-sm-0 text-end"> Heaven <a href="" target="_blank"></a>  </span>
            </div>
          </footer>
          <!-- partial -->
        </div>
        <!-- main-panel ends -->
      </div>
      <!-- page-body-wrapper ends -->
    </div>
    <!-- container-scroller -->
    <!-- plugins:js -->
    <script src="vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="vendors/chart.js/Chart.min.js"></script>
    <script src="js/jquery.cookie.js" type="text/javascript"></script>
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="js/off-canvas.js"></script>
    <script src="js/hoverable-collapse.js"></script>
    <script src="js/misc.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page -->
    <script src="js/dashboard.js"></script>
    <script src="js/todolist.js"></script>
    <!-- End custom js for this page -->
  </body>
</html>