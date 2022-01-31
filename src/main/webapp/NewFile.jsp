<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Color Picker</h1>

<form action="ServletCor" method="post">
  <label for="favcolor">Legenda</label>
  <input type="text" name="legenda" class="form-control" id="leganda"><br><br>
  <label for="favcolor">Selecione a cor:</label>
  <input type="color" name="hexadecimal" class="form-control" id="hexadecimal" value="#ff0000"><br><br>
  <button type="submit" class="btn btn-secondary">Enviar</button>
</form>
</body>
</html>