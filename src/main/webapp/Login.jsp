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

</head>
<body>
	<br>

	<h1>Login</h1>
	<hr>
	
	<c:if test="${not empty invalid }">
	<h1 class="alert alert-danger ">Invalid Credentials</h1>
	</c:if>

	<form action="CheckLogin" method="post">

		<div class="row">
			<div class="col-lg-4">
				<h4>enter email address:</h4>
			</div>
			<div class="col-lg-8">
				<input name="userEmail" class="form-control" required="true"
					placeholder="email address" pattern="[a-z 0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
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
						placeholder="password"
						 		
							title="Invalid Password Plz Enter Valid Password" required>
				</div>
			</div>
		<br>
		<br>
			<div class="row">
				<div class="col-lg-12" style="text-align: center">
					<button class="btn btn-success">
						<i class="fas fa-plus"></i>submit
					</button>
				</div>
			</div>
		</div>

	</form>
</body>
</html>