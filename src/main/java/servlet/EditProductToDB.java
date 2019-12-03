package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.Product;
import product.ProductHandler;

@WebServlet(urlPatterns = "/EditProductToDB")
public class EditProductToDB extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		Product p = new Product(
				Integer.parseInt(req.getParameter("id")),
				req.getParameter("productName"),
				req.getParameter("productDescription"),
				Short.parseShort(req.getParameter("productCategoryId")),
				Float.parseFloat(req.getParameter("productPrice")),
				Short.parseShort(req.getParameter("productStockqty")));
		

		
		ProductHandler ph = new ProductHandler();

		System.out.println(ph.update(p));
//		System.out.println(p);
		
		System.out.println("Product Updated in db");
		resp.sendRedirect("ViewProduct.jsp");

	}

}
