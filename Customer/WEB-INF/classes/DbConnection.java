import java.sql.Connection;
import java.sql.DriverManager;
import java.lang.Class;

public class DbConnection 
{
	Connection conn=null;
	public Connection getConnect()
	{
		try
		{
			Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			conn=DriverManager.getConnection("jdbc:odbc:customer");				
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
return conn;
		
	}
}
