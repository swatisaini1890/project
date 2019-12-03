<!-- jstl core tag liabrary -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<c:import url="shared.jsp"/>

</head>
<body>

<c:import url="header.jsp"/>

	<br>
	<br>
	
	
	

	<h1 >Add Category</h1>

	<hr>
	<hr>
	
	<form action="AddCategoryToDB" method="post">

		<div class="cantainer">
			<div class="row">
				<div class="col-lg-4">
					<h4>enter category name :</h4>
				</div>
				<div class="col-lg-8">
					<input name="categoryName" class="form-control"
						placeholder="enter category name " />
				</div>
			</div>

			<br>

			<div class="row">
				<div class="col-lg-4">
					<h4>enter Category description :</h4>
				</div>
				<div class="col-lg-8">
					<textarea name="categoryDescription" class="form-control"
						placeholder="enter category description" ></textarea>
				</div>
			</div>

			<br>
			<div class="row">
				<div class="col-lg-12" style="text-align: center">
					<button class="btn btn-danger">
						<i class="fas fa-plus"></i>ADD
					</button>
				</div>
			</div>
		</div>
	</form>

</body>
</html>