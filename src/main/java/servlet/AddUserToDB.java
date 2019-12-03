package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import user.User;
import user.UserHandler;

@WebServlet(urlPatterns="/AddUserToDB")
public class AddUserToDB extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	System.out.println("add user to DB");
	
	
	User ur=new User(
			req.getParameter("userName"),
			req.getParameter("userPhone"),
			req.getParameter("userEmail"),
			req.getParameter("userPassword"),
			req.getParameter("userConfirmPassword"));
//			Integer.parseInt(req.getParameter("active")) 
	
	UserHandler uh = new UserHandler();
	
	System.out.println(uh.insert(ur));
	System.out.println(ur);
	System.out.println("add susscessfully");
	
	
	resp.sendRedirect("userpage.jsp");

	}

	
}
