<%@page import="user.User"%>
<%@page import="cart.Cart"%>
<%@page import="product.Product"%>
<%@page import="cart.CartHandler"%>
<%@page import="category.CategoryHandler"%>
<%@page import="user.UserHandler"%>
<%@page import="product.ProductHandler"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
</head>

<%
	CartHandler ch = new CartHandler();
User u= (User)request.getSession().getAttribute("currentUser");


if(u==null){
	request.setAttribute("CList", ch.fetchAllCarts());
	
}
else{
	request.setAttribute("CList", ch.fetchAllCartItemsForUser(u.getId()));
}
float grandTotal = 0.0f;

	ProductHandler ph = new ProductHandler();

%>


<c:import url="shared.jsp" />
<body>
	<c:import url="header.jsp" />

	<br>
	<br>

	<h1 style="text-align: center;">Cart</h1>
	<br>
	<a href="ViewProduct.jsp" class="btn-btn-Link">More Items</a>

	<c:choose>

		<c:when test="${empty CList }">
			<h1 class="alert alert-danger">Cart is empty!! shop more to add<br>
			happing shopping
			</h1>
		</c:when>

		<c:otherwise>

			<hr>

			<table class="table  table-striped">
				<thead class="table-dark">
					<tr>
						<th>Product Id</th>
						<th>Quantity</th>
						<th>Sub Total</th>
						<th>Operations</th>
					</tr>
				</thead>
				<tbody>
					<%-- <c:forEach items="${CList}" var="cart">
					
					
					<h1>${cart.getProduct().getName()}</h1>
					<h1>${cart.getProduct().getPrice()}</h1>
					<h1>${cart.getQty()}</h1>
					<h1>${cart.getQty()*cart.getProduct().getPrice()}</h1>
			</c:forEach>
			 --%>
			<c:forEach items="${CList}" var="cart">
			
			
			<tr>
							<td>
								<!--  --> <%
 	Cart x = (Cart)(pageContext.getAttribute("cart"));
			
 				Product p = ph.fetchProduct(x.getProductId());
 				// pageContext.setAttribute("pro",p);
 %>

								<div class="card" style="max-width: 33%;">


									<div class="card-body">
										<img
											style="width: 100%; margin: auto; height: 250px; object-fit: cover;"
											src="<%=p.getImageUrl()%>"> <br> <br>
										<h3><%=p.getName()%></h3>
										<br>

										<h3 class="badge badge-pill badge-danger"><%=p.getCategory().getName()%></h3>
										<br>
											<form action="Update" method="post">
									<select name="quantity" class="form-control"
										style="text-align: center;">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>

									</select> <br>
									<button class="btn btn-primary" style="text-align: center;">OK</button>
									<input type="hidden"
										value="${sessionScope.currentUser.getId()}" name="user">
									<input type="hidden" value="${cart.getId()}" name="id">
									<input type="hidden" value="${cart.getProductId()}" name="productId">
								</form>
											
										<h6>
											Price:Rs.<i id="R" ></i><%=p.getPrice()%></h6>
										<br>


										<p>${pro.getDescription()}</p>
										<h6>

											In Stock: <span class="badge badge-warning"
												style="padding: 10px;">${pro.getStockqty()}</span>
										</h6>

									</div>


								</div>


							</td>
							<td>${cart.getQty()}</td>
							<td><%=p.getPrice() * x.getQty()%></td>
							<%
								grandTotal += p.getPrice() * x.getQty();
							%>
							<td>
								<!-- <a href="" class="btn  btn-outline-primary">edit</a> --> <a
								href="DeleteCart?id=${cart.getId()}"
								class="btn btn-outline-danger">delete</a>
							</td>
						</tr>
			
			</c:forEach>
		</tbody>
			</table>

			<h1 class="text text-success">
				Grand Total:
				<%=grandTotal%></h1>

			<hr>
			<br>
			<%-- <a href="DeleteAddToCart?userId=${sessionScope.currentUser.getId()}" class="btn btn-primary">Confirm order</button>
			 --%>
			
			<br>
			<br>
			
			<a href="Address.jsp" class="btn btn-danger">confirm order</a>
			
			<br>
			<br>

		</c:otherwise>
	</c:choose>

</body>
</html>