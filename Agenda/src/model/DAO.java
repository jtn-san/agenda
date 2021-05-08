package model;

import java.sql.Connection;
import java.sql.DriverManager;

public class DAO {
	//parâmetros de conexão Data Acess Object 
	private String driver = "com.mysql.cj.jdbc.Driver";
	private String url = "jdbc:mysql://10.26.45.107:3306/dbagenda";
	private String user = "dba";
	private String password = "Senac@123";
	
	/**
	 * Conexão com o banco de dados
	 * @return con
	 */
	public Connection conectar() {
		// con -> objeto
		Connection con = null;
		//tratamento de exceções
		try {
			//uso do driver
			Class.forName(driver);
		//estabelecendo a conexão
			con = DriverManager.getConnection(url, user, password);
			return con;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e);
			return null;
		}
	}
}
