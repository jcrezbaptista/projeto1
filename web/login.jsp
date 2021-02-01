<%-- 
    Document   : login
    Created on : 09/12/2020, 15:46:18
    Author     : User
--%>


<%@page import="Modelos.Usuario"%>
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
        <div class="cadcat2"<h1>Login Usuário</h1>
        <br>
        <%
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");
          
        if((usuario != null) && (senha != null) && !(usuario.isEmpty())
            && !(senha.isEmpty()) ){
            //crie a seção 
        
        if(Usuario.podeLogar(usuario,senha)){
            session.setAttribute("usuario", usuario);
            response.sendRedirect("cadastrolocacao.jsp");  
          }      
        }
          
        %>
       
        <div class="cadcat2"<h1>Tela de Login</h1>
            <form action="login.jsp" method="POST">
                <label>Usuário</label><br/>
                <input typ="text" name="usuario" /> <br/>
                <label>Senha</label><br/>
                <input type="password" name="senha" /> <hr/>
                <input type="submit" value="Logar" /> 
                <a href="cadastrocliente.jsp"><input type="button" value="Cadastrar" /></a>
            </form>        
        </div>   
        
         <footer>
            <i class="final"><img src="imagens/icon-c.png" > - 2021 - Desenvolvido nas aulas de Java da Turma Maturitech </i>
    </footer>   
    </body>
</html>
