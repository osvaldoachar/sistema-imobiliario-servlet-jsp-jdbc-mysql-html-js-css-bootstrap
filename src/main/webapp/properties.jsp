<%@ page import="dao.ApartamentoDao"%>
<%@page import="model.ApartamentoModel"%>
<%@page import="java.util.ArrayList" %>

<jsp:include page="cabecalho.jsp" /> 
    
    <section class="hero-wrap hero-wrap-2 ftco-degree-bg js-fullheight" style="background-image: url('images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="overlay-2"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-center">
          <div class="col-md-9 ftco-animate pb-5 mb-5 text-center">
            <h1 class="mb-3 bread" style="color: red;">Casas</h1>
            <p class="breadcrumbs"><span class="mr-2"><a href="index.jsp">Inicio <i class="ion-ios-arrow-forward"></i></a></span> <span>Casas <i class="ion-ios-arrow-forward"></i></span></p>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section goto-here">
    	<div class="container">
        <div class="row">
         <% 
                    	ArrayList<ApartamentoModel> lista = new ArrayList<ApartamentoModel>();
                    
                    	try{
                    		ApartamentoDao aDao = new ApartamentoDao();
                    		lista = aDao.getLista();
                    	}catch(Exception e){
                    		out.print(e);
                    	}
                    	for(ApartamentoModel a:lista){
                    %>
        <div class="col-md-4">
        		<div class="property-wrap ftco-animate">
        			<div class="img d-flex align-items-center justify-content-center" style="background-image: url(fotos/fotoapartamento/<%=a.getImagem()%>);">
        				<a href="properties-single.jsp" class="icon d-flex align-items-center justify-content-center btn-custom">
        					<span class="ion-ios-link"></span>
        				</a>
        				<div class="list-agent d-flex align-items-center">
        					<a href="#" class="agent-info d-flex align-items-center">
        						<div class="img-2 rounded-circle" style="background-image: url(images/person_1.jpg);"></div>
        						<h3 class="mb-0 ml-2"><%=a.getFornecedor() %></h3>
        					</a>
        					<div class="tooltip-wrap d-flex">
        						<a href="#" class="icon-2 d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="top" title="Bookmark">
        							<span class="ion-ios-heart"><i class="sr-only">Agendar</i></span>
        						</a>
        						<a href="#" class="icon-2 d-flex align-items-center justify-content-center" data-toggle="tooltip" data-placement="top" title="Compare">
        							<span class="ion-ios-eye"><i class="sr-only">Comparar</i></span>
        						</a>
        					</div>
        				</div>
        			</div>
        			<div class="text">
        				<p class="price mb-3"><span class="orig-price" style="color: red;"><%=a.getPreco() %> Mts</span></p>
        				<h3 class="mb-0"><a href="properties-single.jsp"><%=a.getTipoAp() %> </a></h3>
        				<span class="location d-inline-block mb-3"><i class="ion-ios-pin mr-2"></i><%=a.getImovelC() %> , <%=a.getCidadeC() %></span>
        				<ul class="property_list">
        					<li><span class="flaticon-bed"></span>Quartos: <%=a.getQuartos() %></li>
        					<li><span class="flaticon-bathtub"></span>Banheiros: <%=a.getBanheiros() %></li>
        					<li><span class="flaticon-floor-plan"></span>Salas: <%=a.getSalas() %></li>
        					
        				</ul>
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
