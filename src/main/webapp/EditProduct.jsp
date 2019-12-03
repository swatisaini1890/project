<%@page import="category.CategoryHandler"%>
<%@page import="product.ProductHandler"%>
<%@page import="product.Product"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<c:import url="shared.jsp" />
<c:import url="header.jsp" />


<%
	int id = Integer.parseInt(request.getParameter("id"));
	Product p = new ProductHandler().fetchProduct(id);

	request.setAttribute("productList", p);
%>

<%
	CategoryHandler ch = new CategoryHandler();
	request.setAttribute("catList", ch.fetchAllCategories());
%>
</head>
<body>

	<br>
	<br>

	<h1>Edit Product</h1>

	<hr>
	<br>
	<br>
	<form action="EditProductToDB" method="post">

		<input type="hidden" name="id" value="${productList.getId()}">

		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<h4>Enter Product Name:-</h4>
				</div>
				<div class="col-lg-8">
					<input name="productName" class="form-control"
						value="${productList.getName()}"
						placeholder="Enter Product name here" />
				</div>
			</div>

			<br>
			<div class="row">
				<div class="col-lg-4">
					<h4>Enter Product Description:-</h4>
				</div>
				<div class="col-lg-8">
					<textarea name="productDescription" class="form-control"
						placeholder="Enter Procuct Discripton here">${productList.getDescription()}</textarea>
				</div>
			</div>

			<br> <br>

			<c:if test="${not empty catList}">
				<div class="row">
					<div class="col-lg-4">
						<h4>Enter Product Category:-</h4>
					</div>

					<div class="col-lg-8">
						<select class="form-control" name="productCategoryId">
							<c:forEach items="${catList}" var="c">
								<option value="${c.getId()}" title="${c.getDescription()}"
									<c:if test="${productList.getCategoryId() == c.getId()}">selected</c:if>>${c.getName()}</option>
							</c:forEach>
						</select>
					</div>
				</div>

			</c:if>


			<br> <br>

			<div class="row">
				<div class="col-lg-4">
					<h4>Enter Procuct Price:-</h4>
				</div>
				<div class="col-lg-8">
					<input type="text" name="productPrice" class="form-control"
						placeholder="Enter Procuct Price here"
						value="${productList.getPrice()}"></input>
				</div>
			</div>

			<br>
			<div class="row">
				<div class="col-lg-4">
					<h4>Enter Product StockQty:-</h4>
				</div>
				<div class="col-lg-8">
					<input type="number" name="productStockqty" class="form-control"
						placeholder="Enter Procuct stockqty here"
						value="${productList.getStockqty()}"></input>
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-lg-12" style="text-align: center">
					<button class="btn btn-primary">
						<i class="fas fa-edit"></i>EDIT
					</button>
				</div>
			</div>

		</div>
	</form>
</body>
</html>