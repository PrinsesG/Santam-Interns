<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.bean.Customer"
	import="java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Customers</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="MyStyle.css">
<link href='https://fonts.googleapis.com/css?family=Passion+One'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Oxygen'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><img
				style="max-width: 100px; margin-top: -16px; margin-left: -16px; height: 52px;"
				src="./img/Santam.PNG"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="CustomerRegistrationForm.jsp">Customer
						Registration</a></li>
				<li><a href="InsuranceInquiryAuto.jsp">Auto Insurance</a></li>
				<li><a href="InsuranceInquiryProperty.jsp">Property
						Insurance</a></li>
				<li><a href="#">Reports</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<div class="container">
		<div class="col-lg-12 well">
			<div class="row">
			
	<%!Customer cutomer;%>

	<%!List<Customer> customerList;%>

	<%
		customerList = (List<Customer>) session.getAttribute("customerList");
	%>

	<table class="table table-bordered">
		<tr>
			<th>Customer ID</th>
			<th>Customer Name</th>
			<th>Customer Surname</th>
			<th>Customer Address</th>
			<th>Customer Phone Number</th>
			<th>Customer Email</th>
			<th>Customer ID Number</th>
			<th>Customer Gender</th>
		</tr>
		<%
			for (Customer customer : customerList) {
		%>
		<tr>
			<td><%=customer.getCustId()%></td>
			<td>
			<%!int tempCustId=0;%>
			<% tempCustId=customer.getCustId();%>
			<a href="ReturnIndividualCustomerController?CustId=<%=tempCustId %>"><%=customer.getCustName()%></a></td>
			<td><%=customer.getSurname()%></td>
			<td><%=customer.getAddress()%></td>
			<td><%=customer.getContactNo()%></td>
			<td><%=customer.getEmail()%></td>
			<td><%=customer.getIdNumber()%></td>
			<td><%=customer.getGender()%></td>
		</tr>
		<%
			}
		%>
	</table>

</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>