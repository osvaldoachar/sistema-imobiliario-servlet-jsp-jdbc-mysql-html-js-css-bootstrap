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
.user-detail .input-box select:focus,
.user-detail .input-box select:valid{
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

        <form action="../../FornecedorServlet" method="post" enctype="multipart/form-data">
            <div class="user-detail">
               
                <div class="input-box">
                    <span class="detail">Nome:</span>
                    <input type="text" name="nome" placeholder="Digite o seu primeiro nome"  class="outrosIn"  required>
                </div>
                <div class="input-box">
                    <span class="detail">Apelido:</span>
                    <input type="text" name="apelido" placeholder="Digite o seu apelido" required>
                </div>
                <div class="input-box">
                    <span class="detail">Endereço:</span>
                    <input type="text" name="endereco" placeholder="Digite o seu endereço" required>
                </div>
                <div class="input-box">
                    <span class="detail">Data de Nascimento:</span>
                    <input type="date" name="dataNascimento" id="dataNascimento" required>
                </div>
                  <div class="input-box">
                    <span class="detail">Nacionalidade:</span>
                    <select name="nacionalidade" id="nacionalidade" required style="color: grey;">
                        <option disabled selected value="" style="background: red; color: #fff;">Selecione um País</option>
                            <option value="Brasil">Brasil</option>
                            <option value="Afeganistão">Afeganistão</option>
                            <option value="África do Sul">África do Sul</option>
                            <option value="Albânia">Albânia</option>
                            <option value="Alemanha">Alemanha</option>
                            <option value="Andorra">Andorra</option>
                            <option value="Angola">Angola</option>
                            <option value="Anguilla">Anguilla</option>
                            <option value="Antilhas Holandesas">Antilhas Holandesas</option>
                            <option value="Antárctida">Antárctida</option>
                            <option value="Antígua e Barbuda">Antígua e Barbuda</option>
                            <option value="Argentina">Argentina</option>
                            <option value="Argélia">Argélia</option>
                            <option value="Armênia">Armênia</option>
                            <option value="Aruba">Aruba</option>
                            <option value="Arábia Saudita">Arábia Saudita</option>
                            <option value="Austrália">Austrália</option>
                            <option value="Áustria">Áustria</option>
                            <option value="Azerbaijão">Azerbaijão</option>
                            <option value="Bahamas">Bahamas</option>
                            <option value="Bahrein">Bahrein</option>
                            <option value="Bangladesh">Bangladesh</option>
                            <option value="Barbados">Barbados</option>
                            <option value="Belize">Belize</option>
                            <option value="Benim">Benim</option>
                            <option value="Bermudas">Bermudas</option>
                            <option value="Bielorrússia">Bielorrússia</option>
                            <option value="Bolívia">Bolívia</option>
                            <option value="Botswana">Botswana</option>
                            <option value="Brunei">Brunei</option>
                            <option value="Bulgária">Bulgária</option>
                            <option value="Burkina Faso">Burkina Faso</option>
                            <option value="Burundi">Burundi</option>
                            <option value="Butão">Butão</option>
                            <option value="Bélgica">Bélgica</option>
                            <option value="Bósnia e Herzegovina">Bósnia e Herzegovina</option>
                            <option value="Cabo Verde">Cabo Verde</option>
                            <option value="Camarões">Camarões</option>
                            <option value="Camboja">Camboja</option>
                            <option value="Canadá">Canadá</option>
                            <option value="Catar">Catar</option>
                            <option value="Cazaquistão">Cazaquistão</option>
                            <option value="Chade">Chade</option>
                            <option value="Chile">Chile</option>
                            <option value="China">China</option>
                            <option value="Chipre">Chipre</option>
                            <option value="Colômbia">Colômbia</option>
                            <option value="Comores">Comores</option>
                            <option value="Coreia do Norte">Coreia do Norte</option>
                            <option value="Coreia do Sul">Coreia do Sul</option>
                            <option value="Costa do Marfim">Costa do Marfim</option>
                            <option value="Costa Rica">Costa Rica</option>
                            <option value="Croácia">Croácia</option>
                            <option value="Cuba">Cuba</option>
                            <option value="Dinamarca">Dinamarca</option>
                            <option value="Djibouti">Djibouti</option>
                            <option value="Dominica">Dominica</option>
                            <option value="Egito">Egito</option>
                            <option value="El Salvador">El Salvador</option>
                            <option value="Emirados Árabes Unidos">Emirados Árabes Unidos</option>
                            <option value="Equador">Equador</option>
                            <option value="Eritreia">Eritreia</option>
                            <option value="Escócia">Escócia</option>
                            <option value="Eslováquia">Eslováquia</option>
                            <option value="Eslovênia">Eslovênia</option>
                            <option value="Espanha">Espanha</option>
                            <option value="Estados Federados da Micronésia">Estados Federados da Micronésia</option>
                            <option value="Estados Unidos">Estados Unidos</option>
                            <option value="Estônia">Estônia</option>
                            <option value="Etiópia">Etiópia</option>
                            <option value="Fiji">Fiji</option>
                            <option value="Filipinas">Filipinas</option>
                            <option value="Finlândia">Finlândia</option>
                            <option value="França">França</option>
                            <option value="Gabão">Gabão</option>
                            <option value="Gana">Gana</option>
                            <option value="Geórgia">Geórgia</option>
                            <option value="Gibraltar">Gibraltar</option>
                            <option value="Granada">Granada</option>
                            <option value="Gronelândia">Gronelândia</option>
                            <option value="Grécia">Grécia</option>
                            <option value="Guadalupe">Guadalupe</option>
                            <option value="Guam">Guam</option>
                            <option value="Guatemala">Guatemala</option>
                            <option value="Guernesei">Guernesei</option>
                            <option value="Guiana">Guiana</option>
                            <option value="Guiana Francesa">Guiana Francesa</option>
                            <option value="Guiné">Guiné</option>
                            <option value="Guiné Equatorial">Guiné Equatorial</option>
                            <option value="Guiné-Bissau">Guiné-Bissau</option>
                            <option value="Gâmbia">Gâmbia</option>
                            <option value="Haiti">Haiti</option>
                            <option value="Honduras">Honduras</option>
                            <option value="Hong Kong">Hong Kong</option>
                            <option value="Hungria">Hungria</option>
                            <option value="Ilha Bouvet">Ilha Bouvet</option>
                            <option value="Ilha de Man">Ilha de Man</option>
                            <option value="Ilha do Natal">Ilha do Natal</option>
                            <option value="Ilha Heard e Ilhas McDonald">Ilha Heard e Ilhas McDonald</option>
                            <option value="Ilha Norfolk">Ilha Norfolk</option>
                            <option value="Ilhas Cayman">Ilhas Cayman</option>
                            <option value="Ilhas Cocos (Keeling)">Ilhas Cocos (Keeling)</option>
                            <option value="Ilhas Cook">Ilhas Cook</option>
                            <option value="Ilhas Feroé">Ilhas Feroé</option>
                            <option value="Ilhas Geórgia do Sul e Sandwich do Sul">Ilhas Geórgia do Sul e Sandwich do Sul</option>
                            <option value="Ilhas Malvinas">Ilhas Malvinas</option>
                            <option value="Ilhas Marshall">Ilhas Marshall</option>
                            <option value="Ilhas Menores Distantes dos Estados Unidos">Ilhas Menores Distantes dos Estados Unidos</option>
                            <option value="Ilhas Salomão">Ilhas Salomão</option>
                            <option value="Ilhas Virgens Americanas">Ilhas Virgens Americanas</option>
                            <option value="Ilhas Virgens Britânicas">Ilhas Virgens Britânicas</option>
                            <option value="Ilhas Åland">Ilhas Åland</option>
                            <option value="Indonésia">Indonésia</option>
                            <option value="Inglaterra">Inglaterra</option>
                            <option value="Índia">Índia</option>
                            <option value="Iraque">Iraque</option>
                            <option value="Irlanda do Norte">Irlanda do Norte</option>
                            <option value="Irlanda">Irlanda</option>
                            <option value="Irã">Irã</option>
                            <option value="Islândia">Islândia</option>
                            <option value="Israel">Israel</option>
                            <option value="Itália">Itália</option>
                            <option value="Iêmen">Iêmen</option>
                            <option value="Jamaica">Jamaica</option>
                            <option value="Japão">Japão</option>
                            <option value="Jersey">Jersey</option>
                            <option value="Jordânia">Jordânia</option>
                            <option value="Kiribati">Kiribati</option>
                            <option value="Kuwait">Kuwait</option>
                            <option value="Laos">Laos</option>
                            <option value="Lesoto">Lesoto</option>
                            <option value="Letônia">Letônia</option>
                            <option value="Libéria">Libéria</option>
                            <option value="Liechtenstein">Liechtenstein</option>
                            <option value="Lituânia">Lituânia</option>
                            <option value="Luxemburgo">Luxemburgo</option>
                            <option value="Líbano">Líbano</option>
                            <option value="Líbia">Líbia</option>
                            <option value="Macau">Macau</option>
                            <option value="Macedônia">Macedônia</option>
                            <option value="Madagáscar">Madagáscar</option>
                            <option value="Malawi">Malawi</option>
                            <option value="Maldivas">Maldivas</option>
                            <option value="Mali">Mali</option>
                            <option value="Malta">Malta</option>
                            <option value="Malásia">Malásia</option>
                            <option value="Marianas Setentrionais">Marianas Setentrionais</option>
                            <option value="Marrocos">Marrocos</option>
                            <option value="Martinica">Martinica</option>
                            <option value="Mauritânia">Mauritânia</option>
                            <option value="Maurícia">Maurícia</option>
                            <option value="Mayotte">Mayotte</option>
                            <option value="Moldávia">Moldávia</option>
                            <option value="Mongólia">Mongólia</option>
                            <option value="Montenegro">Montenegro</option>
                            <option value="Montserrat">Montserrat</option>
                            <option value="Moçambique">Moçambique</option>
                            <option value="Myanmar">Myanmar</option>
                            <option value="México">México</option>
                            <option value="Mônaco">Mônaco</option>
                            <option value="Namíbia">Namíbia</option>
                            <option value="Nauru">Nauru</option>
                            <option value="Nepal">Nepal</option>
                            <option value="Nicarágua">Nicarágua</option>
                            <option value="Nigéria">Nigéria</option>
                            <option value="Niue">Niue</option>
                            <option value="Noruega">Noruega</option>
                            <option value="Nova Caledônia">Nova Caledônia</option>
                            <option value="Nova Zelândia">Nova Zelândia</option>
                            <option value="Níger">Níger</option>
                            <option value="Omã">Omã</option>
                            <option value="Palau">Palau</option>
                            <option value="Palestina">Palestina</option>
                            <option value="Panamá">Panamá</option>
                            <option value="Papua-Nova Guiné">Papua-Nova Guiné</option>
                            <option value="Paquistão">Paquistão</option>
                            <option value="Paraguai">Paraguai</option>
                            <option value="País de Gales">País de Gales</option>
                            <option value="Países Baixos">Países Baixos</option>
                            <option value="Peru">Peru</option>
                            <option value="Pitcairn">Pitcairn</option>
                            <option value="Polinésia Francesa">Polinésia Francesa</option>
                            <option value="Polônia">Polônia</option>
                            <option value="Porto Rico">Porto Rico</option>
                            <option value="Portugal">Portugal</option>
                            <option value="Quirguistão">Quirguistão</option>
                            <option value="Quênia">Quênia</option>
                            <option value="Reino Unido">Reino Unido</option>
                            <option value="República Centro-Africana">República Centro-Africana</option>
                            <option value="República Checa">República Checa</option>
                            <option value="República Democrática do Congo">República Democrática do Congo</option>
                            <option value="República do Congo">República do Congo</option>
                            <option value="República Dominicana">República Dominicana</option>
                            <option value="Reunião">Reunião</option>
                            <option value="Romênia">Romênia</option>
                            <option value="Ruanda">Ruanda</option>
                            <option value="Rússia">Rússia</option>
                            <option value="Saara Ocidental">Saara Ocidental</option>
                            <option value="Saint Martin">Saint Martin</option>
                            <option value="Saint-Barthélemy">Saint-Barthélemy</option>
                            <option value="Saint-Pierre e Miquelon">Saint-Pierre e Miquelon</option>
                            <option value="Samoa Americana">Samoa Americana</option>
                            <option value="Samoa">Samoa</option>
                            <option value="Santa Helena, Ascensão e Tristão da Cunha">Santa Helena, Ascensão e Tristão da Cunha</option>
                            <option value="Santa Lúcia">Santa Lúcia</option>
                            <option value="Senegal">Senegal</option>
                            <option value="Serra Leoa">Serra Leoa</option>
                            <option value="Seychelles">Seychelles</option>
                            <option value="Singapura">Singapura</option>
                            <option value="Somália">Somália</option>
                            <option value="Sri Lanka">Sri Lanka</option>
                            <option value="Suazilândia">Suazilândia</option>
                            <option value="Sudão">Sudão</option>
                            <option value="Suriname">Suriname</option>
                            <option value="Suécia">Suécia</option>
                            <option value="Suíça">Suíça</option>
                            <option value="Svalbard e Jan Mayen">Svalbard e Jan Mayen</option>
                            <option value="São Cristóvão e Nevis">São Cristóvão e Nevis</option>
                            <option value="São Marino">São Marino</option>
                            <option value="São Tomé e Príncipe">São Tomé e Príncipe</option>
                            <option value="São Vicente e Granadinas">São Vicente e Granadinas</option>
                            <option value="Sérvia">Sérvia</option>
                            <option value="Síria">Síria</option>
                            <option value="Tadjiquistão">Tadjiquistão</option>
                            <option value="Tailândia">Tailândia</option>
                            <option value="Taiwan">Taiwan</option>
                            <option value="Tanzânia">Tanzânia</option>
                            <option value="Terras Austrais e Antárticas Francesas">Terras Austrais e Antárticas Francesas</option>
                            <option value="Território Britânico do Oceano Índico">Território Britânico do Oceano Índico</option>
                            <option value="Timor-Leste">Timor-Leste</option>
                            <option value="Togo">Togo</option>
                            <option value="Tonga">Tonga</option>
                            <option value="Toquelau">Toquelau</option>
                            <option value="Trinidad e Tobago">Trinidad e Tobago</option>
                            <option value="Tunísia">Tunísia</option>
                            <option value="Turcas e Caicos">Turcas e Caicos</option>
                            <option value="Turquemenistão">Turquemenistão</option>
                            <option value="Turquia">Turquia</option>
                            <option value="Tuvalu">Tuvalu</option>
                            <option value="Ucrânia">Ucrânia</option>
                            <option value="Uganda">Uganda</option>
                            <option value="Uruguai">Uruguai</option>
                            <option value="Uzbequistão">Uzbequistão</option>
                            <option value="Vanuatu">Vanuatu</option>
                            <option value="Vaticano">Vaticano</option>
                            <option value="Venezuela">Venezuela</option>
                            <option value="Vietname">Vietname</option>
                            <option value="Wallis e Futuna">Wallis e Futuna</option>
                            <option value="Zimbabwe">Zimbabwe</option>
                            <option value="Zâmbia">Zâmbia</option>
                        </select>
                
                </div>
               
                <div class="input-box">
                    <span class="detail">E-mail:</span>
                    <input type="email" name="email" id="email" placeholder="Digite o seu e-mail" required>
                </div>
                <div class="input-box">
                    <span class="detail">Telefone:</span>
                    <input type="tel" name="telefone" id="telefone" placeholder="Digite o seu número de telefone" required>
                </div>
                 <div class="input-box">
                    <span class="detail">Foto</span>
                    <input type="file" name="imagem" id="imagem" accept="image/*">
                </div><div class="input-box">
                    <span class="detail">Senha</span>
                    <input type="text" name="senha" id="senha" placeholder="Atribua uma senha ao Fornecedor" required>
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