package DAL;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SQLProvider {
	protected static String SqlConnectionString="jdbc:sqlserver://localhost:1433;databaseName=LTWebFinal;user=CNTT;password=cnttdhspkt;";
	protected static Connection conn=null;
	
	public static Boolean ConnectDB(){
		try {
			 Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			 conn=DriverManager.getConnection(SqlConnectionString);
	    }
		catch(SQLException e) {
	        	System.out.println("Database Connect Failed.");
	            return false;
	    }
		catch (ClassNotFoundException e) {
				e.printStackTrace();
				return false;
		}
		return true;
	}
}
