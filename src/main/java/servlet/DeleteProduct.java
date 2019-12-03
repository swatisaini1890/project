package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import category.CategoryHandler;
import product.ProductHandler;

@WebServlet(urlPatterns="/DeleteProduct")
public class DeleteProduct extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

int id= Integer.parseInt(req.getParameter("id"));
		
		
		
		ProductHandler ph =new ProductHandler();
		ph.deleteById(id);
		resp.sendRedirect("ViewProduct.jsp");
	
	}

}
