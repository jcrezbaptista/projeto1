<%-- 
    Document   : recebeDadosUsuario
    Created on : 18/12/2020, 08:17:57
    Author     : entra21
--%>

<%@page import="java.sql.Date"%>
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
        <div class="cadcat2"><h1>Dados Usuário</h1>
            <br>
    <%
        Usuario user = new Usuario();
        if(user.userExiste(request.getParameter("usuario"))){
        String msg = "Usuário já existe!";
        response.sendRedirect("informacao.jsp?msg="+ msg);
    }
    else{
       user.setCpf(request.getParameter("cpf"));
       user.setNome(request.getParameter("nome"));
       user.setEmail(request.getParameter("email"));
       user.setFone(request.getParameter("fone"));
       user.setDatanascimento(Date.valueOf(request.getParameter("datanascimento")));
       user.setSenha(request.getParameter("senha"));
    if (user.salvar()){
         //direciona para a página de informações
         String msg = " Salvo com sucesso";
         response.sendRedirect("consultaUsuario.jsp?msg=" + msg);
        }
    }
    %>
    <br>
    </div>
    <footer>
            <i class="final"><img src="imagens/icon-c.png" > - 2021 - Desenvolvido nas aulas de Java da Turma Maturitech </i>
    </footer>
    </body>
</html>
