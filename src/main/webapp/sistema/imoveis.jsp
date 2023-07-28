<%@ page import="dao.ImovelDao"%>
<%@page import="model.ImovelModel"%>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>sys</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <!-- End Plugin css for this page -->
    <!-- inject:css -->
    <!-- endinject -->
    <!-- Layout styles -->
    <link rel="stylesheet" href="css/style.css">
    <!-- End layout styles -->
    <link rel="shortcut icon" href="images/favicon.ico" />
     <script type="text/javascript">
    function confirmarExclusao(codigo, nome){
    	if(confirm('Desejas excluir o imóvel '+nome+'?')){
    		
    		location.href='../ImovelServletA?acao=deletar&codigo='+codigo;
    	}
    }
    
    </script>
  </head>
  <body>
    <div class="container-scroller">
    
      <!-- partial:partials/_navbar.html -->
      <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
       
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
                <span class="menu-title">Painel</span>
                <i class="mdi mdi-home menu-icon"></i>
              </a>
            </li>
            <hr style="margin: 15px;">
            <h4 style="margin-left: 15px;">Cadastros</h4>
            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                <span class="menu-title">Membros</span>
                <i class="menu-arrow" ></i>
                <i class="mdi mdi-account-multiple"  style=" font-size: 22px;"></i>
              </a>
              <div class="collapse" id="ui-basic">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="fornecedores.jsp" >Fornecedores</a></li>
                </ul>
              </div>
            </li>
           
           
            <li class="nav-item">
              <a class="nav-link" data-bs-toggle="collapse" href="#general-pages" aria-expanded="false" aria-controls="general-pages">
                <span class="menu-title"  style="color: red;">Opções Apartamentos</span>
                <i class="menu-arrow"  style="color: red;"></i>
                <i class="mdi mdi-medical-bag menu-icon"  style="color: red;"></i>
              </a>
              <div class="collapse" id="general-pages">
                <ul class="nav flex-column sub-menu">
                  <li class="nav-item"> <a class="nav-link" href="cidades.jsp"  > Cidades </a></li>
                  
                  <li class="nav-item"> <a class="nav-link" href="imoveis.jsp" style="color: red;"> Imóveis </a></li>
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
            <div class="page-header">
              <h3 class="page-title"> Imóveis </h3>
           <a href="../inseririmovel/inserirImovelA.jsp"><button type="button" class="btn btn-gradient-info btn-fw" style="background: red;">Novo Imóvel</button></a>
            </div>
            <div class="col-lg-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body" style="padding: 7px; left:5px; margin:3px; width: 90%; font-size:10px;">
                 
                  <br>
                   <table class="table table-bordered" >
                    <thead>
                      <tr>
                            <th>#</th>
                        <th>Nome</th>
                        <th>NomeAbrev</th>
                        <th>Endereço</th>
                        <th>Email</th>
                        <th>Telefone</th>
                        <th>Fornecedor</th>
                        <th>Cidade</th>
                        <th>Acção</th>
                      </tr>
                    </thead>
                     <% 
                    	ArrayList<ImovelModel> lista = new ArrayList<ImovelModel>();
                    
                    	try{
                    		ImovelDao iDao = new ImovelDao();
                    		lista = iDao.getLista();
                    	}catch(Exception e){
                    		out.print(e);
                    	}
                    	for(ImovelModel i:lista){
                    %>
                    <tbody>
                      <tr>
                         <th><%=i.getIdimovel() %></th>
                        <td><%=i.getNome() %></td>
                        
                        <td><%=i.getNomeAbreviado() %></td>
                        <td><%=i.getEndereco() %></td>
                        <td><%=i.getEmail() %></td>
                        <td><%=i.getTelefone() %></td>
                        <td><%=i.getfChave() %></td>
                        <td><%=i.getcChave() %></td>
                        <th class="valores"><a href="../ImovelServletA?acao=alterar&codigo=<%=i.getIdimovel() %>" class="atualiza"><i class="mdi mdi-rename-box" style="color:red; border:none; margin-right:10px" ></i></a>
                      <button class="exclui" onclick="confirmarExclusao(<%= i.getIdimovel() %>, '<%= i.getNome() %>')" style="border:none;"><i class="mdi mdi-delete-forever" style="color:red; border:none;" ></i></button></th>
                  
                      </tr>
                      
                    </tbody>
                    <% } %>
                  </table>
                </div>
              </div>
            </div>
      
      
          <!-- content-wrapper ends -->
          <!-- partial:../../partials/_footer.html -->
          <footer class="footer">
            <div class="container-fluid d-flex justify-content-between">
              <span class="text-muted d-block text-center text-sm-start d-sm-inline-block">Copyright © </span>
              <span class="float-none float-sm-end mt-1 mt-sm-0 text-end"> Osvaldo Achar <a href="#" target="_blank"></a> </span>
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
    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="js/off-canvas.js"></script>
    <script src="js/hoverable-collapse.js"></script>
    <script src="js/misc.js"></script>
    <!-- endinject -->
  </body>
</html>