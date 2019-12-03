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
	<br>
	<h1 style="font-size: 80px;">Address</h1>

	<br>
	<hr>
	<hr>

	<form action="AddAddressToDb" method="post">

		<div class="cantainer">
			<div class="row">
				<div class="col-lg-4">
					<h4>enter name :</h4>
				</div>
				<div class="col-lg-8">
					<input name="name" class="form-control" placeholder="enter name " />
				</div>
			</div>

			<br>

			<div class="cantainer">
				<div class="row">
					<div class="col-lg-4">
						<h4>enter phone :</h4>
					</div>
					<div class="col-lg-8">
						<input type="number" name="phone" class="form-control"
							required="true" placeholder="phone number" maxlength="11" />
					</div>
				</div>

				<br>


				<div class="cantainer">
					<div class="row">
						<div class="col-lg-4">
							<h4>enter pincode :</h4>
						</div>
						<div class="col-lg-8">
							<input type="number" name="pincode" class="form-control"
								required="true" placeholder="enter pincode" maxlength="5" />
						</div>
					</div>

					<br>

					<div class="cantainer">
						<div class="row">
							<div class="col-lg-4">
								<h4>enter locality:</h4>
							</div>
							<div class="col-lg-8">
								<input name="locality" class="form-control"
									placeholder="enter your locality" />
							</div>
						</div>
						<br>
						<div class="cantainer">
							<div class="row">
								<div class="col-lg-4">
									<h4>enter address:</h4>
								</div>
								<div class="col-lg-8">
									<input name="address" class="form-control"
										placeholder="enter your address" />
								</div>
							</div>
							<br>

							<div class="cantainer">
								<div class="row">
									<div class="col-lg-4">
										<h4>enter city:</h4>
									</div>
									<div class="col-lg-8">
										<input name="city" class="form-control"
											placeholder="enter your city" />
									</div>
								</div>
								<br>

								<div class="cantainer">
									<div class="row">
										<div class="col-lg-4">
											<h4>enter state:</h4>
										</div>
										<div class="col-lg-8">
											<input name="state" class="form-control"
												placeholder="enter your state" />
										</div>
									</div>
									<br>
									<div class="cantainer">
										<div class="row">
											<div class="col-lg-4">
												<h4>enter landmark:</h4>
											</div>
											<div class="col-lg-8">
												<input name="landmark" class="form-control"
													placeholder="enter your landmark" />
											</div>
										</div>
										<br>

										<div class="cantainer">
											<div class="row">
												<div class="col-lg-4">
													<h4>enter alternate_phone:</h4>
												</div>
												<div class="col-lg-8">
													<input name="aphone" class="form-control"
														placeholder="enter your alternate phone " />
												</div>
											</div>
											<br>

											<div class="cantainer">
												<div class="row">
													<div class="col-lg-4">
														<h4>enter address_type:</h4>
													</div>
													<div class="col-lg-8">
														<input name="atype" class="form-control"
															placeholder="enter your address" />
													</div>
												</div>
												<br>

											<div class="cantainer">
												<div class="row">
													<div class="col-lg-4">
														<h4>enter userid:</h4>
													</div>
													<div class="col-lg-8">
														<input name="uid" class="form-control"
															placeholder="enter your user id" />
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

												<br>
	</form>
</body>
</html>