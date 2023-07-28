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
                    <span class="detail">Código:</span>
                    <input type="text" name="codigo" placeholder="Não precisa preencher" style="border:solid 1px red; border-bottom-width: 2px;" readonly="readonly" class="theCode" value="${fornecedor.codigo }"  >
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
                    <span class="detail">Endereço:</span>
                    <input type="text" name="endereco" placeholder="Digite o seu endereço" value="${fornecedor.endereco }" required>
                </div>
                <div class="input-box">
                    <span class="detail">Data de Nascimento:</span>
                    <input type="date" name="dataNascimento" id="dataNascimento" placeholder="Ano-Mês-Dia" value="${fornecedor.dataNascimento }"required>
                </div>
                   <div class="input-box">
                    <span class="detail">Nacionalidade:</span>
                    <select name="nacionalidade" id="nacionalidade" required style="border:solid 1px red; border-bottom-width: 2px;">
                        <option disabled selected value="" style="background: red; color: #fff;">Selecione um País</option>
                            <option value="Brasil" ${fornecedor.nacionalidade ==  "Brasil" ? 'selected' : '' }>Brasil</option>
                            <option value="Afeganistão" ${fornecedor.nacionalidade ==  "Afeganistão" ? 'selected' : '' }>Afeganistão</option>
                            <option value="África do Sul" ${fornecedor.nacionalidade ==  "África do Sul" ? 'selected' : '' }>África do Sul</option>
                            <option value="Albânia" ${fornecedor.nacionalidade ==  "Albânia" ? 'selected' : '' }>Albânia</option>
                            <option value="Alemanha" ${fornecedor.nacionalidade ==  "Alemanha" ? 'selected' : '' }>Alemanha</option>
                            <option value="Andorra" ${fornecedor.nacionalidade ==  "Andorra" ? 'selected' : '' }>Andorra</option>
                            <option value="Angola" ${fornecedor.nacionalidade ==  "Angola" ? 'selected' : '' }>Angola</option>
                            <option value="Anguilla" ${fornecedor.nacionalidade ==  "Anguilla" ? 'selected' : '' }>Anguilla</option>
                            <option value="Antilhas Holandesas" ${fornecedor.nacionalidade ==  "Antilhas Holandesas" ? 'selected' : '' }>Antilhas Holandesas</option>
                            <option value="Antárctida" ${fornecedor.nacionalidade ==  "Antárctida" ? 'selected' : '' }>Antárctida</option>
                            <option value="Antígua e Barbuda" ${fornecedor.nacionalidade ==  "Antígua e Barbuda" ? 'selected' : '' }>Antígua e Barbuda</option>
                            <option value="Argentina" ${fornecedor.nacionalidade ==  "Argentina" ? 'selected' : '' }>Argentina</option>
                            <option value="Argélia" ${fornecedor.nacionalidade ==  "Argélia" ? 'selected' : '' }>Argélia</option>
                            <option value="Armênia" ${fornecedor.nacionalidade ==  "Armênia" ? 'selected' : '' }>Armênia</option>
                            <option value="Aruba" ${fornecedor.nacionalidade ==  "Aruba" ? 'selected' : '' }>Aruba</option>
                            <option value="Arábia Saudita" ${fornecedor.nacionalidade ==  "Arábia Saudita" ? 'selected' : '' }>Arábia Saudita</option>
                            <option value="Austrália" ${fornecedor.nacionalidade ==  "Austrália" ? 'selected' : '' }>Austrália</option>
                            <option value="Áustria" ${fornecedor.nacionalidade ==  "Áustria" ? 'selected' : '' }>Áustria</option>
                            <option value="Azerbaijão" ${fornecedor.nacionalidade ==  "Azerbaijão" ? 'selected' : '' }>Azerbaijão</option>
                            <option value="Bahamas" ${fornecedor.nacionalidade ==  "Bahamas" ? 'selected' : '' }>Bahamas</option>
                            <option value="Bahrein" ${fornecedor.nacionalidade ==  "Bahrein" ? 'selected' : '' }>Bahrein</option>
                            <option value="Bangladesh" ${fornecedor.nacionalidade ==  "Bangladesh" ? 'selected' : '' }>Bangladesh</option>
                            <option value="Barbados" ${fornecedor.nacionalidade ==  "Barbados" ? 'selected' : '' }>Barbados</option>
                            <option value="Belize" ${fornecedor.nacionalidade ==  "Belize" ? 'selected' : '' }>Belize</option>
                            <option value="Benim" ${fornecedor.nacionalidade ==  "Benin" ? 'selected' : '' }>Benim</option>
                            <option value="Bermudas" ${fornecedor.nacionalidade ==  "Bermudas" ? 'selected' : '' }>Bermudas</option>
                            <option value="Bielorrússia" ${fornecedor.nacionalidade ==  "Bielorrússia" ? 'selected' : '' }>Bielorrússia</option>
                            <option value="Bolívia" ${fornecedor.nacionalidade ==  "Bolívia" ? 'selected' : '' }>Bolívia</option>
                            <option value="Botswana" ${fornecedor.nacionalidade ==  "Botswana" ? 'selected' : '' }>Botswana</option>
                            <option value="Brunei" ${fornecedor.nacionalidade ==  "Brunei" ? 'selected' : '' }>Brunei</option>
                            <option value="Bulgária" ${fornecedor.nacionalidade ==  "Bulgária" ? 'selected' : '' }>Bulgária</option>
                            <option value="Burkina Faso" ${fornecedor.nacionalidade ==  "Burkina Faso" ? 'selected' : '' }>Burkina Faso</option>
                            <option value="Burundi" ${fornecedor.nacionalidade ==  "Burundi" ? 'selected' : '' }>Burundi</option>
                            <option value="Butão" ${fornecedor.nacionalidade ==  "Butão" ? 'selected' : '' }>Butão</option>
                            <option value="Bélgica" ${fornecedor.nacionalidade ==  "Bélgica" ? 'selected' : '' }>Bélgica</option>
                            <option value="Bósnia e Herzegovina" ${fornecedor.nacionalidade ==  "Bósnia e Herzegovina" ? 'selected' : '' }>Bósnia e Herzegovina</option>
                            <option value="Cabo Verde" ${fornecedor.nacionalidade ==  "Cabo Verde" ? 'selected' : '' }>Cabo Verde</option>
                            <option value="Camarões" ${fornecedor.nacionalidade ==  "Camarões" ? 'selected' : '' }>Camarões</option>
                            <option value="Camboja" ${fornecedor.nacionalidade ==  "Camboja" ? 'selected' : '' }>Camboja</option>
                            <option value="Canadá" ${fornecedor.nacionalidade ==  "Canadá" ? 'selected' : '' }>Canadá</option>
                            <option value="Catar" ${fornecedor.nacionalidade ==  "Catar" ? 'selected' : '' }>Catar</option>
                            <option value="Cazaquistão" ${fornecedor.nacionalidade ==  "Cazaquistão" ? 'selected' : '' }>Cazaquistão</option>
                            <option value="Chade" ${fornecedor.nacionalidade ==  "Chade" ? 'selected' : '' }>Chade</option>
                            <option value="Chile" ${fornecedor.nacionalidade ==  "Chile" ? 'selected' : '' }>Chile</option>
                            <option value="China" ${fornecedor.nacionalidade ==  "China" ? 'selected' : '' }>China</option>
                            <option value="Chipre" ${fornecedor.nacionalidade ==  "Chipre" ? 'selected' : '' }>Chipre</option>
                            <option value="Colômbia" ${fornecedor.nacionalidade ==  "Colômbia" ? 'selected' : '' }>Colômbia</option>
                            <option value="Comores" ${fornecedor.nacionalidade ==  "Comores" ? 'selected' : '' }>Comores</option>
                            <option value="Coreia do Norte" ${fornecedor.nacionalidade ==  "Coreia do Norte" ? 'selected' : '' }>Coreia do Norte</option>
                            <option value="Coreia do Sul" ${fornecedor.nacionalidade ==  "Coreia do Sul" ? 'selected' : '' }>Coreia do Sul</option>
                            <option value="Costa do Marfim" ${fornecedor.nacionalidade ==  "Costa do Marfim" ? 'selected' : '' }>Costa do Marfim</option>
                            <option value="Costa Rica" ${fornecedor.nacionalidade ==  "Costa Rica" ? 'selected' : '' }>Costa Rica</option>
                            <option value="Croácia" ${fornecedor.nacionalidade ==  "Croácia" ? 'selected' : '' }>Croácia</option>
                            <option value="Cuba" ${fornecedor.nacionalidade ==  "Cuba" ? 'selected' : '' }>Cuba</option>
                            <option value="Dinamarca" ${fornecedor.nacionalidade ==  "Dinamarca" ? 'selected' : '' }>Dinamarca</option>
                            <option value="Djibouti" ${fornecedor.nacionalidade ==  "Djibouti" ? 'selected' : '' }>Djibouti</option>
                            <option value="Dominica" ${fornecedor.nacionalidade ==  "Dominica" ? 'selected' : '' }>Dominica</option>
                            <option value="Egito" ${fornecedor.nacionalidade ==  "Egito" ? 'selected' : '' }>Egito</option>
                            <option value="El Salvador" ${fornecedor.nacionalidade ==  "El Salvador" ? 'selected' : '' }>El Salvador</option>
                            <option value="Emirados Árabes Unidos" ${fornecedor.nacionalidade ==  "Emirados Árabe Unidos" ? 'selected' : '' }>Emirados Árabes Unidos</option>
                            <option value="Equador" ${fornecedor.nacionalidade ==  "Equador" ? 'selected' : '' }>Equador</option>
                            <option value="Eritreia" ${fornecedor.nacionalidade ==  "Eritreia" ? 'selected' : '' }>Eritreia</option>
                            <option value="Escócia" ${fornecedor.nacionalidade ==  "Escócia" ? 'selected' : '' }>Escócia</option>
                            <option value="Eslováquia" ${fornecedor.nacionalidade ==  "Eslováquia" ? 'selected' : '' }>Eslováquia</option>
                            <option value="Eslovênia" ${fornecedor.nacionalidade ==  "Eslovênia" ? 'selected' : '' }>Eslovênia</option>
                            <option value="Espanha"  ${fornecedor.nacionalidade ==  "Espanha" ? 'selected' : '' }>Espanha</option>
                            <option value="Estados Federados da Micronésia"  ${fornecedor.nacionalidade ==  "Estados Federados da Micronésia" ? 'selected' : '' }>Estados Federados da Micronésia</option>
                            <option value="Estados Unidos da América"  ${fornecedor.nacionalidade ==  "Estados Unidos da América" ? 'selected' : '' }>Estados Unidos</option>
                            <option value="Estônia"  ${fornecedor.nacionalidade ==  "Estônia" ? 'selected' : '' }>Estônia</option>
                            <option value="Etiópia"  ${fornecedor.nacionalidade ==  "Etiópia" ? 'selected' : '' }>Etiópia</option>
                            <option value="Fiji"  ${fornecedor.nacionalidade ==  "Fiji" ? 'selected' : '' }>Fiji</option>
                            <option value="Filipinas"  ${fornecedor.nacionalidade ==  "Filipinas" ? 'selected' : '' }>Filipinas</option>
                            <option value="Finlândia"  ${fornecedor.nacionalidade ==  "Finlândia" ? 'selected' : '' }>Finlândia</option>
                            <option value="França"  ${fornecedor.nacionalidade ==  "França" ? 'selected' : '' }>França</option>
                            <option value="Gabão"  ${fornecedor.nacionalidade ==  "Gabão" ? 'selected' : '' }>Gabão</option>
                            <option value="Gana"  ${fornecedor.nacionalidade ==  "Gana" ? 'selected' : '' }>Gana</option>
                            <option value="Geórgia"  ${fornecedor.nacionalidade ==  "Geórgia" ? 'selected' : '' }>Geórgia</option>
                            <option value="Gibraltar"  ${fornecedor.nacionalidade ==  "Gibraltar" ? 'selected' : '' }>Gibraltar</option>
                            <option value="Granada"  ${fornecedor.nacionalidade ==  "Granada" ? 'selected' : '' }>Granada</option>
                            <option value="Gronelândia"  ${fornecedor.nacionalidade ==  "Gronelândia" ? 'selected' : '' }>Gronelândia</option>
                            <option value="Grécia" ${fornecedor.nacionalidade ==  "Grécia" ? 'selected' : '' }>Grécia</option>
                            <option value="Guadalupe" ${fornecedor.nacionalidade ==  "Guadalupe" ? 'selected' : '' }>Guadalupe</option>
                            <option value="Guam" ${fornecedor.nacionalidade ==  "Guam" ? 'selected' : '' }>Guam</option>
                            <option value="Guatemala" ${fornecedor.nacionalidade ==  "Guatemala" ? 'selected' : '' }>Guatemala</option>
                            <option value="Guernesei" ${fornecedor.nacionalidade ==  "Guernesei" ? 'selected' : '' }>Guernesei</option>
                            <option value="Guiana" ${fornecedor.nacionalidade ==  "Guiana" ? 'selected' : '' }>Guiana</option>
                            <option value="Guiana Francesa" ${fornecedor.nacionalidade ==  "Guiana Francesa" ? 'selected' : '' }>Guiana Francesa</option>
                            <option value="Guiné" ${fornecedor.nacionalidade ==  "Guiné" ? 'selected' : '' }>Guiné</option>
                            <option value="Guiné Equatorial" ${fornecedor.nacionalidade ==  "Guiné Equatorial" ? 'selected' : '' }>Guiné Equatorial</option>
                            <option value="Guiné-Bissau" ${fornecedor.nacionalidade ==  "Guiné-Bissau" ? 'selected' : '' }>Guiné-Bissau</option>
                            <option value="Gâmbia" ${fornecedor.nacionalidade ==  "Gâmbia" ? 'selected' : '' }>Gâmbia</option>
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
                            <option value="Ilhas Feroé" ${fornecedor.nacionalidade ==  "Ilhas Feroé" ? 'selected' : '' }>Ilhas Feroé</option>
                            <option value="Ilhas Geórgia do Sul e Sandwich do Sul" ${fornecedor.nacionalidade ==  "Ilhas Geórgia do Sul e Sandwich do Sul" ? 'selected' : '' }>Ilhas Geórgia do Sul e Sandwich do Sul</option>
                            <option value="Ilhas Malvinas" ${fornecedor.nacionalidade ==  "Ilhas Malvinas" ? 'selected' : '' }>Ilhas Malvinas</option>
                            <option value="Ilhas Marshall" ${fornecedor.nacionalidade ==  "Ilhas Marshall" ? 'selected' : '' }>Ilhas Marshall</option>
                            <option value="Ilhas Menores Distantes dos Estados Unidos" ${fornecedor.nacionalidade ==  "Ilhas Menores Distantes dos Estados Unidos" ? 'selected' : '' }>Ilhas Menores Distantes dos Estados Unidos</option>
                            <option value="Ilhas Salomão" ${fornecedor.nacionalidade ==  "Ilhas Salomão" ? 'selected' : '' }>Ilhas Salomão</option>
                            <option value="Ilhas Virgens Americanas" ${fornecedor.nacionalidade ==  "Ilhas Virgens Americanas" ? 'selected' : '' }>Ilhas Virgens Americanas</option>
                            <option value="Ilhas Virgens Britânicas" ${fornecedor.nacionalidade ==  "Ilhas Virgens Britânicas" ? 'selected' : '' }>Ilhas Virgens Britânicas</option>
                            <option value="Ilhas Åland" ${fornecedor.nacionalidade ==  "Ilhas Åland" ? 'selected' : '' }>Ilhas Åland</option>
                            <option value="Indonésia" ${fornecedor.nacionalidade ==  "Indonésia" ? 'selected' : '' }>Indonésia</option>
                            <option value="Inglaterra" ${fornecedor.nacionalidade ==  "Inglaterra" ? 'selected' : '' }>Inglaterra</option>
                            <option value="Índia"  ${fornecedor.nacionalidade ==  "Índia" ? 'selected' : '' }>Índia</option>
                            <option value="Iraque"  ${fornecedor.nacionalidade ==  "Iraque" ? 'selected' : '' }>Iraque</option>
                            <option value="Irlanda do Norte"  ${fornecedor.nacionalidade ==  "Irlanda do Norte" ? 'selected' : '' }>Irlanda do Norte</option>
                            <option value="Irlanda"  ${fornecedor.nacionalidade ==  "Irlanda" ? 'selected' : '' }>Irlanda</option>
                            <option value="Irã"  ${fornecedor.nacionalidade ==  "Irã" ? 'selected' : '' }>Irã</option>
                            <option value="Islândia" ${fornecedor.nacionalidade ==  "Islândia" ? 'selected' : '' }>Islândia</option>
                            <option value="Israel" ${fornecedor.nacionalidade ==  "Israel" ? 'selected' : '' }>Israel</option>
                            <option value="Itália" ${fornecedor.nacionalidade ==  "Itália" ? 'selected' : '' }>Itália</option>
                            <option value="Iêmen" ${fornecedor.nacionalidade ==  "Iêmen" ? 'selected' : '' }>Iêmen</option>
                            <option value="Jamaica" ${fornecedor.nacionalidade ==  "Jamaica" ? 'selected' : '' }>Jamaica</option>
                            <option value="Japão" ${fornecedor.nacionalidade ==  "Japão" ? 'selected' : '' }>Japão</option>
                            <option value="Jersey" ${fornecedor.nacionalidade ==  "Jersey" ? 'selected' : '' }>Jersey</option>
                            <option value="Jordânia" ${fornecedor.nacionalidade ==  "Jordânia" ? 'selected' : '' }>Jordânia</option>
                            <option value="Kiribati" ${fornecedor.nacionalidade ==  "Kiribati" ? 'selected' : '' }>Kiribati</option>
                            <option value="Kuwait" ${fornecedor.nacionalidade ==  "Kuwait" ? 'selected' : '' }>Kuwait</option>
                            <option value="Laos" ${fornecedor.nacionalidade ==  "Laos" ? 'selected' : '' }>Laos</option>
                            <option value="Lesoto" ${fornecedor.nacionalidade ==  "Lesoto" ? 'selected' : '' }>Lesoto</option>
                            <option value="Letônia" ${fornecedor.nacionalidade ==  "Letônia" ? 'selected' : '' }>Letônia</option>
                            <option value="Libéria" ${fornecedor.nacionalidade ==  "Libéria" ? 'selected' : '' }>Libéria</option>
                            <option value="Liechtenstein" ${fornecedor.nacionalidade ==  "Liechtenstein" ? 'selected' : '' }>Liechtenstein</option>
                            <option value="Lituânia" ${fornecedor.nacionalidade ==  "Lituânia" ? 'selected' : '' }>Lituânia</option>
                            <option value="Luxemburgo" ${fornecedor.nacionalidade ==  "Luxemburgo" ? 'selected' : '' }>Luxemburgo</option>
                            <option value="Líbano" ${fornecedor.nacionalidade ==  "Líbano" ? 'selected' : '' }>Líbano</option>
                            <option value="Líbia" ${fornecedor.nacionalidade ==  "Líbia" ? 'selected' : '' }>Líbia</option>
                            <option value="Macau" ${fornecedor.nacionalidade ==  "Macau" ? 'selected' : '' }>Macau</option>
                            <option value="Macedônia" ${fornecedor.nacionalidade ==  "Macedônia" ? 'selected' : '' }>Macedônia</option>
                            <option value="Madagáscar" ${fornecedor.nacionalidade ==  "Madagáscar" ? 'selected' : '' }>Madagáscar</option>
                            <option value="Malawi" ${fornecedor.nacionalidade ==  "Malawi" ? 'selected' : '' }>Malawi</option>
                            <option value="Maldivas" ${fornecedor.nacionalidade ==  "Maldivas" ? 'selected' : '' }>Maldivas</option>
                            <option value="Mali" ${fornecedor.nacionalidade ==  "Mali" ? 'selected' : '' }>Mali</option>
                            <option value="Malta" ${fornecedor.nacionalidade ==  "Malta" ? 'selected' : '' }>Malta</option>
                            <option value="Malásia" ${fornecedor.nacionalidade ==  "Malásia" ? 'selected' : '' }>Malásia</option>
                            <option value="Marianas Setentrionais" ${fornecedor.nacionalidade ==  "Marianas Setentrionais" ? 'selected' : '' }>Marianas Setentrionais</option>
                            <option value="Marrocos" ${fornecedor.nacionalidade ==  "Marrocos" ? 'selected' : '' }>Marrocos</option>
                            <option value="Martinica" ${fornecedor.nacionalidade ==  "Martinica" ? 'selected' : '' }>Martinica</option>
                            <option value="Mauritânia" ${fornecedor.nacionalidade ==  "Mauritânia" ? 'selected' : '' }>Mauritânia</option>
                            <option value="Maurícia" ${fornecedor.nacionalidade ==  "Maurícia" ? 'selected' : '' }>Maurícia</option>
                            <option value="Mayotte" ${fornecedor.nacionalidade ==  "Mayotte" ? 'selected' : '' }>Mayotte</option>
                            <option value="Moldávia" ${fornecedor.nacionalidade ==  "Moldávia" ? 'selected' : '' }>Moldávia</option>
                            <option value="Mongólia" ${fornecedor.nacionalidade ==  "Mongólia" ? 'selected' : '' }>Mongólia</option>
                            <option value="Montenegro" ${fornecedor.nacionalidade ==  "Montenegro" ? 'selected' : '' }>Montenegro</option>
                            <option value="Montserrat" ${fornecedor.nacionalidade ==  "Montserrat" ? 'selected' : '' }>Montserrat</option>
                            <option value="Moçambique" ${fornecedor.nacionalidade ==  "Moçambique" ? 'selected' : '' }>Moçambique</option>
                            <option value="Myanmar" ${fornecedor.nacionalidade ==  "Myanmar" ? 'selected' : '' }>Myanmar</option>
                            <option value="México" ${fornecedor.nacionalidade ==  "México" ? 'selected' : '' }>México</option>
                            <option value="Mônaco" ${fornecedor.nacionalidade ==  "Mônaco" ? 'selected' : '' }>Mônaco</option>
                            <option value="Namíbia" ${fornecedor.nacionalidade ==  "Namíbia" ? 'selected' : '' }>Namíbia</option>
                            <option value="Nauru" ${fornecedor.nacionalidade ==  "Nauru" ? 'selected' : '' }>Nauru</option>
                            <option value="Nepal" ${fornecedor.nacionalidade ==  "Nepal" ? 'selected' : '' }>Nepal</option>
                            <option value="Nicarágua" ${fornecedor.nacionalidade ==  "Nicarágua" ? 'selected' : '' }>Nicarágua</option>
                            <option value="Nigéria" ${fornecedor.nacionalidade ==  "Nigéria" ? 'selected' : '' }>Nigéria</option>
                            <option value="Niue" ${fornecedor.nacionalidade ==  "Niue" ? 'selected' : '' }>Niue</option>
                            <option value="Noruega" ${fornecedor.nacionalidade ==  "Noruega" ? 'selected' : '' }>Noruega</option>
                            <option value="Nova Caledônia" ${fornecedor.nacionalidade ==  "Nova Caledônia" ? 'selected' : '' }>Nova Caledônia</option>
                            <option value="Nova Zelândia" ${fornecedor.nacionalidade ==  "Nova Zelândia" ? 'selected' : '' }>Nova Zelândia</option>
                            <option value="Níger" ${fornecedor.nacionalidade ==  "Níger" ? 'selected' : '' }>Níger</option>
                            <option value="Omã" ${fornecedor.nacionalidade ==  "Omã" ? 'selected' : '' }>Omã</option>
                            <option value="Palau" ${fornecedor.nacionalidade ==  "Palau" ? 'selected' : '' }>Palau</option>
                            <option value="Palestina" ${fornecedor.nacionalidade ==  "Palestina" ? 'selected' : '' }>Palestina</option>
                            <option value="Panamá" ${fornecedor.nacionalidade ==  "Panamá" ? 'selected' : '' }>Panamá</option>
                            <option value="Papua-Nova Guiné" ${fornecedor.nacionalidade ==  "Papua-Nova Guiné" ? 'selected' : '' }>Papua-Nova Guiné</option>
                            <option value="Paquistão" ${fornecedor.nacionalidade ==  "Paquistão" ? 'selected' : '' }>Paquistão</option>
                            <option value="Paraguai" ${fornecedor.nacionalidade ==  "Paraguai" ? 'selected' : '' }>Paraguai</option>
                            <option value="País de Gales" ${fornecedor.nacionalidade ==  "País de Gales" ? 'selected' : '' }>País de Gales</option>
                            <option value="Países Baixos" ${fornecedor.nacionalidade ==  "Países Baixos" ? 'selected' : '' }>Países Baixos</option>
                            <option value="Peru" ${fornecedor.nacionalidade ==  "Peru" ? 'selected' : '' }>Peru</option>
                            <option value="Pitcairn" ${fornecedor.nacionalidade ==  "Pitcairn" ? 'selected' : '' }>Pitcairn</option>
                            <option value="Polinésia Francesa" ${fornecedor.nacionalidade ==  "Polinésia Francesa" ? 'selected' : '' }>Polinésia Francesa</option>
                            <option value="Polônia" ${fornecedor.nacionalidade ==  "Polônia" ? 'selected' : '' }>Polônia</option>
                            <option value="Porto Rico" ${fornecedor.nacionalidade ==  "Porto Rico" ? 'selected' : '' }>Porto Rico</option>
                            <option value="Portugal" ${fornecedor.nacionalidade ==  "Portugal" ? 'selected' : '' }>Portugal</option>
                            <option value="Quirguistão" ${fornecedor.nacionalidade ==  "Quirguistão" ? 'selected' : '' }>Quirguistão</option>
                            <option value="Quênia" ${fornecedor.nacionalidade ==  "Quênia" ? 'selected' : '' }>Quênia</option>
                            <option value="Reino Unido" ${fornecedor.nacionalidade ==  "Reino Unido" ? 'selected' : '' }>Reino Unido</option>
                            <option value="República Centro-Africana" ${fornecedor.nacionalidade ==  "República Centro-Africana" ? 'selected' : '' }>República Centro-Africana</option>
                            <option value="República Checa" ${fornecedor.nacionalidade ==  "República Checa" ? 'selected' : '' }>República Checa</option>
                            <option value="República Democrática do Congo" ${fornecedor.nacionalidade ==  "República Democrática do Congo" ? 'selected' : '' }>República Democrática do Congo</option>
                            <option value="República do Congo" ${fornecedor.nacionalidade ==  "República do Congo" ? 'selected' : '' }>República do Congo</option>
                            <option value="República Dominicana" ${fornecedor.nacionalidade ==  "República Dominicana" ? 'selected' : '' }>República Dominicana</option>
                            <option value="Reunião" ${fornecedor.nacionalidade ==  "Reunião" ? 'selected' : '' }>Reunião</option>
                            <option value="Romênia" ${fornecedor.nacionalidade ==  "Romênia" ? 'selected' : '' }>Romênia</option>
                            <option value="Ruanda" ${fornecedor.nacionalidade ==  "Ruanda" ? 'selected' : '' }>Ruanda</option>
                            <option value="Rússia" ${fornecedor.nacionalidade ==  "Rússia" ? 'selected' : '' }>Rússia</option>
                            <option value="Sahara Ocidental"${fornecedor.nacionalidade ==  "Sahara Ocidental" ? 'selected' : '' }>Sahara Ocidental</option>
                            <option value="Saint Martin" ${fornecedor.nacionalidade ==  "Saint Martin" ? 'selected' : '' }>Saint Martin</option>
                            <option value="Saint-Barthélemy" ${fornecedor.nacionalidade ==  "Saint-Barthélemy" ? 'selected' : '' }>Saint-Barthélemy</option>
                            <option value="Saint-Pierre e Miquelon" ${fornecedor.nacionalidade ==  "Saint-Pierre e Miquelon" ? 'selected' : '' }>Saint-Pierre e Miquelon</option>
                            <option value="Samoa Americana" ${fornecedor.nacionalidade ==  "Samoa Americana" ? 'selected' : '' }>Samoa Americana</option>
                            <option value="Samoa" ${fornecedor.nacionalidade ==  "Samoa" ? 'selected' : '' }>Samoa</option>
                            <option value="Santa Helena, Ascensão e Tristão da Cunha" ${fornecedor.nacionalidade ==  "Santa Helena, Ascensão e Tristão da Cunha" ? 'selected' : '' }>Santa Helena, Ascensão e Tristão da Cunha</option>
                            <option value="Santa Lúcia" ${fornecedor.nacionalidade ==  "Santa Lúcia" ? 'selected' : '' }>Santa Lúcia</option>
                            <option value="Senegal" ${fornecedor.nacionalidade ==  "Senegal" ? 'selected' : '' }>Senegal</option>
                            <option value="Serra Leoa" ${fornecedor.nacionalidade ==  "Serra Leoa" ? 'selected' : '' }>Serra Leoa</option>
                            <option value="Seychelles" ${fornecedor.nacionalidade ==  "Seychelles" ? 'selected' : '' }>Seychelles</option>
                            <option value="Singapura" ${fornecedor.nacionalidade ==  "Singapura" ? 'selected' : '' }>Singapura</option>
                            <option value="Somália" ${fornecedor.nacionalidade ==  "Somália" ? 'selected' : '' }>Somália</option>
                            <option value="Sri Lanka" ${fornecedor.nacionalidade ==  "Sri Lanka" ? 'selected' : '' }>Sri Lanka</option>
                            <option value="Suazilândia" ${fornecedor.nacionalidade ==  "Suazilândia" ? 'selected' : '' }>Suazilândia</option>
                            <option value="Sudão" ${fornecedor.nacionalidade ==  "Sudão" ? 'selected' : '' }>Sudão</option>
                            <option value="Suriname" ${fornecedor.nacionalidade ==  "Suriname" ? 'selected' : '' }>Suriname</option>
                            <option value="Suécia" ${fornecedor.nacionalidade ==  "Suécia" ? 'selected' : '' }>Suécia</option>
                            <option value="Suíça" ${fornecedor.nacionalidade ==  "Suíça" ? 'selected' : '' }>Suíça</option>
                            <option value="Svalbard e Jan Mayen" ${fornecedor.nacionalidade ==  "Svalbard e Jan Mayen" ? 'selected' : '' }>Svalbard e Jan Mayen</option>
                            <option value="São Cristóvão e Nevis" ${fornecedor.nacionalidade ==  "São Cristóvão e Nevis" ? 'selected' : '' }>São Cristóvão e Nevis</option>
                            <option value="São Marino" ${fornecedor.nacionalidade ==  "São Marino" ? 'selected' : '' }>São Marino</option>
                            <option value="São Tomé e Príncipe" ${fornecedor.nacionalidade ==  "São Tomé e Príncipe" ? 'selected' : '' }>São Tomé e Príncipe</option>
                            <option value="São Vicente e Granadinas" ${fornecedor.nacionalidade ==  "São Vicente e Granadinas" ? 'selected' : '' }>São Vicente e Granadinas</option>
                            <option value="Sérvia" ${fornecedor.nacionalidade ==  "Sérvia" ? 'selected' : '' }>Sérvia</option>
                            <option value="Síria" ${fornecedor.nacionalidade ==  "Síria" ? 'selected' : '' }>Síria</option>
                            <option value="Tadjiquistão" ${fornecedor.nacionalidade ==  "Tadjiquistão" ? 'selected' : '' }>Tadjiquistão</option>
                            <option value="Tailândia" ${fornecedor.nacionalidade ==  "Tailândia" ? 'selected' : '' }>Tailândia</option>
                            <option value="Taiwan"  ${fornecedor.nacionalidade ==  "Taiwan" ? 'selected' : '' }>Taiwan</option>
                            <option value="Tanzânia" ${fornecedor.nacionalidade ==  "Tanzânia" ? 'selected' : '' }>Tanzânia</option>
                            <option value="Terras Austrais e Antárticas Francesas" ${fornecedor.nacionalidade ==  "Terras Austrais e Antárticas Francesas" ? 'selected' : '' }>Terras Austrais e Antárticas Francesas</option>
                            <option value="Território Britânico do Oceano Índico" ${fornecedor.nacionalidade ==  "Território Britânico do Oceano Índico" ? 'selected' : '' }>Território Britânico do Oceano Índico</option>
                            <option value="Timor-Leste" ${fornecedor.nacionalidade ==  "Timor-Leste" ? 'selected' : '' }>Timor-Leste</option>
                            <option value="Togo" ${fornecedor.nacionalidade ==  "Togo" ? 'selected' : '' }>Togo</option>
                            <option value="Tonga" ${fornecedor.nacionalidade ==  "tonga" ? 'selected' : '' }>Tonga</option>
                            <option value="Toquelau" ${fornecedor.nacionalidade ==  "Toquelau" ? 'selected' : '' }>Toquelau</option>
                            <option value="Trinidad e Tobago" ${fornecedor.nacionalidade ==  "Trinidad e Tobago" ? 'selected' : '' }>Trinidad e Tobago</option>
                            <option value="Tunísia" ${fornecedor.nacionalidade ==  "Tunísia" ? 'selected' : '' }>Tunísia</option>
                            <option value="Turcas e Caicos"  ${fornecedor.nacionalidade ==  "Turcas e Caicos" ? 'selected' : '' }>Turcas e Caicos</option>
                            <option value="Turquemenistão"  ${fornecedor.nacionalidade ==  "Turquemenistão" ? 'selected' : '' }>Turquemenistão</option>
                            <option value="Turquia" ${fornecedor.nacionalidade ==  "Turquia" ? 'selected' : '' }>Turquia</option>
                            <option value="Tuvalu" ${fornecedor.nacionalidade ==  "Tuvalu" ? 'selected' : '' }>Tuvalu</option>
                            <option value="Ucrânia" ${fornecedor.nacionalidade ==  "Ucrânia" ? 'selected' : '' }>Ucrânia</option>
                            <option value="Uganda" ${fornecedor.nacionalidade ==  "Uganda" ? 'selected' : '' }>Uganda</option>
                            <option value="Uruguai" ${fornecedor.nacionalidade ==  "Uruguai" ? 'selected' : '' }>Uruguai</option>
                            <option value="Uzbequistão" ${fornecedor.nacionalidade ==  "Uzbequistão" ? 'selected' : '' }>Uzbequistão</option>
                            <option value="Vanuatu" ${fornecedor.nacionalidade ==  "Vanuatu" ? 'selected' : '' }>Vanuatu</option>
                            <option value="Vaticano" ${fornecedor.nacionalidade ==  "Vaticano" ? 'selected' : '' }>Vaticano</option>
                            <option value="Venezuela" ${fornecedor.nacionalidade ==  "Venezuela" ? 'selected' : '' }>Venezuela</option>
                            <option value="Vietname" ${fornecedor.nacionalidade ==  "Vietname" ? 'selected' : '' }>Vietname</option>
                            <option value="Wallis e Futuna" ${fornecedor.nacionalidade ==  "Wallis e Futuna" ? 'selected' : '' }>Wallis e Futuna</option>
                            <option value="Zimbabwe" ${fornecedor.nacionalidade ==  "Zimbabwe" ? 'selected' : '' }>Zimbabwe</option>
                            <option value="Zâmbia" ${fornecedor.nacionalidade ==  "Zâmbia" ? 'selected' : '' }>Zâmbia</option>
                        </select>
                
                </div>
                
               
                <div class="input-box">
                    <span class="detail">E-mail:</span>
                    <input type="email" name="email" id="email" placeholder="Digite o seu e-mail" value="${fornecedor.email }" required>
                </div>
                <div class="input-box">
                    <span class="detail">Telefone:</span>
                    <input type="tel" name="telefone" id="telefone" placeholder="Digite o seu número de telefone" value="${fornecedor.telefone }" required>
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
                <span class="gender-tittle">Gênero</span>
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
                        <span class="genero" name="genero">Prefiro não informar</span>
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