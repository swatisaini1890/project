<!-- jstl core tag liabrary -->

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<c:import url="shared.jsp" />
<c:import url="header.jsp" />

</head>
<body>


	<br>
	<br>

	<h1>Add User</h1>

	<hr>
	<hr>

	<form action="AddUserToDB" method="post">

		<div class="cantainer">
			<div class="row">
				<div class="col-lg-4">
					<h4>enter name :</h4>
				</div>
				<div class="col-lg-8">
					<input name="userName" class="form-control" 
					required="true"
					placeholder=" name " />
				</div>
			</div>

			<br>

			<div class="row">
				<div class="col-lg-4">
					<h4>enter phone number:</h4>
				</div>
				<div class="col-lg-8">
					<input type="number" name="userPhone" class="form-control"
					 required="true"
					  placeholder="phone number"  
					  pattern="/^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/"
					  >
				</div>
			</div>

			<br>
			<div class="row">
				<div class="col-lg-4">
					<h4>enter email address:</h4>
				</div>
				<div class="col-lg-8">
					<input name="userEmail" class="form-control" required="true"
						placeholder="email address" placeholder="email address"
						 pattern="[a-z 0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
					title="Invalid Email Id Plz Enter Valid Email-Id" required>
				</div>
			</div>
		<br>
		
			<div class="row">
				<div class="col-lg-4">
					<h4>enter password:</h4>
				</div>
				<div class="col-lg-8">
					<input name="userPassword" class="form-control" required="true"
					type="password"
				title="Invalid Password Plz Enter Valid Password" required>
				</div>
			</div>
		<br>
			<div class="row">
				<div class="col-lg-4">
					<h4>enter confirm password:</h4>
				</div>
				<div class="col-lg-8">
					<input name="userConfirmPassword" class="form-control"
					type="password" required="true"
						placeholder="confirm Password"
						title="Invalid Password Plz Enter Valid Password" required>
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