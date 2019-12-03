<%@page import="product.ProductHandler"%>
<%@page import="category.CategoryHandler"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<c:import url="shared.jsp" />


<%
	ProductHandler ph = new ProductHandler();

	request.setAttribute("productList", ph.fetchAllProducts());
%>

<style type="text/css">
.card {
	width: 28% !important;
	margin: 20px !important;
	display: inline-flex;
	
}


.card-body {
	padding: 0;
	margin: 0;
}
.zoom:hover {
-webkit-transform : scaleX(-1);
transform:scaleX(-1);

}

</style>

</head>
<body>

	<c:import url="header.jsp" />

	<br>
	<br>

	<h1>Current Products</h1>

	<br>
	<a href="AddProduct.jsp" class="btn btn-link">Add Product</a>


	<c:choose>

		<c:when test="${empty productList}">

			<h1 class="alert alert-danger">No Products in DB</h1>

		</c:when>

		<c:otherwise>


			<hr>

			<c:forEach items="${productList}" var="product">

				<div class="card" style="text-align: center;">
					<!-- <div class="card-header">Header</div> -->
					<div class="card-body">

						<img class="zoom"  style="width:100%;padding:10%; margin: auto;"
						
							src="${product.getImageUrl()}">

						<h1 style="text-align: center; font-family: cursive; font-size: 150%" >${product.getName()}</h1>
						<br>

						<h3 class="badge badge-success"  style="text-align: center;">${product.getCategory().getName()}</h3>
						<br>

						<h6 style="text-align: center; font-size: 150%; ">Price: Rs.${product.getPrice()}/-</h6>

						<br>

						<p style="text-align: center;"><i>${product.getDescription()}</i></p>

						<h6 style="text-align: center;">
							In Stock: <span class="badge badge-warning"
								style="padding: 5px;">${product.getStockqty()}</span>
						</h6>

					</div>
					<div class="card-footer">
						<c:if test="${sessionScope.currentUser.getRole() == 'ADMIN'}">
							<a href="EditProduct.jsp?id=${product.getId()}"
								class="btn  btn-outline-primary">edit</a>
							<a href="DeleteProduct?id=${product.getId()} "
								class="btn btn-danger">Delete</a>
						</c:if>
					</div>
					<c:if test="${sessionScope.currentUser.getRole() == 'user'}">
						<div class="card-footer" style="text-align: center;">
							<form action="AddToCart" method="post">
								<div class="container">
									<div class="row">

										<div class="col-lg-4">
											<input type="number" class="form-control" placeholder="Qty"
												name="qty"></input>
										</div>

										<div class="col-lg-8">
											<button class="btn btn-primary">Add Cart<i class="fas fa-cart-arrow-down"></i></button>
										</div>


									</div>
									<input type="hidden" name="productId"
										value="${product.getId()}" /> <input type="hidden"
										class="form-control"
										value="${sessionScope.currentUser.getId()}" name="userId"></input>
								</div>


							</form>

						</div>

					</c:if>
				</div>

			</c:forEach>


		</c:otherwise>

	</c:choose>



</body>
</html>

