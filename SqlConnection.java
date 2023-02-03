package com.roy.abhisek;
import java.sql.*;

import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;  
public class SqlConnection {
	String url="jdbc:mysql://localhost:3306/abhisek";
	String username="root";
	String password ="abhisek@247767";
	String query="select * from login where uname=? and upass=?";
	public boolean check (String name ,String pass) {
		try {
			Class.forName("com.mysql.jdbc.Driver");  
			Connection con=DriverManager.getConnection(url,username,password).create;
//			PreparedStatement st =con.prepareStatement(query);
//			st.setString(1, name);
//			st.setString(2, pass);
//			st.executeUpdate();
//			System.out.println("Data inserted successfully!!");
//			st.close();
//			con.close();
			Statement statement = con.createStatement();
			ResultSet rs = statement.executeQuery(query);
			statement.close();
			con.close();
			while(rs.next()) {
				if(rs.getString("name").equals(name) && rs.getString("pass").equals(pass)) {
					System.out.println("you are already registered");
				}
			}
//			System.out.println(+"\n"+rs.getString("pass"));
		}
		catch(Exception e){
			e.printStackTrace();
		}
			
	return false;

	}
}
