
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:import url="shared.jsp"></c:import>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Payment</title>
<style type="text/css">
dd {
	margin-left: 75px;
}

#mode_margin {
	margin-left: 0px;
}
</style>
</head>
<body>

	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
</head>
<body>
	<div class="jumbotron text-center">
		<h1 class="alter alter-danger"></h1>
		<form action="#" method="post">


			<center>
				<a class="btn btn-warning" Style="font-size: 30px;"><b><u>Payment</u></b></a>
			</center>
			<hr>
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<h3>Card Holder Name:</h3>
					</div>

					<div class="col-lg-7">
						<input class="form-control" type="text" name="name"
							placeholder="Enter Your Name">
					</div>
				</div>


				<br>
				<br>


				<div class="row">
					<div class="col-lg-4">
						<h3>Card Number:</h3>
					</div>

					<div class="col-lg-7">
						<input class="form-control" type="number" name="CvvNumber"
							placeholder="Enter Your Card CVV Number">
					</div>
				</div>

				<br>
				<br>


				<div class="row">
					<div class="col-lg-4">
						<h3>CVV Number:</h3>
					</div>

					<div class="col-lg-4">
						<input class="form-control" type="number" name="CvvNumber"
							placeholder="Enter Your Card CVV Number">
					</div>
				</div>

				<br>
				<div class="row">
					<div class="col-lg-4">
						<h3>Expiry Date:</h3>
					</div>

					<div class="col-lg-8">
						<table cellpadding="0" cellspacing="0">
							<tr>
								<td><select id="cc_exp_mm" name="cc_exp_mm">
										<!--  <option value="">Month</option>
                            -->
										<option value="1" selected="selected">January</option>
										<option value="2">February</option>
										<option value="3">March</option>
										<option value="4">April</option>
										<option value="5">May</option>
										<option value="6">June</option>
										<option value="7">July</option>
										<option value="8">August</option>
										<option value="9">September</option>
										<option value="10">October</option>
										<option value="11">November</option>
										<option value="12">December</option>
								</select></td>
								<td width="20">&nbsp;</td>
								<td><select id="cc_exp_yyyy" name="cc_exp_yyyy">

										<!--  <option value="">Month</option>
                    -->
										<option value="2016" selected="selected">2016</option>
										<option value="2017">2017</option>
										<option value="2018">2018</option>
										<option value="2019">2019</option>
										<option value="2020">2020</option>
										<option value="2021">2021</option>
										<option value="2022">2022</option>
										<option value="2023">2023</option>
										<option value="2024">2024</option>
										<option value="2025">2025</option>
										<option value="2026">2026</option>
										<option value="2027">2027</option>
										<option value="2028">2028</option>
										<option value="2029">2029</option>
										<option value="2030">2030</option>
								</select></td>
							</tr>
						</table>
					</div>
				</div>
				<br> <br>
				<center>
					<a class="btn btn-success" href="DeleteAddToCart?userId=${sessionScope.currentUser.getId()}">Payment</a>
				</center>
			</div>
	</div>
	</form>
</body>
</html>
