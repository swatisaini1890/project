package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.Product;
import product.ProductHandler;

@WebServlet(urlPatterns = "/AddProductToDB")
public class AddProductToDB extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("Add product to DB");

		ProductHandler ph = new ProductHandler();

		Product p = new Product
				(req.getParameter("productName"), 
						req.getParameter("productDescription"),
				Short.parseShort(req.getParameter("productCategory")),
				Float.parseFloat(req.getParameter("productPrice")),
				Short.parseShort(req.getParameter("productStockQty")),
				Integer.parseInt(req.getParameter("productImageId"))

		);

		ph.insert(p);
		

		System.out.println("product add susscessfully");

		resp.sendRedirect("ViewProduct.jsp");

	}

}

