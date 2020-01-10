package dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class dungchung {
	public Connection cn;
	public void ketNoi() throws Exception{
		//
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		System.out.print("đã xác định hệ csdl");
		String url="jdbc:sqlserver://DESKTOP-E754EJE\\\\SQLEXPRESS:1433;databasename=Qlsach2;user=sa;password=123";
		cn= DriverManager.getConnection(url);
		System.out.print("đã kết nối csdl");
	}
}
