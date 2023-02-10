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
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.13.2/css/jquery.dataTables.min.css">
</head>

<body style="font-size: 13px;">
	<nav class="navbar navbar-light navbar-expand-md bg-light"
		style="font-weight: bold; border-bottom: 1px solid #198754;">
		<div class="container-fluid">
			<a class="navbar-brand" href="#" style="padding: 0;"><img
				height="40px" src="../../assets/img/GulbrandsenLogo.png"><span
				style="font-size: 1rem; font-weight: bold; margin-left: 0.5rem;">Container Tracking System</span><span
				style="font-size: 0.6rem; font-weight: bold; margin-left: 0.1rem;">(Ver
					1.0)</span></a>
			<button data-bs-toggle="collapse" class="navbar-toggler"
				data-bs-target="#navcol-1">
				<span class="visually-hidden">Toggle navigation</span><span
					class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navcol-1">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item dropdown"><a
						class="dropdown-toggle nav-link" aria-expanded="true"
						data-bs-toggle="dropdown" href="#">Administration
						 
						
						</a>
						
						<div class="dropdown-menu" data-bs-popper="none">
							<a class="dropdown-item" href="#">User Rights</a><a
								class="dropdown-item" href="#">Update Tank location</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="dropdown-toggle nav-link" aria-expanded="true"
						data-bs-toggle="dropdown" href="#" style="background:#4db082;">Customer Masters</a>
						<div class="dropdown-menu" data-bs-popper="none">
							<a class="dropdown-item" href="#">Tanker Master</a><a
								class="dropdown-item" href="#">Product Master</a><a
								class="dropdown-item" href="Customer_mst.jsp">Customer
								Master</a><a class="dropdown-item" href="#">Tank - Product
								Master</a><a class="dropdown-item" href="#">User Master</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="dropdown-toggle nav-link" aria-expanded="true"
						data-bs-toggle="dropdown" href="#">Scheduling</a>
						<div class="dropdown-menu" data-bs-popper="none">
							<a class="dropdown-item" href="#">Track Tanker</a><a
								class="dropdown-item" href="#">Track tanker History</a><a
								class="dropdown-item" href="#">Track Container History</a><a
								class="dropdown-item" href="#">Track Container History</a><a
								class="dropdown-item" href="#">Teal Track tracking</a><a
								class="dropdown-item" href="#">Mass Update for Teal Track
								Tracking</a><a class="dropdown-item" href="#">Mass update using
								Invoice Number</a><a class="dropdown-item" href="#">mass Update
								Using BL</a><a class="dropdown-item" href="#">GCL Addkor Teal
								Transfer</a><a class="dropdown-item" href="#">GulEC Teal
								Transfer</a><a class="dropdown-item" href="#">Belfruco Teal
								Transfer</a><a class="dropdown-item" href="#">Leporte teal
								Transfer</a><a class="dropdown-item" href="#">Kanoo Teal
								Transfer</a><a class="dropdown-item" href="#">Invoice Mappng</a><a
								class="dropdown-item" href="#">SAP Customer Mapping</a><a
								class="dropdown-item" href="#">SAP Product Category Mapping</a><a
								class="dropdown-item" href="#">Dahej Transfer</a><a
								class="dropdown-item" href="#">BRC Upload</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="dropdown-toggle nav-link" aria-expanded="true"
						data-bs-toggle="dropdown" href="#">ACAS</a>
						<div class="dropdown-menu" data-bs-popper="none">
							<a class="dropdown-item" href="#">condition master</a><a
								class="dropdown-item" href="#">Tank Allocation</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="dropdown-toggle nav-link" aria-expanded="false"
						data-bs-toggle="dropdown" href="#">Report</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">First Item</a><a
								class="dropdown-item" href="#">Second Item</a><a
								class="dropdown-item" href="#">Third Item</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="dropdown-toggle nav-link" aria-expanded="true"
						data-bs-toggle="dropdown" href="#">Tame Details</a>
						<div class="dropdown-menu" data-bs-popper="none">
							<a class="dropdown-item" href="#">Tame Allocation</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="dropdown-toggle nav-link" aria-expanded="true"
						data-bs-toggle="dropdown" href="#">TEAL TOTE TRAVELLER</a>
						<div class="dropdown-menu" data-bs-popper="none"
							style="padding-right: 2px; margin-right: -6px; padding-left: 0px; margin-left: -50px;">
							<a class="dropdown-item" href="#">Dahboard</a><a
								class="dropdown-item" href="#">Mintanance</a><a
								class="dropdown-item" href="#">Operations</a><a
								class="dropdown-item" href="#">QC Inspection</a><a
								class="dropdown-item" href="#">Container Stuffing</a><a
								class="dropdown-item" href="#">Tank Dispatch</a><a
								class="dropdown-item" href="#">At Dahej section</a><a
								class="dropdown-item" href="#">In Transit to Warehouse
								Section</a><a class="dropdown-item" href="#">In Transit to
								Customer Section</a><a class="dropdown-item" href="#">At
								Customer section</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="dropdown-toggle nav-link" aria-expanded="true"
						data-bs-toggle="dropdown" href="#"><i class="far fa-user"></i>&nbsp;${username}</a>
						<div class="dropdown-menu" data-bs-popper="none"
							style="padding-right: 2px; margin-right: -15px; padding-left: 0px; margin-left: -100px;">
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
				<div class="col-md-9 offset-md-1">
					<h4 class="text-center">Customer Master</h4>
					<label style="color:green">${success}</label>
				</div>
				<div class="col-md-2 offset-md-0">
					<a href="Customer_form.jsp">
						<button class="btn btn-primary" type="button"
							style="padding-top: 0px; margin-top: 4px; margin-bottom: 30px;">ADD
							NEW</button>

					</a>
				</div>
			</div>
		</div>


		<div>
			<div class="abl">
				<table class="tbl cell-border hover display compact"
					style="width: 100%">
					<thead>
						<tr>
							<th></th>
							<th>Id</th>

							<th>Customer Code</th>
							<th>Customer Name</th>
							<th>Product Group</th>
							<th>Sales Rep</th>
							<th>SAP Customer code</th>
							<th>Remarks</th>

						</tr>
					</thead>
					<tbody>
						<%
						CustomerMasterDao Dao = new CustomerMasterDao(DbConn.getConn());
						List<CustomerMaster> showRecord = Dao.selectAll();
						for (CustomerMaster cus : showRecord) {
						%>
						<tr>
							<td><a href="UpdateForm.jsp?id=<%=cus.getCustomerCode()%>"><button>
										<i class="fas fa-pen"></i>
									</button></a></td>
							<td><%=cus.getCustomerCode()%></td>
							<td><%=cus.getCustomerName()%></td>
							<td><%=cus.getProductGroup()%></td>
							<td><%=cus.getRemarks()%></td>
							<td><%=cus.getSalesRep()%></td>
							<td><%=cus.getCustomerSap()%></td>
							<td><%=cus.getSap()%></td>

						</tr>
						<%
						}
						%>

					</tbody>
				</table>
			</div>
		</div>

		<script src="../../assets/bootstrap/js/bootstrap.min.js"></script>
		<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
		<script
			src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js""></script>
		<script>
			$(document).ready(function() {
				$('.tbl').DataTable();
			});
		</script>
</body>

</html>
