package conexao;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {
public static void main(String[] args) {
		
		Conexao conexao = new Conexao();
		conexao.conectar();
	}

	public Connection conectar() {

		Connection retornoConexao = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/cadastro";
			String usuario = "root";
			String senha = "2412daniel";

			retornoConexao = DriverManager.getConnection(url, usuario, senha);
			System.out.println("Conectado com sucesso!");
		} catch (Exception e) {
			System.out.println("Falha ao conectar!");
			System.out.println(e.getMessage());
			e.printStackTrace();
		}
		return retornoConexao;
	}
}
