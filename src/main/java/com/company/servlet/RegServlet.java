package com.company.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Logger;

/**
 * Servlet implementation class RegServlet
 */

@WebServlet("/register")
public class RegServlet extends HttpServlet {
	private static final Logger logger = Logger.getLogger(RegServlet.class.getName()); 
	private static final long serialVersionUID = 1L;
	 
	private UserDao userdao;
	
	public void init() {
	   userdao = new UserDao();
	}
	
    /**
     * @see HttpServlet#HttpServlet()
     */
	
	
    public RegServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		logger.info("Servlet started successfully"); 
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");
	
	    Member member = new Member(email, username, password );
	
	    try {
            userdao.registerUser(member);
            logger.info("User registered successfully");
        } catch (Exception e) {
			/* e.printStackTrace(); */
        	logger.warning("Error while registering the user"); 
        }

        response.sendRedirect("login.jsp");
        
	}
 }


