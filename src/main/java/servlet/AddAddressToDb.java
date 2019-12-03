package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import address.Address;
import address.AddressHandler;

@WebServlet(urlPatterns="/AddAddressToDb")

public class AddAddressToDb extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	System.out.println("add address to db");
	
	AddressHandler ah = new AddressHandler();
	
	Address a = new  Address(
			req.getParameter("name"),
			req.getParameter("phone"),
			Integer.parseInt(req.getParameter("pincode")),
			req.getParameter("locality"),
			req.getParameter("address"),
			req.getParameter("city"),
			req.getParameter("state"),
			req.getParameter("landmark"),
			req.getParameter("aphone"),
			req.getParameter("atype"),
			Integer.parseInt(req.getParameter("uid"))
			);
	
	ah.insert(a);
	//System.out.println(a);
	System.out.println("address add susscessfully");
	resp.sendRedirect("Payment.jsp");
	
	
	}

	
}
