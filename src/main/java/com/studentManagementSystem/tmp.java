package com.studentManagementSystem;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class tmp {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con= null;
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo_schema1","root","Steve07@mysql");
	    PreparedStatement ps = con.prepareStatement("select * from Book where author=?");
	    ps.setString(1,"Auth");
	    ResultSet rs = ps.executeQuery();
	    System.out.println(rs.getString(1));
	}
}
