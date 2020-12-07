<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Peças</title>
</head>
<body>
		<form action="receber.jsp">
		<label>NOME:</label>
		<input type="text" name="Nome" required="required">
		<br>
		<label>VEÍCULO DE APLICAÇÃO:</label>
		<input type="text" name="Veiculodeaplicacao"  required="required">
		<br>
		<label>PESO LIQUIDO:</label>
		<input type="text" name="Pesoliquido"  required="required">
		<br>
		<label>PESO BRUTO:</label>
		<input type="text" name="Pesobruto"  required="required">
		<br>
		<input type="submit" value="Cadastrar"  required="required"> 
		<br>
		<input type="reset" value="Apagar"  required="required"> 
		
	</form>
	
</body>
</html>