

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900|Material+Icons'>

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body style="background: red;">
  
<!-- Form-->
<div class="form">
  <div class="form-toggle"></div>
  <div class="form-panel one">
    <div class="form-header">
      <h1 style="color: red;">Entrar</h1>
    </div>
    <div class="form-content">
        <form action="autenticaUsuario.jsp" method="POST">
        <div class="form-group">
          <label for="username">Email</label>
          <input type="email" id="username" name="emailLogin" required="required" placeholder="admin@gmail.com"/>
        </div>
        <div class="form-group">
          <label for="password">Senha</label>
          <input type="password" id="password" name="senhaLogin" required="required" placeholder="123"/>
        </div>
        <div class="form-group">
          <label class="form-remember">
            <input type="checkbox"/ style="background: red;">Me Lembrar
          </label><a class="form-recovery" href="#" style="color: red;">Esqueceu a senha?</a>
        </div>
        <div class="form-group">
          <button type="submit" style="background: red; color: white;">Entrar</button>
        </div>
      </form>
    </div>
  </div>
 
</div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://codepen.io/andytran/pen/vLmRVp.js'></script>

    <script src="js/index.js"></script>

</body>
</html>

