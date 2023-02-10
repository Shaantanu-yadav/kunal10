<!DOCTYPE html>
<%@page import="java.util.List"%>
<%@page import="com.gulbrandsen.controller.DbConn"%>
<%@page import="com.gulbrandsen.CustomerMasterDao"%>
<%@page import="com.gulbrandsen.CustomerMaster"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
<title>FMS</title>
<link rel="stylesheet"
	href="../../assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../../assets/fonts/fontawesome-all.min.css">
<link rel="stylesheet" href="../../assets/css/login.css">
</head>

<body class="text-start">
	<nav class="navbar navbar-light navbar-expand-md bg-light navbar"
		style="font-weight: bold; border-bottom: 1px solid #198754; background: rgb(249, 249, 249);">
		<div class="container-fluid">
			<a class="navbar-brand" href="#" style="padding: 0;"><img
				height="40px" src="../../assets/img/GulbrandsenLogo.png"><span
				style="font-size: 1.2rem; font-weight: bold; margin-left: 0.5rem;">Container
					Tracking System</span></a>
			<div class="collapse navbar-collapse" id="navcol-1">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link" href="#">Masters</a></li>
					<li class="nav-item dropdown"><a
						class="dropdown-toggle nav-link" aria-expanded="true"
						data-bs-toggle="dropdown" href="#"><i class="far fa-user"></i>&nbsp;${username}</a>
						<div class="dropdown-menu" data-bs-popper="none"
							style="padding-right: 2px; margin-right: -6px; padding-left: 0px; margin-left: -100px;">
							<a class="dropdown-item" href="#"><i class="far fa-sun"></i>&nbsp;Change
								Password</a><a class="dropdown-item" href="/logout"><i
								class="fas fa-sign-out-alt"></i>&nbsp;Logout</a>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">
		<div>
			<div class="row">
				<div class="col">
					<h2 class="text-center">Customer Master</h2>
				</div>
			</div>
			<div class="row">
				<div class="col text-end" style="background: rgb(255, 255, 255);">
					<a href="customer name 2.jsp">
						<button
							class="btn btn-primary btn-sm text-center border rounded-pill border-dark button"
							type="button"
							style="width: 100px; color: rgb(5, 16, 16); text-align: right; - -bs-light: #5fa2e6; - -bs-light-rgb: 95, 162, 230; - -bs-body-bg: #97ddd5;">ADD
							NEW</button>
						</button>
					</a>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<label class="form-label">Product Group</label><select
						style="padding-left: 0px; margin-left: 8px;">
						<optgroup label="This is a group">
							<option value="12" selected="">This is item 1</option>
							<option value="13">This is item 2</option>
							<option value="14">This is item 3</option>
						</optgroup>
					</select>
				</div>
				<div class="col-md-4">
					<label class="form-label">Customer Code</label><input type="text"
						style="margin-top: -6px; margin-left: 9px;">
				</div>
				<div class="col-md-4">
					<label class="form-label">Customer Name</label><input type="text"
						style="padding-left: 0px; margin-left: 11px;">
				</div>
			</div>
		</div>
	</div>
	<div>
		<div class="table-responsive">
			<table class="table">
				<thead>
					<tr>
						<th>Sr.No</th>
						<th>Customer Code</th>
						<th>Customer Name</th>
						<th>Product Group</th>
						<th>Remark</th>
						<th>Sales Rep</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
				 <%
				CustomerMasterDao dao = new CustomerMasterDao(DbConn.getConn());
				List<CustomerMaster> showRecord = dao.selectAll();
				for(CustomerMaster cus : showRecord){
					
				
				
				%>  <tr>
						<td><%= cus.getCustomerCode() %></td>
						<td><%= cus.getCustomerName() %></td>
						<td><%= cus.getProductGroup() %></td>
						<td><%= cus.getRemarks() %></td>
						<td><%= cus.getSalesRep() %></td>
						<td><%= cus.getSap() %></td>
						<td><%= cus.getSalesRep() %></td>
					</tr>
					<%
					}
					%> 
					<tr>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					<td>1</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	</div>
	<script src="../../assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>
