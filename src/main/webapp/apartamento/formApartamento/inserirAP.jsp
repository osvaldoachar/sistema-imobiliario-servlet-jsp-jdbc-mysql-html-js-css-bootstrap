<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário de Cadastro</title>
    <style>
        *{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
    font-family: Poppins, sans-serif;
}
body{
    display: flex;
    height: 100vh;
    padding: 10px;
    justify-content: center;
    align-items: center;
    background:  dodgerblue;
}
.subirfoto{
	background: transparent;
}
input#file-upload-button{
	color:dodgerblue;
}
html::-webkit-scrollbar {
    width: 7px;
  }
  html::-webkit-scrollbar-track {
    
    background:  dodgerblue;
  }
  html::-webkit-scrollbar-thumb {
    background: #ffffff;
    border-radius: 5rem;
  }
.container{
    max-width: 700px;
    width: 100%;
    background: #fff;
    padding: 25px;
    padding-top: 30px;
    padding-bottom: 5px;
    border-radius: 5px 0 5px 5px;
}
.box-container2{
    position: absolute;
    width: 23%;
    margin: 5px;
    top: 13.3%;
    left: 75%;
    height: 38%;
    right: 1px;
    background-color: white;
    padding: 5px;
    border-radius: 0 10px 10px 0;
    
}


#imagem-preview img {
  max-width: 300px;
  width: 100%;
  max-height: 330px;
  height: 100%;
  margin: 0;
  border-radius: 10px;
}
.container .tittle{
    font-size: 25px;
    font-weight: 500;
    position: relative;
}
.container .tittle::before{
    content: '';
    position: absolute;
    left: 0;
    bottom: 0;
    height: 3px;
    width: 45px;
    background: dodgerblue;
}
.container form .user-detail{
display: flex;
flex-wrap: wrap;
justify-content: space-between;
margin: 10px 0 12px 0;
}
form .user-detail .input-box{
    width: calc(100% / 3 - 5px);
    margin-bottom: 15px;
}
.user-detail .input-box .detail{
    display: block;
    font-weight: 500;
    margin-bottom: 5px;
}
.user-detail .input-box input, select{
    height: 45px;
    width: 100%;
    outline: none;
    border-radius: 5px;
    border: 1px solid #ccc;
    padding-left: 15px;
    font-size: 16px;
    border-bottom-width: 2px;
    transition: all .3s ease;
}


.user-detail .input-box input:focus,
.user-detail .input-box input:valid{
    border-color: dodgerblue;
}
.user-detail .input-box select:focus,
.user-detail .input-box select:valid{
    border-color: dodgerblue;
}
.user-detail .input-box .theCode:focus,
.user-detail .input-box .theCode:valid{
	 border: 1px solid #ccc;
	 border-bottom-width: 2px;
}


form .button{
    height: 45px;
    margin: 45px 0;
}
form .button input{
    height: 100%;
    width: 49%;
    outline: none;
    color: #fff;
    border: none;
    background: dodgerblue;
    font-size: 20px;
    font-weight: 500;
    border-radius: 5px;
    transition: 1s linear;
    letter-spacing: 1px;
}


form .button input[type="reset"]{
    background: dodgerblue;
}
form .button input[type="reset"]:hover{
    background: cornflowerblue;
}
form .button input:hover{
    background: cornflowerblue;
    letter-spacing: 1.5px;
}


@media (max-width: 584px){
    .container{
        max-width: 100%;
    }
    .container form .user-detail{
        max-height: 300px;
        overflow-y: scroll;
        }
        .user-detail::-webkit-scrollbar{
            width: 0;
        }
}
    </style>
</head>
<body>
    <div class="container">
        <div class="tittle">Cadastro de Apartamento</div>

        <form action="ApartamentoServlet" method="post" enctype="multipart/form-data">
            <div class="user-detail">
               
                <div class="input-box">
                    <span class="detail">Quartos:</span>
                      <select name="quartos" id="quartos" required style="color: grey;">
                        <option disabled selected value="" style="background: dodgerblue; color: #fff;">Número de quartos</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            </select>
                </div>
                <div class="input-box">
                    <span class="detail">Salas:</span>
                     <select name="salas" id="salas" required style="color: grey;">
                        <option disabled selected value="" style="background: dodgerblue; color: #fff;">Número de salas</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            </select>
                </div>
                <div class="input-box">
                    <span class="detail">Banheiros:</span>
                     <select name="banheiros" id="banheiros" required style="color: grey;">
                        <option disabled selected value="" style="background: dodgerblue; color: #fff;">Número de banheiros</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            </select>
                </div>
                <div class="input-box">
                    <span class="detail">Tipo de Apartamento:</span>
                     <select name="tipoApartamento" id="nacionalidade" required style="color: grey;">
                        <option disabled selected value="" style="background: dodgerblue; color: #fff;">Tipo de Apartamento</option>
                            <option value="Padrão/Comum">Padrão/Comum</option>
                            <option value="Duplex">Duplex</option>
                            <option value="Cobertura">Cobertura</option>
                           <option value="Quinta">Quinta</option>
                            </select>
                </div>
             
               
                <div class="input-box">
                    <span class="detail">Estado:</span>
                     <select name="estado" id="nacionalidade" required style="color: grey;">
                        <option disabled selected value="" style="background: dodgerblue; color: #fff;">Disponível/Ocupado</option>
                            <option value="Disponível">Disponível</option>
                            <option value="Ocupado">Ocupado</option>
                            </select>
                </div>
                <div class="input-box">
                    <span class="detail">ID do Imóvel:</span>
                    <input type="text" name="imovelID" id="telefone" placeholder="Digite um ID válido" required>
                </div>
                 
                 <div class="input-box">
                    <span class="detail">ID da Cidade:</span>
                    <input type="text" name="cidadeID" id="telefone" placeholder="Digite um ID válido" required>
                </div>
                 <div class="input-box">
                    <span class="detail">Preço:</span>
                    <input type="text" name="preco" id="telefone" placeholder="Ex: 5.000.00" required>
                </div>
                 <div class="input-box">
                    <span class="detail">Foto</span>
                    <input type="file" name="imagem" class="subirfoto" id="file-upload-button" value="Escolher Foto" accept="image/*">
                </div>
            </div>
            
            <div class="button">
                <input type="submit" value="Cadastrar">
                <input type="reset" value="Cancelar">
            </div>
        </form>
               
    </div>
</body>
</html>