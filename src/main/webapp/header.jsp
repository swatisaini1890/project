<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<!-- Brand -->

	<c:if test="${not empty sessionScope.currentUser}">
		<a class="navbar-brand" href="#">WELCOME<BR><i class="far fa-id-badge"></i>
			${sessionScope.currentUser.getName()}</a>
			
		<a class="navbar-brand" href="Logout">Logout</a>
		</c:if>
			<c:if test="${sessionScope.currentUser.getRole() == 'user'}">
		<a class="navbar-brand" href="ViewCart.jsp">view cart</a>
		</c:if>
	
<c:if test="${ empty sessionScope.currentUser}">
<a class="navbar-brand" href="Login.jsp">Login</a>
<a class="navbar-brand" href="AddUser.jsp">Sign up</a>

		</c:if>

	<!-- Links -->
	<ul class="navbar-nav">
		<li class="nav-item">
		<a class="nav-link" href="#">
		About us
		</a>
		</li>

		
		
		
		<c:if test="${sessionScope.currentUser.getRole()=='ADMIN'}">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> image </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="sample.jsp">Add image</a> <a
						class="dropdown-item" href="ViewImageBank.jsp">View image</a>

				</div>
				</li>
		</c:if>
		
		<li>
		<div class="navbar-brand">
		
		
		
		</div>
		</li>

		<!-- Dropdown -->
		<c:if test="${sessionScope.currentUser.getRole()=='ADMIN'}">
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbardrop"
				data-toggle="dropdown"> categories </a>
				<div class="dropdown-menu">
					<a class="dropdown-item" href="AddCategory.jsp">Add Category</a> <a
						class="dropdown-item" href="ViewCategory.jsp">View Category</a>

				</div>
				</li>
		</c:if>

		
		
		
		<!-- Dropdown -->
		
		<c:if test="${sessionScope.currentUser.getRole()=='ADMIN'}">
			
		<li class="nav-item dropdown">
		<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> 
		product 
		</a>
		
		<div class="dropdown-menu">
		
				
				<a class="dropdown-item" href="AddProduct.jsp">Add Product</a> 
					<a class="dropdown-item" href="ViewProduct.jsp">View Product</a>
		
			</div>
		
			</li>
</c:if>
		
				
				<c:if test="${sessionScope.currentUser.getRole()=='ADMIN'}">
					<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			href="#" id="navbardrop" data-toggle="dropdown">User </a>
			<div class="dropdown-menu">
				<!-- <a class="dropdown-item" href="AddUser.jsp">Add user</a>  -->
				<a class="dropdown-item" href="ViewUser.jsp">View user</a>

			</div></li>
				
				</c:if>
		

	</ul>
</nav>
