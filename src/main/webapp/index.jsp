<%@ page import="dao.ComentarioDao"%>
<%@page import="model.ComentarioModel"%>
<%@page import="java.util.ArrayList" %>
<jsp:include page="cabecalho.jsp" />   
    <div class="hero-wrap" style="background-image: url('images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="overlay-2"></div>
      <div class="container">
        <div class="row no-gutters slider-text justify-content-center align-items-center">
          <div class="col-lg-8 col-md-6 ftco-animate d-flex align-items-end">
          	<div class="text text-center w-100">
	            <h1 class="mb-4" style="color: red;">Seja vem vindo</h1>
	            <p><a href="properties.jsp" class="btn btn-danger py-3 px-4" style="background: red;">Procurar Casas</a></p>
            </div>
          </div>
        </div>
      </div>
      <div class="mouse" >
				<a href="#" class="mouse-icon" style="background: red;">
					<div class="mouse-wheel"><span class="ion-ios-arrow-round-down" ></span></div>
				</a>
			</div>
    </div>


    <section class="ftco-section ftco-no-pb" style="color: red;">
    	<div class="container">
	    	<div class="row">
					<div class="col-md-12">
						<div class="search-wrap-1 ftco-animate">
							<form action="#" class="search-property-1">
		        		<div class="row">
		        			<div class="col-lg align-items-end">
		        				<div class="form-group">
		        					<label for="#">Localização</label>
		          				<div class="form-field">
		          					<div class="icon"><span class="ion-ios-search"></span></div>
				                <input type="text" class="form-control" placeholder="Nome da cidade">
				              </div>
			              </div>
		        			</div>
		        			<div class="col-lg align-items-end">
		        				<div class="form-group">
		        					<label for="#">Tipo de casa</label>
		        					<div class="form-field">
		          					<div class="select-wrap">
		                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                      <select name="" id="" class="form-control">
		                      	<option value="" disabled>Tipo</option>
		                        <option value="Comercial">Comercial</option>
		                        <option value="Residencial">Residencial</option>
		                        <option value="Vila">Vila</option>
		                        <option value="Condominio">Condominio</option>
		                        <option value="Apartamento">Apartamento</option>
		                      </select>
		                    </div>
				              </div>
			              </div>
		        			</div>
		        			<div class="col-lg align-items-end">
		        				<div class="form-group">
		        					<label for="#">Estado da casa</label>
		        					<div class="form-field">
		          					<div class="select-wrap">
		                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                      <select name="" id="" class="form-control">
		                      	<option value="" disabled>Estado</option>
		                        <option value="Novo">Novo</option>
		                        <option value="Usado">Usado</option>
		                      </select>
		                    </div>
				              </div>
			              </div>
		        			</div>
		        			<div class="col-lg align-items-end">
		        				<div class="form-group">
		        					<label for="#">Limite de Preço</label>
		        					<div class="form-field">
		          					<div class="select-wrap">
		                      <div class="icon"><span class="ion-ios-arrow-down"></span></div>
		                      <select name="" id="" class="form-control">
		                        <option value="5000.00 MTS">5000.00 MTS</option>
		                        <option value="10,000.00 MTS">10,000.00 MTS</option>
		                        <option value="15,000.00 MTS">15,000.00 MTS</option>
		                        <option value="20,000.00 MTS">20,000.00 MTS</option>
		                        <option value="25,000.00 MTS">25,000.00 MTS</option>
		                        <option value="30,000.00 MTS">30,000.00 MTS</option>
		                        <option value="35,000.00 MTS">35,000.00 MTS</option>
		                        <option value="40,000.00 MTS">40,000.00 MTS</option>
		                        <option value="45,000.00 MTS">45,000.00 MTS</option>
		                        <option value="50,000.00 MTS">50,000.00 MTS</option>
		                        <option value="55,000.00 MTS">55,000.00 MTS</option>
		                        <option value="60,000.00 MTS">60,000.00 MTS</option>
		                        <option value="65,000.00 MTS">65,000.00 MTS</option>
		                        <option value="70,000.00 MTS">70,000.00 MTS</option>
		                      </select>
		                    </div>
				              </div>
			              </div>
		        			</div>
		        			<div class="col-lg align-self-end">
		        				<div class="form-group">
		        					<div class="form-field">
				                <input type="submit" value="Procurar Casa" class="btn btn-danger py-3 px-4">
				              </div>
			              </div>
		        			</div>
		        		</div>
		        	</form>
		        </div>
					</div>
	    	</div>
	    </div>
    </section>

  


    <section class="ftco-section testimony-section bg-light" style="background: red;">
      <div class="container">
        <div class="row justify-content-center mb-5">
          <div class="col-md-7 text-center heading-section ftco-animate">
            <h2 class="mb-3">Clientes Satisfeitos</h2>
            
          </div>
        </div>
        <div class="row ftco-animate">
          <div class="col-md-12">
            <div class="carousel-testimony owl-carousel ftco-owl">
            
              <%
                    	ArrayList<ComentarioModel> comenta = new ArrayList<ComentarioModel>();
                    
                    	try{
                    		ComentarioDao cDao = new ComentarioDao();
                    		comenta = cDao.mostrarComentario();
                    	}catch(Exception e){
                    		out.print(e);
                    	}
                    	for(ComentarioModel come:comenta){
                    %>
              
                <div class="item">
            <div class="testimony-wrap py-4">
                  <div class="text">
                    <p class="mb-4"><%=come.getComentario() %></p>
                    <div class="d-flex align-items-center">
                    	
                    	<div class="pl-3">
		                    <p class="name" style="color:red;"><%=come.getNomeUsuario() %></p>
		                    <span class="position"><%=come.getOcupacao() %></span>
		                  </div>
	                  </div>
                  </div>
                </div>
              </div>
              
              <% } %>
              
            </div>
            
          </div>
         
        </div>
        <div class="form-group">
                <a href="comentario/comentario.jsp"><input type="submit" value="Deixe seu comentário aqui" class="btn btn-danger py-3 px-5"></a>
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
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="red"/></svg></div>


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
