package servlet.com;

import java.sql.Connection;



import java.sql.DriverManager;
import java.sql.SQLException;

public class Connessione {
	
	private static Connection con;
	
	static 
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/negozio","root","123456789");
			System.out.println("Connesso");
		}catch(SQLException e)
		{
			System.out.println(e.getMessage());
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static Connection getCon() 
	{
		return con;
	}
	
}
