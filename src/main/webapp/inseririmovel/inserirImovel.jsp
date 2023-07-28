<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    border-radius: 5px;
}
.box-container2{
    position: absolute;
    width: 23%;
    margin: 5px;
    top: 5%;
    left: 75%;
    height: 38%;
    right: 1px;
    background-color: white;
    padding: 5px;
    border-radius: 10px;
    
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
    width: calc(100% / 2 - 5px);
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
form .gender-detail .gender-tittle{
    font-size: 20px;
    font-weight: 500;
}
form .gender-detail .category{
    display: flex;
    width: 80%;
    margin: 14px 0;
    justify-content: space-between;
}
.sex{
	display:none;
}
.gender-detail .category label{
    display: flex;
    align-items: center;
}
.gender-detail .category .dot{
    height: 18px;
    width: 18px;
    background: #d9d9d9;
    border-radius: 50%;
    margin-right: 10px;
    border: 5px solid transparent;
    transition: all .3s ease;
}
#dot-1:checked ~ .category label .one,
#dot-2:checked ~ .category label .two,
#dot-3:checked ~ .category label .three{
    border-color: #d9d9d9;
    background: dodgerblue;
}
form input[type="radio"]{
    display: none;
}
form .button{
    height: 45px;
    margin: 45px 0;
}
form .button input{
    height: 100%;
    width: 47%;
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
.outrapage{
    position: absolute;
    width: 98%;
    margin: 0;
    top: 105%;
    left: 3px;
    right: 0; 
}

@media (max-width: 584px){
    .container{
        max-width: 100%;
    }
    form .user-detail .input-box{
        width: 100%;
        margin-bottom: 15px;
    }
    form .gender-detail .category{
        width: 100%;
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
        <div class="tittle">Cadastro de Imóvel</div>

        <form action="controleInserir.jsp" method="post" id="register-form">
            <div class="user-detail">
               
                <div class="input-box">
                    <span class="detail">Nome do Imovel:</span>
                    <input type="text" name="nomeImovel" placeholder="Digite o nome do imovel" class="outrosIn" required>
                </div>
                <div class="input-box">
                    <span class="detail">Nome Abreviado:</span>
                    <input type="text" name="nomeAbrev" placeholder="Digite o nome abrevidado" required>
                </div>
                <div class="input-box">
                    <span class="detail">Endereço do Imóvel:</span>
                    <input type="text" name="endereco" placeholder="Digite o endereço do imóvel" required>
                </div>
                <div class="input-box">
                    <span class="detail">Email do Imóvel:</span>
                    <input type="email" name="email" id="dataNascimento" placeholder="Digite o email do imóvel" required>
                </div>
                 
              
                <div class="input-box">
                    <span class="detail">ID do Fornecedor:</span>
                    <input type="text" name="fChave" id="telefone" placeholder="Insira o ID do fornecedor " required>
                </div>
                 <div class="input-box">
                    <span class="detail">ID da Cidade:</span>
                    <input type="text" name="cChave" id="imagem" placeholder="Insira o ID da Cidade" required>
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