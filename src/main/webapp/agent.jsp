<%@ page import="dao.FornecedorDAO"%>
<%@page import="model.FornecedorModel"%>
<%@page import="java.util.ArrayList" %>

<jsp:include page="cabecalho.jsp" /> 
    
    <section class="hero-wrap hero-wrap-2 ftco-degree-bg js-fullheight" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="overlay-2"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5 mb-5 text-center">
            <h1 class="mb-3 bread" style="color: red;">Fornecedores</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Inicio <i class="ion-ios-arrow-forward"></i></a></span> <span>Fornecedores <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section ftco-agent">
    	<div class="container">
        <div class="row">
         <% 
                    	ArrayList<FornecedorModel> lista = new ArrayList<FornecedorModel>();
                    
                    	try{
                    		FornecedorDAO fDao = new FornecedorDAO();
                    		lista = fDao.getLista();
                    	}catch(Exception e){
                    		out.print(e);
                    	}
                    	for(FornecedorModel f:lista){
                    %>
        	<div class="col-md-3 ftco-animate">
        		<div class="agent">
    					<div class="img">
		    				<img src="fotos/fotofornecedor/<%=f.getImagem()%>" class="img-fluid" >
	    				</div>
	    				<div class="desc">
	    					<h3><a href="properties.jsp" style="color: red;"><%=f.getNome() +" "+ f.getApelido()%></a></h3>
								<p class="h-info">Email: <span class="details" style="color: red;"><%=f.getEmail() %></span></p>
								<p class="h-info">Telefone: <span class="details" style="color: red;"><%=f.getTelefone() %></span></p>
	    				</div>
    				</div>
        	</div>
        	
        <% } %>

        </div>
         <div class="row mt-5">
          <div class="col text-center">
            <div class="block-27">
              <ul >
                <li><a href="#" style="color: red;">&lt;</a></li>
                <li ><span style="background: red; color: white;">1</span></li>
                <li><a href="#" style="color: red;">2</a></li>
                <li><a href="#" style="color: red;">3</a></li>
                <li><a href="#" style="color: red;">4</a></li>
                <li><a href="#" style="color: red;">5</a></li>
                <li><a href="#" style="color: red;">&gt;</a></li>
              </ul>
            </div>
          </div>
        </div>
    	</div>
    </section>
		

 <!--Começa a sessão FOOTER-->
 <footer class="ftco-footer ftco-section" style="background: red;">
  <div class="container">
    <div class="row mb-5">
      <div class="col-md">
        <div class="ftco-footer-widget mb-4">
          <h2 class="ftco-heading-2">OsvaldoAchar</h2>
          <p>Uma das maiores empresas no ramo da imobiliária, com profissionais de excelencia, e com mais de 10 anos de mercado.</p>
          <ul class="ftco-footer-social list-unstyled mt-5">
            <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
            <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
            <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
          </ul>
        </div>
      </div>
      <div class="col-md">
        <div class="ftco-footer-widget mb-4 ml-md-4">
          <h2 class="ftco-heading-2">Comunidade</h2>
          <ul class="list-unstyled">
            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Procurar casas</a></li>
            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Forum Online</a></li>
            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Avaliações</a></li>
            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>FAQs</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md">
        <div class="ftco-footer-widget mb-4 ml-md-4">
          <h2 class="ftco-heading-2">Sobre Nós</h2>
          <ul class="list-unstyled">
            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Nossa História</a></li>
            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Objectivos</a></li>
            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Visão</a></li>
            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Valores</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md">
         <div class="ftco-footer-widget mb-4">
          <h2 class="ftco-heading-2">Empresa</h2>
          <ul class="list-unstyled">
            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Sede</a></li>
            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Casas</a></li>
            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Contactos</a></li>
            <li><a href="#"><span class="icon-long-arrow-right mr-2"></span>Fornecedores</a></li>
          </ul>
        </div>
      </div>
      <div class="col-md">
        <div class="ftco-footer-widget mb-4">
          <h2 class="ftco-heading-2">Alguma pergunta?</h2>
          <div class="block-23 mb-3">
            <ul>
              <li><span class="icon icon-map-marker"></span><span class="text">Micajune B Q.D 225, Quelimane, Zambézia, MOZ</span></li>
                </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12 text-center">

        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos os direitos reservados 
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
      </div>
    </div>
  </div>
</footer>

    
  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="dodgerblue"/></svg></div>


  <script src="js/jquery.min.js"></script>
  <script src="js/jquery-migrate-3.0.1.min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/jquery.waypoints.min.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.animateNumber.min.js"></script>
  <script src="js/bootstrap-datepicker.js"></script>
  <script src="js/jquery.timepicker.min.js"></script>
  <script src="js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="js/google-map.js"></script>
  <script src="js/main.js"></script>
    
  </body>
</html>