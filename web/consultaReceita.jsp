<%-- 
    Document   : consultaCategoria
    Created on : 05/01/2021, 15:10:41
    Author     : User
--%>

<%@page import="Modelos.Receita"%>
<%@page import="Modelos.Despesa"%>
<%@page import="java.util.List"%>
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
        <div class="container"><h1>Consulta Receita</h1>
        
        <%
           Receita receita = new Receita();
           List<Receita> receitas = receita.consultar();
           
        %>
        <table>
        <thead>
        <th>Id</th>
        <th>Descricao</th>
        <th>Valor</th>
        <th>Data</th>
        <th>Excluir</th>
        <th>Editar</th>
        
         </thead> 
         
             
        <tbody>
            <% for(Receita r: receitas) {%>
            <tr>
                <td><% out.write(""+r.getId());%></td>
                <td><% out.write(r.getDescricao());%></td>
                <td><% out.write(String.valueOf(r.getValor()));%></td>
                <td><% out.write(String.valueOf(r.getData()));%></td>
                 
            <td><%out.write("<a href=excluirReceita.jsp?id="+r.getId()+">Excluir</a>");%></td>   
            <td><%out.write("<a href=editarReceita.jsp?id="+r.getId()+">Editar</a>");%></td>   
            </tr>
            <%}%>
             
        </tbody>
        </table>
        </div>
        <footer>
            <i class="final"><img src="imagens/icon-c.png" > - 2021 - Desenvolvido nas aulas de Java da Turma Maturitech </i>
        </footer>   
    </body>
</html>
