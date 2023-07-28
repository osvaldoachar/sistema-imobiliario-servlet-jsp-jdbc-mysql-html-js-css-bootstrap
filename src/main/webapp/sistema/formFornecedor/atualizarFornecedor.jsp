<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actualizar Fornecedor</title>
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
    background:  red;
}
html::-webkit-scrollbar {
    width: 7px;
  }
  html::-webkit-scrollbar-track {
    
    background:  red;
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
    background: red;
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
    border-color: red;
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
    background: red;
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
    background: red;
    font-size: 20px;
    font-weight: 500;
    border-radius: 5px;
    transition: 1s linear;
    letter-spacing: 1px;
}


form .button input[type="reset"]{
    background: red;
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
        <div class="tittle">Cadastro de Fornecedor</div>

        <form action="sistema/formFornecedor/controleAtualizar.jsp" method="post" enctype="multipart/form-data">
            <div class="user-detail">
             <div class="input-box">
                    <span class="detail">C�digo:</span>
                    <input type="text" name="codigo" placeholder="N�o precisa preencher" style="border:solid 1px red; border-bottom-width: 2px;" readonly="readonly" class="theCode" value="${fornecedor.codigo }"  >
                </div>
               
                <div class="input-box">
                    <span class="detail">Nome:</span>
                    <input type="text" name="nome" placeholder="Digite o seu primeiro nome"  class="outrosIn" value="${fornecedor.nome }" required>
                </div>
                <div class="input-box">
                    <span class="detail">Apelido:</span>
                    <input type="text" name="apelido" placeholder="Digite o seu apelido" value="${fornecedor.apelido }"required>
                </div>
                <div class="input-box">
                    <span class="detail">Endere�o:</span>
                    <input type="text" name="endereco" placeholder="Digite o seu endere�o" value="${fornecedor.endereco }" required>
                </div>
                <div class="input-box">
                    <span class="detail">Data de Nascimento:</span>
                    <input type="date" name="dataNascimento" id="dataNascimento" placeholder="Ano-M�s-Dia" value="${fornecedor.dataNascimento }"required>
                </div>
                   <div class="input-box">
                    <span class="detail">Nacionalidade:</span>
                    <select name="nacionalidade" id="nacionalidade" required style="border:solid 1px red; border-bottom-width: 2px;">
                        <option disabled selected value="" style="background: red; color: #fff;">Selecione um Pa�s</option>
                            <option value="Brasil" ${fornecedor.nacionalidade ==  "Brasil" ? 'selected' : '' }>Brasil</option>
                            <option value="Afeganist�o" ${fornecedor.nacionalidade ==  "Afeganist�o" ? 'selected' : '' }>Afeganist�o</option>
                            <option value="�frica do Sul" ${fornecedor.nacionalidade ==  "�frica do Sul" ? 'selected' : '' }>�frica do Sul</option>
                            <option value="Alb�nia" ${fornecedor.nacionalidade ==  "Alb�nia" ? 'selected' : '' }>Alb�nia</option>
                            <option value="Alemanha" ${fornecedor.nacionalidade ==  "Alemanha" ? 'selected' : '' }>Alemanha</option>
                            <option value="Andorra" ${fornecedor.nacionalidade ==  "Andorra" ? 'selected' : '' }>Andorra</option>
                            <option value="Angola" ${fornecedor.nacionalidade ==  "Angola" ? 'selected' : '' }>Angola</option>
                            <option value="Anguilla" ${fornecedor.nacionalidade ==  "Anguilla" ? 'selected' : '' }>Anguilla</option>
                            <option value="Antilhas Holandesas" ${fornecedor.nacionalidade ==  "Antilhas Holandesas" ? 'selected' : '' }>Antilhas Holandesas</option>
                            <option value="Ant�rctida" ${fornecedor.nacionalidade ==  "Ant�rctida" ? 'selected' : '' }>Ant�rctida</option>
                            <option value="Ant�gua e Barbuda" ${fornecedor.nacionalidade ==  "Ant�gua e Barbuda" ? 'selected' : '' }>Ant�gua e Barbuda</option>
                            <option value="Argentina" ${fornecedor.nacionalidade ==  "Argentina" ? 'selected' : '' }>Argentina</option>
                            <option value="Arg�lia" ${fornecedor.nacionalidade ==  "Arg�lia" ? 'selected' : '' }>Arg�lia</option>
                            <option value="Arm�nia" ${fornecedor.nacionalidade ==  "Arm�nia" ? 'selected' : '' }>Arm�nia</option>
                            <option value="Aruba" ${fornecedor.nacionalidade ==  "Aruba" ? 'selected' : '' }>Aruba</option>
                            <option value="Ar�bia Saudita" ${fornecedor.nacionalidade ==  "Ar�bia Saudita" ? 'selected' : '' }>Ar�bia Saudita</option>
                            <option value="Austr�lia" ${fornecedor.nacionalidade ==  "Austr�lia" ? 'selected' : '' }>Austr�lia</option>
                            <option value="�ustria" ${fornecedor.nacionalidade ==  "�ustria" ? 'selected' : '' }>�ustria</option>
                            <option value="Azerbaij�o" ${fornecedor.nacionalidade ==  "Azerbaij�o" ? 'selected' : '' }>Azerbaij�o</option>
                            <option value="Bahamas" ${fornecedor.nacionalidade ==  "Bahamas" ? 'selected' : '' }>Bahamas</option>
                            <option value="Bahrein" ${fornecedor.nacionalidade ==  "Bahrein" ? 'selected' : '' }>Bahrein</option>
                            <option value="Bangladesh" ${fornecedor.nacionalidade ==  "Bangladesh" ? 'selected' : '' }>Bangladesh</option>
                            <option value="Barbados" ${fornecedor.nacionalidade ==  "Barbados" ? 'selected' : '' }>Barbados</option>
                            <option value="Belize" ${fornecedor.nacionalidade ==  "Belize" ? 'selected' : '' }>Belize</option>
                            <option value="Benim" ${fornecedor.nacionalidade ==  "Benin" ? 'selected' : '' }>Benim</option>
                            <option value="Bermudas" ${fornecedor.nacionalidade ==  "Bermudas" ? 'selected' : '' }>Bermudas</option>
                            <option value="Bielorr�ssia" ${fornecedor.nacionalidade ==  "Bielorr�ssia" ? 'selected' : '' }>Bielorr�ssia</option>
                            <option value="Bol�via" ${fornecedor.nacionalidade ==  "Bol�via" ? 'selected' : '' }>Bol�via</option>
                            <option value="Botswana" ${fornecedor.nacionalidade ==  "Botswana" ? 'selected' : '' }>Botswana</option>
                            <option value="Brunei" ${fornecedor.nacionalidade ==  "Brunei" ? 'selected' : '' }>Brunei</option>
                            <option value="Bulg�ria" ${fornecedor.nacionalidade ==  "Bulg�ria" ? 'selected' : '' }>Bulg�ria</option>
                            <option value="Burkina Faso" ${fornecedor.nacionalidade ==  "Burkina Faso" ? 'selected' : '' }>Burkina Faso</option>
                            <option value="Burundi" ${fornecedor.nacionalidade ==  "Burundi" ? 'selected' : '' }>Burundi</option>
                            <option value="But�o" ${fornecedor.nacionalidade ==  "But�o" ? 'selected' : '' }>But�o</option>
                            <option value="B�lgica" ${fornecedor.nacionalidade ==  "B�lgica" ? 'selected' : '' }>B�lgica</option>
                            <option value="B�snia e Herzegovina" ${fornecedor.nacionalidade ==  "B�snia e Herzegovina" ? 'selected' : '' }>B�snia e Herzegovina</option>
                            <option value="Cabo Verde" ${fornecedor.nacionalidade ==  "Cabo Verde" ? 'selected' : '' }>Cabo Verde</option>
                            <option value="Camar�es" ${fornecedor.nacionalidade ==  "Camar�es" ? 'selected' : '' }>Camar�es</option>
                            <option value="Camboja" ${fornecedor.nacionalidade ==  "Camboja" ? 'selected' : '' }>Camboja</option>
                            <option value="Canad�" ${fornecedor.nacionalidade ==  "Canad�" ? 'selected' : '' }>Canad�</option>
                            <option value="Catar" ${fornecedor.nacionalidade ==  "Catar" ? 'selected' : '' }>Catar</option>
                            <option value="Cazaquist�o" ${fornecedor.nacionalidade ==  "Cazaquist�o" ? 'selected' : '' }>Cazaquist�o</option>
                            <option value="Chade" ${fornecedor.nacionalidade ==  "Chade" ? 'selected' : '' }>Chade</option>
                            <option value="Chile" ${fornecedor.nacionalidade ==  "Chile" ? 'selected' : '' }>Chile</option>
                            <option value="China" ${fornecedor.nacionalidade ==  "China" ? 'selected' : '' }>China</option>
                            <option value="Chipre" ${fornecedor.nacionalidade ==  "Chipre" ? 'selected' : '' }>Chipre</option>
                            <option value="Col�mbia" ${fornecedor.nacionalidade ==  "Col�mbia" ? 'selected' : '' }>Col�mbia</option>
                            <option value="Comores" ${fornecedor.nacionalidade ==  "Comores" ? 'selected' : '' }>Comores</option>
                            <option value="Coreia do Norte" ${fornecedor.nacionalidade ==  "Coreia do Norte" ? 'selected' : '' }>Coreia do Norte</option>
                            <option value="Coreia do Sul" ${fornecedor.nacionalidade ==  "Coreia do Sul" ? 'selected' : '' }>Coreia do Sul</option>
                            <option value="Costa do Marfim" ${fornecedor.nacionalidade ==  "Costa do Marfim" ? 'selected' : '' }>Costa do Marfim</option>
                            <option value="Costa Rica" ${fornecedor.nacionalidade ==  "Costa Rica" ? 'selected' : '' }>Costa Rica</option>
                            <option value="Cro�cia" ${fornecedor.nacionalidade ==  "Cro�cia" ? 'selected' : '' }>Cro�cia</option>
                            <option value="Cuba" ${fornecedor.nacionalidade ==  "Cuba" ? 'selected' : '' }>Cuba</option>
                            <option value="Dinamarca" ${fornecedor.nacionalidade ==  "Dinamarca" ? 'selected' : '' }>Dinamarca</option>
                            <option value="Djibouti" ${fornecedor.nacionalidade ==  "Djibouti" ? 'selected' : '' }>Djibouti</option>
                            <option value="Dominica" ${fornecedor.nacionalidade ==  "Dominica" ? 'selected' : '' }>Dominica</option>
                            <option value="Egito" ${fornecedor.nacionalidade ==  "Egito" ? 'selected' : '' }>Egito</option>
                            <option value="El Salvador" ${fornecedor.nacionalidade ==  "El Salvador" ? 'selected' : '' }>El Salvador</option>
                            <option value="Emirados �rabes Unidos" ${fornecedor.nacionalidade ==  "Emirados �rabe Unidos" ? 'selected' : '' }>Emirados �rabes Unidos</option>
                            <option value="Equador" ${fornecedor.nacionalidade ==  "Equador" ? 'selected' : '' }>Equador</option>
                            <option value="Eritreia" ${fornecedor.nacionalidade ==  "Eritreia" ? 'selected' : '' }>Eritreia</option>
                            <option value="Esc�cia" ${fornecedor.nacionalidade ==  "Esc�cia" ? 'selected' : '' }>Esc�cia</option>
                            <option value="Eslov�quia" ${fornecedor.nacionalidade ==  "Eslov�quia" ? 'selected' : '' }>Eslov�quia</option>
                            <option value="Eslov�nia" ${fornecedor.nacionalidade ==  "Eslov�nia" ? 'selected' : '' }>Eslov�nia</option>
                            <option value="Espanha"  ${fornecedor.nacionalidade ==  "Espanha" ? 'selected' : '' }>Espanha</option>
                            <option value="Estados Federados da Micron�sia"  ${fornecedor.nacionalidade ==  "Estados Federados da Micron�sia" ? 'selected' : '' }>Estados Federados da Micron�sia</option>
                            <option value="Estados Unidos da Am�rica"  ${fornecedor.nacionalidade ==  "Estados Unidos da Am�rica" ? 'selected' : '' }>Estados Unidos</option>
                            <option value="Est�nia"  ${fornecedor.nacionalidade ==  "Est�nia" ? 'selected' : '' }>Est�nia</option>
                            <option value="Eti�pia"  ${fornecedor.nacionalidade ==  "Eti�pia" ? 'selected' : '' }>Eti�pia</option>
                            <option value="Fiji"  ${fornecedor.nacionalidade ==  "Fiji" ? 'selected' : '' }>Fiji</option>
                            <option value="Filipinas"  ${fornecedor.nacionalidade ==  "Filipinas" ? 'selected' : '' }>Filipinas</option>
                            <option value="Finl�ndia"  ${fornecedor.nacionalidade ==  "Finl�ndia" ? 'selected' : '' }>Finl�ndia</option>
                            <option value="Fran�a"  ${fornecedor.nacionalidade ==  "Fran�a" ? 'selected' : '' }>Fran�a</option>
                            <option value="Gab�o"  ${fornecedor.nacionalidade ==  "Gab�o" ? 'selected' : '' }>Gab�o</option>
                            <option value="Gana"  ${fornecedor.nacionalidade ==  "Gana" ? 'selected' : '' }>Gana</option>
                            <option value="Ge�rgia"  ${fornecedor.nacionalidade ==  "Ge�rgia" ? 'selected' : '' }>Ge�rgia</option>
                            <option value="Gibraltar"  ${fornecedor.nacionalidade ==  "Gibraltar" ? 'selected' : '' }>Gibraltar</option>
                            <option value="Granada"  ${fornecedor.nacionalidade ==  "Granada" ? 'selected' : '' }>Granada</option>
                            <option value="Gronel�ndia"  ${fornecedor.nacionalidade ==  "Gronel�ndia" ? 'selected' : '' }>Gronel�ndia</option>
                            <option value="Gr�cia" ${fornecedor.nacionalidade ==  "Gr�cia" ? 'selected' : '' }>Gr�cia</option>
                            <option value="Guadalupe" ${fornecedor.nacionalidade ==  "Guadalupe" ? 'selected' : '' }>Guadalupe</option>
                            <option value="Guam" ${fornecedor.nacionalidade ==  "Guam" ? 'selected' : '' }>Guam</option>
                            <option value="Guatemala" ${fornecedor.nacionalidade ==  "Guatemala" ? 'selected' : '' }>Guatemala</option>
                            <option value="Guernesei" ${fornecedor.nacionalidade ==  "Guernesei" ? 'selected' : '' }>Guernesei</option>
                            <option value="Guiana" ${fornecedor.nacionalidade ==  "Guiana" ? 'selected' : '' }>Guiana</option>
                            <option value="Guiana Francesa" ${fornecedor.nacionalidade ==  "Guiana Francesa" ? 'selected' : '' }>Guiana Francesa</option>
                            <option value="Guin�" ${fornecedor.nacionalidade ==  "Guin�" ? 'selected' : '' }>Guin�</option>
                            <option value="Guin� Equatorial" ${fornecedor.nacionalidade ==  "Guin� Equatorial" ? 'selected' : '' }>Guin� Equatorial</option>
                            <option value="Guin�-Bissau" ${fornecedor.nacionalidade ==  "Guin�-Bissau" ? 'selected' : '' }>Guin�-Bissau</option>
                            <option value="G�mbia" ${fornecedor.nacionalidade ==  "G�mbia" ? 'selected' : '' }>G�mbia</option>
                            <option value="Haiti" ${fornecedor.nacionalidade ==  "Haiti" ? 'selected' : '' }>Haiti</option>
                            <option value="Honduras" ${fornecedor.nacionalidade ==  "Honduras" ? 'selected' : '' }>Honduras</option>
                            <option value="Hong Kong" ${fornecedor.nacionalidade ==  "Hong Kong" ? 'selected' : '' }>Hong Kong</option>
                            <option value="Hungria" ${fornecedor.nacionalidade ==  "Hungria" ? 'selected' : '' }>Hungria</option>
                            <option value="Ilha Bouvet" ${fornecedor.nacionalidade ==  "Ilha Bouvet" ? 'selected' : '' }>Ilha Bouvet</option>
                            <option value="Ilha de Man" ${fornecedor.nacionalidade ==  "Ilha de Man" ? 'selected' : '' }>Ilha de Man</option>
                            <option value="Ilha do Natal" ${fornecedor.nacionalidade ==  "Ilha do Natal" ? 'selected' : '' }>Ilha do Natal</option>
                            <option value="Ilha Heard e Ilhas McDonald" ${fornecedor.nacionalidade ==  "Ilha Heard e Ilhas McDonald" ? 'selected' : '' }>Ilha Heard e Ilhas McDonald</option>
                            <option value="Ilha Norfolk" ${fornecedor.nacionalidade ==  "Ilha Norfolk" ? 'selected' : '' }>Ilha Norfolk</option>
                            <option value="Ilhas Cayman" ${fornecedor.nacionalidade ==  "Ilhas Cayman" ? 'selected' : '' }>Ilhas Cayman</option>
                            <option value="Ilhas Cocos (Keeling)" ${fornecedor.nacionalidade ==  "Ilhas Cocos (Keeling)" ? 'selected' : '' }>Ilhas Cocos (Keeling)</option>
                            <option value="Ilhas Cook" ${fornecedor.nacionalidade ==  "Ilhas Cook" ? 'selected' : '' }>Ilhas Cook</option>
                            <option value="Ilhas Fero�" ${fornecedor.nacionalidade ==  "Ilhas Fero�" ? 'selected' : '' }>Ilhas Fero�</option>
                            <option value="Ilhas Ge�rgia do Sul e Sandwich do Sul" ${fornecedor.nacionalidade ==  "Ilhas Ge�rgia do Sul e Sandwich do Sul" ? 'selected' : '' }>Ilhas Ge�rgia do Sul e Sandwich do Sul</option>
                            <option value="Ilhas Malvinas" ${fornecedor.nacionalidade ==  "Ilhas Malvinas" ? 'selected' : '' }>Ilhas Malvinas</option>
                            <option value="Ilhas Marshall" ${fornecedor.nacionalidade ==  "Ilhas Marshall" ? 'selected' : '' }>Ilhas Marshall</option>
                            <option value="Ilhas Menores Distantes dos Estados Unidos" ${fornecedor.nacionalidade ==  "Ilhas Menores Distantes dos Estados Unidos" ? 'selected' : '' }>Ilhas Menores Distantes dos Estados Unidos</option>
                            <option value="Ilhas Salom�o" ${fornecedor.nacionalidade ==  "Ilhas Salom�o" ? 'selected' : '' }>Ilhas Salom�o</option>
                            <option value="Ilhas Virgens Americanas" ${fornecedor.nacionalidade ==  "Ilhas Virgens Americanas" ? 'selected' : '' }>Ilhas Virgens Americanas</option>
                            <option value="Ilhas Virgens Brit�nicas" ${fornecedor.nacionalidade ==  "Ilhas Virgens Brit�nicas" ? 'selected' : '' }>Ilhas Virgens Brit�nicas</option>
                            <option value="Ilhas �land" ${fornecedor.nacionalidade ==  "Ilhas �land" ? 'selected' : '' }>Ilhas �land</option>
                            <option value="Indon�sia" ${fornecedor.nacionalidade ==  "Indon�sia" ? 'selected' : '' }>Indon�sia</option>
                            <option value="Inglaterra" ${fornecedor.nacionalidade ==  "Inglaterra" ? 'selected' : '' }>Inglaterra</option>
                            <option value="�ndia"  ${fornecedor.nacionalidade ==  "�ndia" ? 'selected' : '' }>�ndia</option>
                            <option value="Iraque"  ${fornecedor.nacionalidade ==  "Iraque" ? 'selected' : '' }>Iraque</option>
                            <option value="Irlanda do Norte"  ${fornecedor.nacionalidade ==  "Irlanda do Norte" ? 'selected' : '' }>Irlanda do Norte</option>
                            <option value="Irlanda"  ${fornecedor.nacionalidade ==  "Irlanda" ? 'selected' : '' }>Irlanda</option>
                            <option value="Ir�"  ${fornecedor.nacionalidade ==  "Ir�" ? 'selected' : '' }>Ir�</option>
                            <option value="Isl�ndia" ${fornecedor.nacionalidade ==  "Isl�ndia" ? 'selected' : '' }>Isl�ndia</option>
                            <option value="Israel" ${fornecedor.nacionalidade ==  "Israel" ? 'selected' : '' }>Israel</option>
                            <option value="It�lia" ${fornecedor.nacionalidade ==  "It�lia" ? 'selected' : '' }>It�lia</option>
                            <option value="I�men" ${fornecedor.nacionalidade ==  "I�men" ? 'selected' : '' }>I�men</option>
                            <option value="Jamaica" ${fornecedor.nacionalidade ==  "Jamaica" ? 'selected' : '' }>Jamaica</option>
                            <option value="Jap�o" ${fornecedor.nacionalidade ==  "Jap�o" ? 'selected' : '' }>Jap�o</option>
                            <option value="Jersey" ${fornecedor.nacionalidade ==  "Jersey" ? 'selected' : '' }>Jersey</option>
                            <option value="Jord�nia" ${fornecedor.nacionalidade ==  "Jord�nia" ? 'selected' : '' }>Jord�nia</option>
                            <option value="Kiribati" ${fornecedor.nacionalidade ==  "Kiribati" ? 'selected' : '' }>Kiribati</option>
                            <option value="Kuwait" ${fornecedor.nacionalidade ==  "Kuwait" ? 'selected' : '' }>Kuwait</option>
                            <option value="Laos" ${fornecedor.nacionalidade ==  "Laos" ? 'selected' : '' }>Laos</option>
                            <option value="Lesoto" ${fornecedor.nacionalidade ==  "Lesoto" ? 'selected' : '' }>Lesoto</option>
                            <option value="Let�nia" ${fornecedor.nacionalidade ==  "Let�nia" ? 'selected' : '' }>Let�nia</option>
                            <option value="Lib�ria" ${fornecedor.nacionalidade ==  "Lib�ria" ? 'selected' : '' }>Lib�ria</option>
                            <option value="Liechtenstein" ${fornecedor.nacionalidade ==  "Liechtenstein" ? 'selected' : '' }>Liechtenstein</option>
                            <option value="Litu�nia" ${fornecedor.nacionalidade ==  "Litu�nia" ? 'selected' : '' }>Litu�nia</option>
                            <option value="Luxemburgo" ${fornecedor.nacionalidade ==  "Luxemburgo" ? 'selected' : '' }>Luxemburgo</option>
                            <option value="L�bano" ${fornecedor.nacionalidade ==  "L�bano" ? 'selected' : '' }>L�bano</option>
                            <option value="L�bia" ${fornecedor.nacionalidade ==  "L�bia" ? 'selected' : '' }>L�bia</option>
                            <option value="Macau" ${fornecedor.nacionalidade ==  "Macau" ? 'selected' : '' }>Macau</option>
                            <option value="Maced�nia" ${fornecedor.nacionalidade ==  "Maced�nia" ? 'selected' : '' }>Maced�nia</option>
                            <option value="Madag�scar" ${fornecedor.nacionalidade ==  "Madag�scar" ? 'selected' : '' }>Madag�scar</option>
                            <option value="Malawi" ${fornecedor.nacionalidade ==  "Malawi" ? 'selected' : '' }>Malawi</option>
                            <option value="Maldivas" ${fornecedor.nacionalidade ==  "Maldivas" ? 'selected' : '' }>Maldivas</option>
                            <option value="Mali" ${fornecedor.nacionalidade ==  "Mali" ? 'selected' : '' }>Mali</option>
                            <option value="Malta" ${fornecedor.nacionalidade ==  "Malta" ? 'selected' : '' }>Malta</option>
                            <option value="Mal�sia" ${fornecedor.nacionalidade ==  "Mal�sia" ? 'selected' : '' }>Mal�sia</option>
                            <option value="Marianas Setentrionais" ${fornecedor.nacionalidade ==  "Marianas Setentrionais" ? 'selected' : '' }>Marianas Setentrionais</option>
                            <option value="Marrocos" ${fornecedor.nacionalidade ==  "Marrocos" ? 'selected' : '' }>Marrocos</option>
                            <option value="Martinica" ${fornecedor.nacionalidade ==  "Martinica" ? 'selected' : '' }>Martinica</option>
                            <option value="Maurit�nia" ${fornecedor.nacionalidade ==  "Maurit�nia" ? 'selected' : '' }>Maurit�nia</option>
                            <option value="Maur�cia" ${fornecedor.nacionalidade ==  "Maur�cia" ? 'selected' : '' }>Maur�cia</option>
                            <option value="Mayotte" ${fornecedor.nacionalidade ==  "Mayotte" ? 'selected' : '' }>Mayotte</option>
                            <option value="Mold�via" ${fornecedor.nacionalidade ==  "Mold�via" ? 'selected' : '' }>Mold�via</option>
                            <option value="Mong�lia" ${fornecedor.nacionalidade ==  "Mong�lia" ? 'selected' : '' }>Mong�lia</option>
                            <option value="Montenegro" ${fornecedor.nacionalidade ==  "Montenegro" ? 'selected' : '' }>Montenegro</option>
                            <option value="Montserrat" ${fornecedor.nacionalidade ==  "Montserrat" ? 'selected' : '' }>Montserrat</option>
                            <option value="Mo�ambique" ${fornecedor.nacionalidade ==  "Mo�ambique" ? 'selected' : '' }>Mo�ambique</option>
                            <option value="Myanmar" ${fornecedor.nacionalidade ==  "Myanmar" ? 'selected' : '' }>Myanmar</option>
                            <option value="M�xico" ${fornecedor.nacionalidade ==  "M�xico" ? 'selected' : '' }>M�xico</option>
                            <option value="M�naco" ${fornecedor.nacionalidade ==  "M�naco" ? 'selected' : '' }>M�naco</option>
                            <option value="Nam�bia" ${fornecedor.nacionalidade ==  "Nam�bia" ? 'selected' : '' }>Nam�bia</option>
                            <option value="Nauru" ${fornecedor.nacionalidade ==  "Nauru" ? 'selected' : '' }>Nauru</option>
                            <option value="Nepal" ${fornecedor.nacionalidade ==  "Nepal" ? 'selected' : '' }>Nepal</option>
                            <option value="Nicar�gua" ${fornecedor.nacionalidade ==  "Nicar�gua" ? 'selected' : '' }>Nicar�gua</option>
                            <option value="Nig�ria" ${fornecedor.nacionalidade ==  "Nig�ria" ? 'selected' : '' }>Nig�ria</option>
                            <option value="Niue" ${fornecedor.nacionalidade ==  "Niue" ? 'selected' : '' }>Niue</option>
                            <option value="Noruega" ${fornecedor.nacionalidade ==  "Noruega" ? 'selected' : '' }>Noruega</option>
                            <option value="Nova Caled�nia" ${fornecedor.nacionalidade ==  "Nova Caled�nia" ? 'selected' : '' }>Nova Caled�nia</option>
                            <option value="Nova Zel�ndia" ${fornecedor.nacionalidade ==  "Nova Zel�ndia" ? 'selected' : '' }>Nova Zel�ndia</option>
                            <option value="N�ger" ${fornecedor.nacionalidade ==  "N�ger" ? 'selected' : '' }>N�ger</option>
                            <option value="Om�" ${fornecedor.nacionalidade ==  "Om�" ? 'selected' : '' }>Om�</option>
                            <option value="Palau" ${fornecedor.nacionalidade ==  "Palau" ? 'selected' : '' }>Palau</option>
                            <option value="Palestina" ${fornecedor.nacionalidade ==  "Palestina" ? 'selected' : '' }>Palestina</option>
                            <option value="Panam�" ${fornecedor.nacionalidade ==  "Panam�" ? 'selected' : '' }>Panam�</option>
                            <option value="Papua-Nova Guin�" ${fornecedor.nacionalidade ==  "Papua-Nova Guin�" ? 'selected' : '' }>Papua-Nova Guin�</option>
                            <option value="Paquist�o" ${fornecedor.nacionalidade ==  "Paquist�o" ? 'selected' : '' }>Paquist�o</option>
                            <option value="Paraguai" ${fornecedor.nacionalidade ==  "Paraguai" ? 'selected' : '' }>Paraguai</option>
                            <option value="Pa�s de Gales" ${fornecedor.nacionalidade ==  "Pa�s de Gales" ? 'selected' : '' }>Pa�s de Gales</option>
                            <option value="Pa�ses Baixos" ${fornecedor.nacionalidade ==  "Pa�ses Baixos" ? 'selected' : '' }>Pa�ses Baixos</option>
                            <option value="Peru" ${fornecedor.nacionalidade ==  "Peru" ? 'selected' : '' }>Peru</option>
                            <option value="Pitcairn" ${fornecedor.nacionalidade ==  "Pitcairn" ? 'selected' : '' }>Pitcairn</option>
                            <option value="Polin�sia Francesa" ${fornecedor.nacionalidade ==  "Polin�sia Francesa" ? 'selected' : '' }>Polin�sia Francesa</option>
                            <option value="Pol�nia" ${fornecedor.nacionalidade ==  "Pol�nia" ? 'selected' : '' }>Pol�nia</option>
                            <option value="Porto Rico" ${fornecedor.nacionalidade ==  "Porto Rico" ? 'selected' : '' }>Porto Rico</option>
                            <option value="Portugal" ${fornecedor.nacionalidade ==  "Portugal" ? 'selected' : '' }>Portugal</option>
                            <option value="Quirguist�o" ${fornecedor.nacionalidade ==  "Quirguist�o" ? 'selected' : '' }>Quirguist�o</option>
                            <option value="Qu�nia" ${fornecedor.nacionalidade ==  "Qu�nia" ? 'selected' : '' }>Qu�nia</option>
                            <option value="Reino Unido" ${fornecedor.nacionalidade ==  "Reino Unido" ? 'selected' : '' }>Reino Unido</option>
                            <option value="Rep�blica Centro-Africana" ${fornecedor.nacionalidade ==  "Rep�blica Centro-Africana" ? 'selected' : '' }>Rep�blica Centro-Africana</option>
                            <option value="Rep�blica Checa" ${fornecedor.nacionalidade ==  "Rep�blica Checa" ? 'selected' : '' }>Rep�blica Checa</option>
                            <option value="Rep�blica Democr�tica do Congo" ${fornecedor.nacionalidade ==  "Rep�blica Democr�tica do Congo" ? 'selected' : '' }>Rep�blica Democr�tica do Congo</option>
                            <option value="Rep�blica do Congo" ${fornecedor.nacionalidade ==  "Rep�blica do Congo" ? 'selected' : '' }>Rep�blica do Congo</option>
                            <option value="Rep�blica Dominicana" ${fornecedor.nacionalidade ==  "Rep�blica Dominicana" ? 'selected' : '' }>Rep�blica Dominicana</option>
                            <option value="Reuni�o" ${fornecedor.nacionalidade ==  "Reuni�o" ? 'selected' : '' }>Reuni�o</option>
                            <option value="Rom�nia" ${fornecedor.nacionalidade ==  "Rom�nia" ? 'selected' : '' }>Rom�nia</option>
                            <option value="Ruanda" ${fornecedor.nacionalidade ==  "Ruanda" ? 'selected' : '' }>Ruanda</option>
                            <option value="R�ssia" ${fornecedor.nacionalidade ==  "R�ssia" ? 'selected' : '' }>R�ssia</option>
                            <option value="Sahara Ocidental"${fornecedor.nacionalidade ==  "Sahara Ocidental" ? 'selected' : '' }>Sahara Ocidental</option>
                            <option value="Saint Martin" ${fornecedor.nacionalidade ==  "Saint Martin" ? 'selected' : '' }>Saint Martin</option>
                            <option value="Saint-Barth�lemy" ${fornecedor.nacionalidade ==  "Saint-Barth�lemy" ? 'selected' : '' }>Saint-Barth�lemy</option>
                            <option value="Saint-Pierre e Miquelon" ${fornecedor.nacionalidade ==  "Saint-Pierre e Miquelon" ? 'selected' : '' }>Saint-Pierre e Miquelon</option>
                            <option value="Samoa Americana" ${fornecedor.nacionalidade ==  "Samoa Americana" ? 'selected' : '' }>Samoa Americana</option>
                            <option value="Samoa" ${fornecedor.nacionalidade ==  "Samoa" ? 'selected' : '' }>Samoa</option>
                            <option value="Santa Helena, Ascens�o e Trist�o da Cunha" ${fornecedor.nacionalidade ==  "Santa Helena, Ascens�o e Trist�o da Cunha" ? 'selected' : '' }>Santa Helena, Ascens�o e Trist�o da Cunha</option>
                            <option value="Santa L�cia" ${fornecedor.nacionalidade ==  "Santa L�cia" ? 'selected' : '' }>Santa L�cia</option>
                            <option value="Senegal" ${fornecedor.nacionalidade ==  "Senegal" ? 'selected' : '' }>Senegal</option>
                            <option value="Serra Leoa" ${fornecedor.nacionalidade ==  "Serra Leoa" ? 'selected' : '' }>Serra Leoa</option>
                            <option value="Seychelles" ${fornecedor.nacionalidade ==  "Seychelles" ? 'selected' : '' }>Seychelles</option>
                            <option value="Singapura" ${fornecedor.nacionalidade ==  "Singapura" ? 'selected' : '' }>Singapura</option>
                            <option value="Som�lia" ${fornecedor.nacionalidade ==  "Som�lia" ? 'selected' : '' }>Som�lia</option>
                            <option value="Sri Lanka" ${fornecedor.nacionalidade ==  "Sri Lanka" ? 'selected' : '' }>Sri Lanka</option>
                            <option value="Suazil�ndia" ${fornecedor.nacionalidade ==  "Suazil�ndia" ? 'selected' : '' }>Suazil�ndia</option>
                            <option value="Sud�o" ${fornecedor.nacionalidade ==  "Sud�o" ? 'selected' : '' }>Sud�o</option>
                            <option value="Suriname" ${fornecedor.nacionalidade ==  "Suriname" ? 'selected' : '' }>Suriname</option>
                            <option value="Su�cia" ${fornecedor.nacionalidade ==  "Su�cia" ? 'selected' : '' }>Su�cia</option>
                            <option value="Su��a" ${fornecedor.nacionalidade ==  "Su��a" ? 'selected' : '' }>Su��a</option>
                            <option value="Svalbard e Jan Mayen" ${fornecedor.nacionalidade ==  "Svalbard e Jan Mayen" ? 'selected' : '' }>Svalbard e Jan Mayen</option>
                            <option value="S�o Crist�v�o e Nevis" ${fornecedor.nacionalidade ==  "S�o Crist�v�o e Nevis" ? 'selected' : '' }>S�o Crist�v�o e Nevis</option>
                            <option value="S�o Marino" ${fornecedor.nacionalidade ==  "S�o Marino" ? 'selected' : '' }>S�o Marino</option>
                            <option value="S�o Tom� e Pr�ncipe" ${fornecedor.nacionalidade ==  "S�o Tom� e Pr�ncipe" ? 'selected' : '' }>S�o Tom� e Pr�ncipe</option>
                            <option value="S�o Vicente e Granadinas" ${fornecedor.nacionalidade ==  "S�o Vicente e Granadinas" ? 'selected' : '' }>S�o Vicente e Granadinas</option>
                            <option value="S�rvia" ${fornecedor.nacionalidade ==  "S�rvia" ? 'selected' : '' }>S�rvia</option>
                            <option value="S�ria" ${fornecedor.nacionalidade ==  "S�ria" ? 'selected' : '' }>S�ria</option>
                            <option value="Tadjiquist�o" ${fornecedor.nacionalidade ==  "Tadjiquist�o" ? 'selected' : '' }>Tadjiquist�o</option>
                            <option value="Tail�ndia" ${fornecedor.nacionalidade ==  "Tail�ndia" ? 'selected' : '' }>Tail�ndia</option>
                            <option value="Taiwan"  ${fornecedor.nacionalidade ==  "Taiwan" ? 'selected' : '' }>Taiwan</option>
                            <option value="Tanz�nia" ${fornecedor.nacionalidade ==  "Tanz�nia" ? 'selected' : '' }>Tanz�nia</option>
                            <option value="Terras Austrais e Ant�rticas Francesas" ${fornecedor.nacionalidade ==  "Terras Austrais e Ant�rticas Francesas" ? 'selected' : '' }>Terras Austrais e Ant�rticas Francesas</option>
                            <option value="Territ�rio Brit�nico do Oceano �ndico" ${fornecedor.nacionalidade ==  "Territ�rio Brit�nico do Oceano �ndico" ? 'selected' : '' }>Territ�rio Brit�nico do Oceano �ndico</option>
                            <option value="Timor-Leste" ${fornecedor.nacionalidade ==  "Timor-Leste" ? 'selected' : '' }>Timor-Leste</option>
                            <option value="Togo" ${fornecedor.nacionalidade ==  "Togo" ? 'selected' : '' }>Togo</option>
                            <option value="Tonga" ${fornecedor.nacionalidade ==  "tonga" ? 'selected' : '' }>Tonga</option>
                            <option value="Toquelau" ${fornecedor.nacionalidade ==  "Toquelau" ? 'selected' : '' }>Toquelau</option>
                            <option value="Trinidad e Tobago" ${fornecedor.nacionalidade ==  "Trinidad e Tobago" ? 'selected' : '' }>Trinidad e Tobago</option>
                            <option value="Tun�sia" ${fornecedor.nacionalidade ==  "Tun�sia" ? 'selected' : '' }>Tun�sia</option>
                            <option value="Turcas e Caicos"  ${fornecedor.nacionalidade ==  "Turcas e Caicos" ? 'selected' : '' }>Turcas e Caicos</option>
                            <option value="Turquemenist�o"  ${fornecedor.nacionalidade ==  "Turquemenist�o" ? 'selected' : '' }>Turquemenist�o</option>
                            <option value="Turquia" ${fornecedor.nacionalidade ==  "Turquia" ? 'selected' : '' }>Turquia</option>
                            <option value="Tuvalu" ${fornecedor.nacionalidade ==  "Tuvalu" ? 'selected' : '' }>Tuvalu</option>
                            <option value="Ucr�nia" ${fornecedor.nacionalidade ==  "Ucr�nia" ? 'selected' : '' }>Ucr�nia</option>
                            <option value="Uganda" ${fornecedor.nacionalidade ==  "Uganda" ? 'selected' : '' }>Uganda</option>
                            <option value="Uruguai" ${fornecedor.nacionalidade ==  "Uruguai" ? 'selected' : '' }>Uruguai</option>
                            <option value="Uzbequist�o" ${fornecedor.nacionalidade ==  "Uzbequist�o" ? 'selected' : '' }>Uzbequist�o</option>
                            <option value="Vanuatu" ${fornecedor.nacionalidade ==  "Vanuatu" ? 'selected' : '' }>Vanuatu</option>
                            <option value="Vaticano" ${fornecedor.nacionalidade ==  "Vaticano" ? 'selected' : '' }>Vaticano</option>
                            <option value="Venezuela" ${fornecedor.nacionalidade ==  "Venezuela" ? 'selected' : '' }>Venezuela</option>
                            <option value="Vietname" ${fornecedor.nacionalidade ==  "Vietname" ? 'selected' : '' }>Vietname</option>
                            <option value="Wallis e Futuna" ${fornecedor.nacionalidade ==  "Wallis e Futuna" ? 'selected' : '' }>Wallis e Futuna</option>
                            <option value="Zimbabwe" ${fornecedor.nacionalidade ==  "Zimbabwe" ? 'selected' : '' }>Zimbabwe</option>
                            <option value="Z�mbia" ${fornecedor.nacionalidade ==  "Z�mbia" ? 'selected' : '' }>Z�mbia</option>
                        </select>
                
                </div>
                
               
                <div class="input-box">
                    <span class="detail">E-mail:</span>
                    <input type="email" name="email" id="email" placeholder="Digite o seu e-mail" value="${fornecedor.email }" required>
                </div>
                <div class="input-box">
                    <span class="detail">Telefone:</span>
                    <input type="tel" name="telefone" id="telefone" placeholder="Digite o seu n�mero de telefone" value="${fornecedor.telefone }" required>
                </div>
                 <div class="input-box">
                    <span class="detail">Senha:</span>
                    <input type="text" name="senha" id="senha" value="${fornecedor.senha }">
                </div>
               
            </div>
            <div class="gender-detail">
                <input type="radio" name="genero" id="dot-1" value="Masculino">
                <input type="radio" name="genero" id="dot-2" value="Feminino">
                <input type="radio" name="genero" id="dot-3" value="Indefinido">
                <span class="gender-tittle">G�nero</span>
                <div class="category">
                    <label for="dot-1" name="genero">
                        <span class="dot one" name="genero"></span>
                        <span class="genero" name="genero">Masculino</span>
                    </label>
                    <label for="dot-2" name="genero">
                        <span class="dot two" name="genero"></span>
                        <span class="genero" name="genero">Feminino</span>
                    </label>
                    <label for="dot-3" name="genero">
                        <span class="dot three" name="genero"></span>
                        <span class="genero" name="genero">Prefiro n�o informar</span>
                    </label>
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