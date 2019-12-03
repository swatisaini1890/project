package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cart.Cart;
import cart.CartHandler;
import product.Product;
import product.ProductHandler;

@WebServlet(urlPatterns="/DeleteCart")
public class DeleteCart extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		CartHandler ch = new CartHandler();

		int id = Integer.parseInt(req.getParameter("id"));

		Cart c = ch.fetchProduct(Integer.parseInt(req.getParameter("id")));
		int cartstock = c.getQty();
		
		
		/*	
		System.out.println(cartstock);
		System.out.println(c);
		*/

		ProductHandler ph=new ProductHandler();
		Product p=ph.fetchProduct((short)c.getProductId());

		int currstock=p.getStockqty();
		
		/*	
		System.out.println(currstock);
		System.out.println(p);*/



		ch.deleteById(id);


		if(ch.deleteById(id)==true) {

		p.setStockqty((short) (currstock + cartstock));

		ph.update(p);

		}

		resp.sendRedirect("ViewCart.jsp");


	}

	
	
}
