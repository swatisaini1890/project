<%@page import="imageBank.ImageBankHandler"%>
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

<c:import url="header.jsp" />

<%
	ImageBankHandler ibh = new ImageBankHandler();

	request.setAttribute("imageList", ibh.fetchAllImagesInBank());
%>

<style type="text/css">
.card {
	width: 33% !important;
	margin: 20px !important;
	display: inline-flex;
}

i:hover {
color: cyan;
}

.card-body {
	padding: 0;
}
</style>

</head>
<body>


	<br>
	<br>

	<h1>Current images</h1>
	
	<c:if test="${not empty msg}">
	<h1 class="alert alert-danger">${msg}</h1>
	</c:if>
	
	<hr>
	<br>
	<a href="sample.jsp" class="btn btn-link"><i class="fas fa-plus-circle"></i>Add IMAGE</a>

	<c:choose>

		<c:when test="${empty imageList}">

			<h1 class="alert alert-danger">No image in DB</h1>

		</c:when>

		<c:otherwise>


			<hr>

			<c:forEach items="${imageList}" var="img">

				<div class="card">
					<!-- <div class="card-header">Header</div> -->
					<div class="card-body">

						<img src="${img.getUrl()}">

					</div>
					<div class="card-footer">
						<a href="DeleteImageFromBank?id=${img.getId() }"
							class="btn btn-outline-danger"><i class="fas fa-trash"></i>Delete</a>
					</div>
				</div>

			</c:forEach>


		</c:otherwise>

	</c:choose>



</body>
</html>