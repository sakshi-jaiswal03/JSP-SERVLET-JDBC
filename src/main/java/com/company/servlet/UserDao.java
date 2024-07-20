package com.company.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Logger;

public class UserDao {
	
	final static Logger logger = Logger.getLogger(RegServlet.class.getName()); 

	public static int registerUser(Member member) throws ClassNotFoundException
  {
	  logger.info("Dao");
	  String url = "jdbc:mysql://localhost:3306/e_commerce?useSSL=false&allowPublicKeyRetrieval=true";
	  Class.forName("com.mysql.cj.jdbc.Driver");
	  String username = "root1"; 
      String password = "Cmss"; 
	  String INSERT_USERS =  "INSERT INTO Customers(email, username, password) VALUES (?, ?, ?);";
	  int result = 0;
	  
	  try 
	  { Connection connection = DriverManager.getConnection(url, username, password);
	     PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS);
	     logger.info("Conn done");
	           
	            preparedStatement.setString(1, member.getEmail());
	            preparedStatement.setString(2, member.getUsername());
	            preparedStatement.setString(3, member.getPassword());
	         
	            result = preparedStatement.executeUpdate();
	            logger.info("User registered successfully in database");
	            
	            preparedStatement.close();
	            connection.close();
	        
	  }catch (SQLException e) {
		  logger.warning("Error registering user" + e.getMessage());
	        }
	        return result;
	    }

}
