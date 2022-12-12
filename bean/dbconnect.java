package asappk;
import java.sql.*;
public class dbconnect
{
	private Connection con;
	public Statement stm;
	public String getconn()
	{
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			con=DriverManager.getConnection("jdbc:odbc:asap");
			stm=con.createStatement();
		}
		catch(Exception ex)
		{
			System.out.println(ex);
		}
		return "";
	}
}