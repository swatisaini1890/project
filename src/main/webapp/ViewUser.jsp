<%@page import="user.UserHandler"%>
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
	UserHandler ph = new UserHandler();
	request.setAttribute("UList", ph.FetchAllUsers());
%>
</head>
<body>

	<br>
	<br>

	<h1 style="text-align: center;">View Users</h1>
	<br>


	<c:choose>

		<c:when test="${empty UList }">
			<h1 class="alert alert-danger">NO User found in db!!</h1>
		</c:when>

		<c:otherwise>

			<hr>

			<table class="table  table-striped">
				<thead >
					<tr>
						<th>#</th>
						<th>Name</th>
						<th>Phone</th>
						<th>Email</th>
						<th>Password</th>

					</tr>
				</thead>
				<tbody>
					<c:forEach items="${UList}" var="user">

						<tr>
							<td>${user.getId()}</td>
							<td>${user.getName()}</td>
							<td>${user.getPhone()}</td>
							<td>${user.getEmail()}</td>
							<td>${user.getPassword()}</td>


							<td>
							<c:if test="${user.getActive()==1}">
									<a href="setUserToInactive?id=${user.getId()}"
										class="btn btn-link"> set Inactive </a>
								</c:if> <c:if test="${user.getActive()==0 }">

									<a class="btn btn-link"
										href="setUserToActive?id=${user.getId()}"> set Active </a>


								</c:if>
							
							<a href="DeleteUser?id=${user.getId()}"
								class="btn btn-outline-danger">delete</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:otherwise>
	</c:choose>
</body>
</html>
