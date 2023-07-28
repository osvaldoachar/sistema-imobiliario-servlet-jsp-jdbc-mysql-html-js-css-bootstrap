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
    max-width: 500px;
    width: 100%;
    background: #fff;
    padding: 25px;
    padding-top: 30px;
    padding-bottom: 5px;
    border-radius: 5px;
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
    width: 100%;
    margin-bottom: 15px;
}
.user-detail .input-box .detail{
    display: block;
    font-weight: 500;
    margin-bottom: 5px;
}
.user-detail .input-box input, textarea{
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
textarea{
	height: 200px;
}

.user-detail .input-box input:focus,
.user-detail .input-box input:valid{
    border-color: dodgerblue;
}

.user-detail .input-box textarea:focus,
.user-detail .input-box textarea:valid{
	 border: 1px solid dodgerblue;
	 border-bottom-width: 2px;
}


form .button input{
    height: 100%;
    width: 290%;
    outline: none;
    color: #fff;
    border: none;
    background: dodgerblue;
    font-size: 20px;
    font-weight: 500;
    border-radius: 5px;
    transition: 1s linear;
    letter-spacing: 1px;
    padding: 15px 30px;
    display: inline;
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
        <div class="tittle">Comentário</div>

        <form action="../ComentarioServlet" method="POST" id="register-form">
            <div class="user-detail">
               
                <div class="input-box">
                    <span class="detail">Nome:</span>
                    <input type="text" name="nome" placeholder="Digite o seu nome"   class="outrosIn"  required>
                </div>
                <div class="input-box">
                    <span class="detail">Profissão/Ocupação:</span>
                    <input type="text" name="ocupacao" placeholder="Digite a sua profissão ou ocupação">
                </div>
                <div class="input-box">
                    <span class="detail">Comentário:</span>
                    <textarea name="comentario" id="" cols="30" rows="7" class="form-control" placeholder="Escreva o seu comentário" required></textarea>
                </div>
                
               

            <div class="button">
                <input type="submit" value="Comentar">
                
            </div>
            
        </form>
               
    </div>

</body>
</html>