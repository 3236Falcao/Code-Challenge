<%@ page language="java" contentType="text/html; 
charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="conexao.Conexao"%>
<%@page import="java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>GET e SET</title>
</head>
<body>
		<%
			String Nome = request.getParameter("Nome");
		
			String Veiculodeaplicacao = request.getParameter("Veiculodeaplicacao");			
			
			String Pesoliquido = request.getParameter("Pesoliquido");
			
			String Pesobruto = request.getParameter("Pesobruto");
			
			out.print("O nome da peça informada é" +Nome);
			out.print("<hr> ");
			out.print("O Veiculo de aplicacao informado é" +Veiculodeaplicacao);
			out.print("<hr> ");
			out.print("O Peso liquido informado é" +Pesoliquido);
			out.print("<hr> ");
			out.print("O Peso bruto informado é" +Pesobruto);
			out.print("<hr> ");
			
			try {
				Conexao conexao = new Conexao();
				String sql = "insert into peças (Nome, Veiculodeaplicacao, Pesoliquido, Pesobruto) values(?,?,?,?,)";
				PreparedStatement pstmt = conexao.conectar().prepareStatement(sql);
				pstmt.setString(1, Nome); 
				pstmt.setString(2, Veiculodeaplicacao); 
				pstmt.setString(3, Pesoliquido);
				pstmt.setString(4, Pesobruto); 
				pstmt.execute();
				out.print("A peça "+Nome+ " foi salva no banco de dados!");
			} catch (Exception e) {
				e.printStackTrace();
			}
	 %>
	

</body>
</html>