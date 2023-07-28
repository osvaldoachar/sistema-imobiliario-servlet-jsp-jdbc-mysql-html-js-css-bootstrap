<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formul�rio de Cadastro</title>
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
                    <span class="detail">Endere�o:</span>
                    <input type="text" name="endereco" placeholder="Digite o seu endere�o" required>
                </div>
                <div class="input-box">
                    <span class="detail">Data de Nascimento:</span>
                    <input type="date" name="dataNascimento" id="dataNascimento" required>
                </div>
                  <div class="input-box">
                    <span class="detail">Nacionalidade:</span>
                    <select name="nacionalidade" id="nacionalidade" required style="color: grey;">
                        <option disabled selected value="" style="background: red; color: #fff;">Selecione um Pa�s</option>
                            <option value="Brasil">Brasil</option>
                            <option value="Afeganist�o">Afeganist�o</option>
                            <option value="�frica do Sul">�frica do Sul</option>
                            <option value="Alb�nia">Alb�nia</option>
                            <option value="Alemanha">Alemanha</option>
                            <option value="Andorra">Andorra</option>
                            <option value="Angola">Angola</option>
                            <option value="Anguilla">Anguilla</option>
                            <option value="Antilhas Holandesas">Antilhas Holandesas</option>
                            <option value="Ant�rctida">Ant�rctida</option>
                            <option value="Ant�gua e Barbuda">Ant�gua e Barbuda</option>
                            <option value="Argentina">Argentina</option>
                            <option value="Arg�lia">Arg�lia</option>
                            <option value="Arm�nia">Arm�nia</option>
                            <option value="Aruba">Aruba</option>
                            <option value="Ar�bia Saudita">Ar�bia Saudita</option>
                            <option value="Austr�lia">Austr�lia</option>
                            <option value="�ustria">�ustria</option>
                            <option value="Azerbaij�o">Azerbaij�o</option>
                            <option value="Bahamas">Bahamas</option>
                            <option value="Bahrein">Bahrein</option>
                            <option value="Bangladesh">Bangladesh</option>
                            <option value="Barbados">Barbados</option>
                            <option value="Belize">Belize</option>
                            <option value="Benim">Benim</option>
                            <option value="Bermudas">Bermudas</option>
                            <option value="Bielorr�ssia">Bielorr�ssia</option>
                            <option value="Bol�via">Bol�via</option>
                            <option value="Botswana">Botswana</option>
                            <option value="Brunei">Brunei</option>
                            <option value="Bulg�ria">Bulg�ria</option>
                            <option value="Burkina Faso">Burkina Faso</option>
                            <option value="Burundi">Burundi</option>
                            <option value="But�o">But�o</option>
                            <option value="B�lgica">B�lgica</option>
                            <option value="B�snia e Herzegovina">B�snia e Herzegovina</option>
                            <option value="Cabo Verde">Cabo Verde</option>
                            <option value="Camar�es">Camar�es</option>
                            <option value="Camboja">Camboja</option>
                            <option value="Canad�">Canad�</option>
                            <option value="Catar">Catar</option>
                            <option value="Cazaquist�o">Cazaquist�o</option>
                            <option value="Chade">Chade</option>
                            <option value="Chile">Chile</option>
                            <option value="China">China</option>
                            <option value="Chipre">Chipre</option>
                            <option value="Col�mbia">Col�mbia</option>
                            <option value="Comores">Comores</option>
                            <option value="Coreia do Norte">Coreia do Norte</option>
                            <option value="Coreia do Sul">Coreia do Sul</option>
                            <option value="Costa do Marfim">Costa do Marfim</option>
                            <option value="Costa Rica">Costa Rica</option>
                            <option value="Cro�cia">Cro�cia</option>
                            <option value="Cuba">Cuba</option>
                            <option value="Dinamarca">Dinamarca</option>
                            <option value="Djibouti">Djibouti</option>
                            <option value="Dominica">Dominica</option>
                            <option value="Egito">Egito</option>
                            <option value="El Salvador">El Salvador</option>
                            <option value="Emirados �rabes Unidos">Emirados �rabes Unidos</option>
                            <option value="Equador">Equador</option>
                            <option value="Eritreia">Eritreia</option>
                            <option value="Esc�cia">Esc�cia</option>
                            <option value="Eslov�quia">Eslov�quia</option>
                            <option value="Eslov�nia">Eslov�nia</option>
                            <option value="Espanha">Espanha</option>
                            <option value="Estados Federados da Micron�sia">Estados Federados da Micron�sia</option>
                            <option value="Estados Unidos">Estados Unidos</option>
                            <option value="Est�nia">Est�nia</option>
                            <option value="Eti�pia">Eti�pia</option>
                            <option value="Fiji">Fiji</option>
                            <option value="Filipinas">Filipinas</option>
                            <option value="Finl�ndia">Finl�ndia</option>
                            <option value="Fran�a">Fran�a</option>
                            <option value="Gab�o">Gab�o</option>
                            <option value="Gana">Gana</option>
                            <option value="Ge�rgia">Ge�rgia</option>
                            <option value="Gibraltar">Gibraltar</option>
                            <option value="Granada">Granada</option>
                            <option value="Gronel�ndia">Gronel�ndia</option>
                            <option value="Gr�cia">Gr�cia</option>
                            <option value="Guadalupe">Guadalupe</option>
                            <option value="Guam">Guam</option>
                            <option value="Guatemala">Guatemala</option>
                            <option value="Guernesei">Guernesei</option>
                            <option value="Guiana">Guiana</option>
                            <option value="Guiana Francesa">Guiana Francesa</option>
                            <option value="Guin�">Guin�</option>
                            <option value="Guin� Equatorial">Guin� Equatorial</option>
                            <option value="Guin�-Bissau">Guin�-Bissau</option>
                            <option value="G�mbia">G�mbia</option>
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
                            <option value="Ilhas Fero�">Ilhas Fero�</option>
                            <option value="Ilhas Ge�rgia do Sul e Sandwich do Sul">Ilhas Ge�rgia do Sul e Sandwich do Sul</option>
                            <option value="Ilhas Malvinas">Ilhas Malvinas</option>
                            <option value="Ilhas Marshall">Ilhas Marshall</option>
                            <option value="Ilhas Menores Distantes dos Estados Unidos">Ilhas Menores Distantes dos Estados Unidos</option>
                            <option value="Ilhas Salom�o">Ilhas Salom�o</option>
                            <option value="Ilhas Virgens Americanas">Ilhas Virgens Americanas</option>
                            <option value="Ilhas Virgens Brit�nicas">Ilhas Virgens Brit�nicas</option>
                            <option value="Ilhas �land">Ilhas �land</option>
                            <option value="Indon�sia">Indon�sia</option>
                            <option value="Inglaterra">Inglaterra</option>
                            <option value="�ndia">�ndia</option>
                            <option value="Iraque">Iraque</option>
                            <option value="Irlanda do Norte">Irlanda do Norte</option>
                            <option value="Irlanda">Irlanda</option>
                            <option value="Ir�">Ir�</option>
                            <option value="Isl�ndia">Isl�ndia</option>
                            <option value="Israel">Israel</option>
                            <option value="It�lia">It�lia</option>
                            <option value="I�men">I�men</option>
                            <option value="Jamaica">Jamaica</option>
                            <option value="Jap�o">Jap�o</option>
                            <option value="Jersey">Jersey</option>
                            <option value="Jord�nia">Jord�nia</option>
                            <option value="Kiribati">Kiribati</option>
                            <option value="Kuwait">Kuwait</option>
                            <option value="Laos">Laos</option>
                            <option value="Lesoto">Lesoto</option>
                            <option value="Let�nia">Let�nia</option>
                            <option value="Lib�ria">Lib�ria</option>
                            <option value="Liechtenstein">Liechtenstein</option>
                            <option value="Litu�nia">Litu�nia</option>
                            <option value="Luxemburgo">Luxemburgo</option>
                            <option value="L�bano">L�bano</option>
                            <option value="L�bia">L�bia</option>
                            <option value="Macau">Macau</option>
                            <option value="Maced�nia">Maced�nia</option>
                            <option value="Madag�scar">Madag�scar</option>
                            <option value="Malawi">Malawi</option>
                            <option value="Maldivas">Maldivas</option>
                            <option value="Mali">Mali</option>
                            <option value="Malta">Malta</option>
                            <option value="Mal�sia">Mal�sia</option>
                            <option value="Marianas Setentrionais">Marianas Setentrionais</option>
                            <option value="Marrocos">Marrocos</option>
                            <option value="Martinica">Martinica</option>
                            <option value="Maurit�nia">Maurit�nia</option>
                            <option value="Maur�cia">Maur�cia</option>
                            <option value="Mayotte">Mayotte</option>
                            <option value="Mold�via">Mold�via</option>
                            <option value="Mong�lia">Mong�lia</option>
                            <option value="Montenegro">Montenegro</option>
                            <option value="Montserrat">Montserrat</option>
                            <option value="Mo�ambique">Mo�ambique</option>
                            <option value="Myanmar">Myanmar</option>
                            <option value="M�xico">M�xico</option>
                            <option value="M�naco">M�naco</option>
                            <option value="Nam�bia">Nam�bia</option>
                            <option value="Nauru">Nauru</option>
                            <option value="Nepal">Nepal</option>
                            <option value="Nicar�gua">Nicar�gua</option>
                            <option value="Nig�ria">Nig�ria</option>
                            <option value="Niue">Niue</option>
                            <option value="Noruega">Noruega</option>
                            <option value="Nova Caled�nia">Nova Caled�nia</option>
                            <option value="Nova Zel�ndia">Nova Zel�ndia</option>
                            <option value="N�ger">N�ger</option>
                            <option value="Om�">Om�</option>
                            <option value="Palau">Palau</option>
                            <option value="Palestina">Palestina</option>
                            <option value="Panam�">Panam�</option>
                            <option value="Papua-Nova Guin�">Papua-Nova Guin�</option>
                            <option value="Paquist�o">Paquist�o</option>
                            <option value="Paraguai">Paraguai</option>
                            <option value="Pa�s de Gales">Pa�s de Gales</option>
                            <option value="Pa�ses Baixos">Pa�ses Baixos</option>
                            <option value="Peru">Peru</option>
                            <option value="Pitcairn">Pitcairn</option>
                            <option value="Polin�sia Francesa">Polin�sia Francesa</option>
                            <option value="Pol�nia">Pol�nia</option>
                            <option value="Porto Rico">Porto Rico</option>
                            <option value="Portugal">Portugal</option>
                            <option value="Quirguist�o">Quirguist�o</option>
                            <option value="Qu�nia">Qu�nia</option>
                            <option value="Reino Unido">Reino Unido</option>
                            <option value="Rep�blica Centro-Africana">Rep�blica Centro-Africana</option>
                            <option value="Rep�blica Checa">Rep�blica Checa</option>
                            <option value="Rep�blica Democr�tica do Congo">Rep�blica Democr�tica do Congo</option>
                            <option value="Rep�blica do Congo">Rep�blica do Congo</option>
                            <option value="Rep�blica Dominicana">Rep�blica Dominicana</option>
                            <option value="Reuni�o">Reuni�o</option>
                            <option value="Rom�nia">Rom�nia</option>
                            <option value="Ruanda">Ruanda</option>
                            <option value="R�ssia">R�ssia</option>
                            <option value="Saara Ocidental">Saara Ocidental</option>
                            <option value="Saint Martin">Saint Martin</option>
                            <option value="Saint-Barth�lemy">Saint-Barth�lemy</option>
                            <option value="Saint-Pierre e Miquelon">Saint-Pierre e Miquelon</option>
                            <option value="Samoa Americana">Samoa Americana</option>
                            <option value="Samoa">Samoa</option>
                            <option value="Santa Helena, Ascens�o e Trist�o da Cunha">Santa Helena, Ascens�o e Trist�o da Cunha</option>
                            <option value="Santa L�cia">Santa L�cia</option>
                            <option value="Senegal">Senegal</option>
                            <option value="Serra Leoa">Serra Leoa</option>
                            <option value="Seychelles">Seychelles</option>
                            <option value="Singapura">Singapura</option>
                            <option value="Som�lia">Som�lia</option>
                            <option value="Sri Lanka">Sri Lanka</option>
                            <option value="Suazil�ndia">Suazil�ndia</option>
                            <option value="Sud�o">Sud�o</option>
                            <option value="Suriname">Suriname</option>
                            <option value="Su�cia">Su�cia</option>
                            <option value="Su��a">Su��a</option>
                            <option value="Svalbard e Jan Mayen">Svalbard e Jan Mayen</option>
                            <option value="S�o Crist�v�o e Nevis">S�o Crist�v�o e Nevis</option>
                            <option value="S�o Marino">S�o Marino</option>
                            <option value="S�o Tom� e Pr�ncipe">S�o Tom� e Pr�ncipe</option>
                            <option value="S�o Vicente e Granadinas">S�o Vicente e Granadinas</option>
                            <option value="S�rvia">S�rvia</option>
                            <option value="S�ria">S�ria</option>
                            <option value="Tadjiquist�o">Tadjiquist�o</option>
                            <option value="Tail�ndia">Tail�ndia</option>
                            <option value="Taiwan">Taiwan</option>
                            <option value="Tanz�nia">Tanz�nia</option>
                            <option value="Terras Austrais e Ant�rticas Francesas">Terras Austrais e Ant�rticas Francesas</option>
                            <option value="Territ�rio Brit�nico do Oceano �ndico">Territ�rio Brit�nico do Oceano �ndico</option>
                            <option value="Timor-Leste">Timor-Leste</option>
                            <option value="Togo">Togo</option>
                            <option value="Tonga">Tonga</option>
                            <option value="Toquelau">Toquelau</option>
                            <option value="Trinidad e Tobago">Trinidad e Tobago</option>
                            <option value="Tun�sia">Tun�sia</option>
                            <option value="Turcas e Caicos">Turcas e Caicos</option>
                            <option value="Turquemenist�o">Turquemenist�o</option>
                            <option value="Turquia">Turquia</option>
                            <option value="Tuvalu">Tuvalu</option>
                            <option value="Ucr�nia">Ucr�nia</option>
                            <option value="Uganda">Uganda</option>
                            <option value="Uruguai">Uruguai</option>
                            <option value="Uzbequist�o">Uzbequist�o</option>
                            <option value="Vanuatu">Vanuatu</option>
                            <option value="Vaticano">Vaticano</option>
                            <option value="Venezuela">Venezuela</option>
                            <option value="Vietname">Vietname</option>
                            <option value="Wallis e Futuna">Wallis e Futuna</option>
                            <option value="Zimbabwe">Zimbabwe</option>
                            <option value="Z�mbia">Z�mbia</option>
                        </select>
                
                </div>
               
                <div class="input-box">
                    <span class="detail">E-mail:</span>
                    <input type="email" name="email" id="email" placeholder="Digite o seu e-mail" required>
                </div>
                <div class="input-box">
                    <span class="detail">Telefone:</span>
                    <input type="tel" name="telefone" id="telefone" placeholder="Digite o seu n�mero de telefone" required>
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