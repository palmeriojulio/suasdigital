<%@page import="br.com.suasdigital.controle.Facade"%>
<%@page import="br.com.suasdigital.modelo.Cor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
long id = Long.parseLong(request.getParameter("id"));

Cor cor = Facade.getInstance().getControleCor().ControleBuscaCorPorId(id);
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Cor cadastrada</h1>

<a href="NewFile.jsp">voltar</a>

<form action="ServletCor" method="post">
  <label for="favcolor">Legenda</label>
  <input type="text" name="legenda" class="form-control" id="leganda" value="<%=cor.getLegenda() %>"><br><br>
  <label for="favcolor">Selecione a cor:</label>
  <input type="text" name="hexadecimal" class="form-control" id="hexadecimal" value="<%=cor.getHexadecimal()%>">
  <input type="color" name="hexadecimal" class="form-control" id="hexadecimal" value="<%=cor.getHexadecimal()%>"><br><br>
  <button type="submit" class="btn btn-secondary">Enviar</button>
</form>
</body>
</html>