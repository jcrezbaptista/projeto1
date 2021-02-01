<%-- 
    Document   : cadastroUsuario
    Created on : 13/12/2020, 20:02:04
    Author     : User
--%>

<%@page contentType="text/html charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html style="background-color:rgba(0, 0, 242, 0.1)">
    <head>
        <title>Minha Agenda Financeira</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style/estilos.css">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <link rel="stylesheet" href="style/estilos.css">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
      
    </head>
    <body>
        <header>
            <div class="logo"><img src="imagens/logo.png"></div>
        </header>
        
        <div class="login">
        <img src="imagens/avatar.jpg" style="width:76px">
        <h2>Olá João !!!</h2>
        <div class="topnav a">
            <a href="#"><i class="fa fa-envelope"></i> </a>
            <a href="#"><i class="fa fa-user"></i></a>
            <a href="#"><i class="fa fa-cog"></i></a>
        </div>
        </div>
        
        <div class="painel"> Painel de Controle </div><br>
        
        <div class="menu"
        <div class="clearfix">
        <div class="column">
        <ul>
            <li><a href="menu.jsp" ><i class="fa fa-users fa-fw"></i>  MENU </a></li>
            <li><a href="cadastroDespesa.jsp"><i class="fas fa-comments-dollar"></i>  Seu novo Gasto</a> </li>
            <li><a href="cadastroReceita.jsp"><i class="fas fa-donate"></i>  Sua nova Renda</a></li>
            <li><a href="cadastroCategoria.jsp"><i class="fas fa-clipboard"></i>  Crie nova Categoria</a></li>
            <li><a href="consultaBalancete.jsp"><i class="fas fa-balance-scale"></i>  Resumo Financeiro</a></li>
            <li><a href="#"><i class="fa fa-bell fa-fw"></i>  Meus Dados</a></li>
            <li><a href="#"><i class="fa fa-cog fa-fw"></i>  Configurações</a></li>
        </ul>
        </div>
        </div>
        
            <div class="container"><h2> Cadastro do Usuário </h2>
            <div class="row">
            <div class="col-25">
            <p id="erros"></p>
            <form action="recebedadosusuario.jsp" method ="POST">
            <div class="row">
            <div class="col-25">
                <label>Informe o CPF</label>
            </div>
            <div class="col-75">
                <input type="text" name="cpf" /> 
                <label id="erroCPF" class="error"></label>    
            </div>
            </div>
            <div class="row">
            <div class="col-25">
                <label>Informe o Nome</label>
            </div>
            <div class="col-75">
                <input type="text" name="nome" /> 
            </div>
            </div>
            <div class="row">
            <div class="col-25">
                <label>Informe Data Nascimento</label>
            </div>
            <div class="col-75">
                <input type="date" name="datanascimento" /> 
            </div>
            </div> 
            <div class="row">
            <div class="col-25">
                <label>Informe o Telefone</label>
            </div>
            <div class="col-75">
                <input type="text" name="fone" />  
            </div>
            </div>
            <div class="row">
            <div class="col-25">
                <label>Informe o e-mail</label>
            </div>
            <div class="col-75">
                <input type="text" name="email" />  
            </div>
            </div>   
            <div class="row">
            <div class="col-25">
                <label>Informe Senha</label>
            </div>
            <div class="col-75">
                <input type="password" name="senha" />  
            </div>
            </div>       
           
            <div class="row">
              <input class="salvar" type="button" value="Salvar" onclick="enviaDados()"/> 
              <input class="cancelar" type="reset" value="Cancelar" />
            </div>
            </div>
            </form>
            </div>
            </div>
         
        <footer>
            <i class="final"><img src="imagens/icon-c.png" > - 2021 - Desenvolvido nas aulas de Java da Turma Maturitech </i>
        </footer>
       
             <script>
                function enviaDados(){
                    var semErros = true;
                    var erros = document.getElementById("erros");
                    var cpf = document.getElementsByName("cpf");
                    if(cpf[0].value === ""){
                        erros.innerHTML = "informe o CPF";
                        document.getElementById("erroCPF").innerHTML="informe o CPF"
                        cpf[0].focus();
                        semErros = false;
                    }
                    
                    var nome = document.getElementsByName("nome");
                    if(nome[0].value === ""){
                        erros.innerHTML += "<br>Informe nome";
                        nome[0].style="border: red solid 5px";
                        semErros = false;
                    }
                                
                    var datanascimento = document.getElementsByName("datanascimento");
                    if(datanascimento[0].value === ""){
                        erros.innerHTML += "<br>Informe data de nascimento";
                        datanascimento[0].style="border: red solid 5px";
                        semErros = false;
                    }
                    
                      var fone = document.getElementsByName("fone");
                    if(fone[0].value === ""){
                        erros.innerHTML += "<br>Informe fone";
                        fone[0].style="border: red solid 5px";
                        semErros = false;
                    }
                    if(semErros)
                      document.forms[0].submit();
                }
                    
                    
                    var email = document.getElementsByName("email");
                    if(email[0].value === ""){
                        erros.innerHTML += "<br>Informe email";
                        email[0].style="border: red solid 5px";
                        semErros = false;
                    }                    
                                       
                                 
                 var senha = document.getElementsByName("senha");
                    if(senha[0].value === ""){
                        erros.innerHTML += "<br>Informe senha";
                        senha[0].style="border: red solid 5px";
                        semErros = false;
                    }
                    if(semErros)
                      document.forms[0].submit();
                }
             </script>
    </head>
    </body>
</html>
