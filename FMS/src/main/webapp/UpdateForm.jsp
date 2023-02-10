<%@page import="com.gulbrandsen.CustomerMaster"%>
<%@page import="com.gulbrandsen.controller.DbConn"%>
<%@page import="com.gulbrandsen.CustomerMasterDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

<body style="font-size: 13px">
	<nav class="navbar navbar-light navbar-expand-md fixed-top bg-light"
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
						data-bs-toggle="dropdown" href="#">Administration</a>
						
						<div class="dropdown-menu" data-bs-popper="none">
							<a class="dropdown-item" href="#">User Rights</a><a
								class="dropdown-item" href="#">Update Tank location</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="dropdown-toggle nav-link" aria-expanded="true"
						data-bs-toggle="dropdown" href="#"style="background:#4db082;">Customer Masters</a>
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
		<div class="row">
			<div class="col">
				<form action="/UpdateData" method="get"
					class="border rounded-0 shadow"
					style="margin-left:0px; margin-right:0px;padding-right:83px;padding-left:83px;padding-top:50px;padding-bottom:20px;margin-bottom:13px;margin-top:100px">
					<h4 class="text-center"
						style="margin-top: 12px; margin-bottom: 12px;">Customer
						Master</h4>
					<% 
					int id = Integer.parseInt(request.getParameter("id"));
					CustomerMasterDao dao = new CustomerMasterDao(DbConn.getConn());
					CustomerMaster cus = dao.getDataById(id);
					%>
					<div class="row">
						<div class="col-xl-2 offset-xl-3">
							<label class="col-form-label"><strong>Customer
									Code</strong><b style="color:red">*</b></label>
						</div>

						<div class="col-xl-4" style="width: 200px;">
							<input class="border-secondary form-control" type="text"
								style="margin-top: 9px;" name="customerCode"
								value="<%=cus.getCustomerCode()%>">
						</div>
					</div>
					<div class="row">
						<div class="col-xl-2 offset-xl-3">
							<label class="col-form-label"><strong>Customer
									Name</strong><b style="color:red">*</b></label>
						</div>
						<div class="col-xl-4" style="width: 500px;">
							<input class="border-secondary form-control" type="text"
								style="margin-top: 9px;" name="customerName"
								value="<%=cus.getCustomerName()%>">
						</div>
					</div>
					<div class="row">
						<div class="col-xl-2 offset-xl-3 align-self-center">
							<label class="col-form-label"><strong>Product
									Group</strong><b style="color:red">*</b></label>
						</div>
						<div class="col-xl-4" style="width: 200px; margin-bottom: 9px;">
							<select class="form-select" name="productGroup"
								style="margin-top: 8px; padding-bottom: 10px; margin-right: 1px;
								padding-right: 36px;">
								<option value="<%=cus.getProductGroup()%>" hidden><%=cus.getProductGroup()%></option>

								<option value="ANH" >ANH</option>
								<option value="TIN">TIN</option>
								<option value="PEWAX">PEWAX</option>
								<option value="P1062">P1062</option>
								<option value="Aluminium Alkyls">Aluminium Alkyls</option>
								<option value="Others">Others</option>
								</optgroup>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-2 offset-xl-3">
							<label class="col-form-label"><strong>SAP
									Customer Code</strong></label>
						</div>
						<div class="col-xl-4" style="width: 200px;">
							<input class="border-secondary form-control" type="text"
								style="margin-bottom: 10px;" name="sap"
								value="<%=cus.getSap()%>">
						</div>
					</div>
					<div class="row">
						<div class="col-xl-2 offset-xl-3 align-self-center">
							<label class="col-form-label"><strong>Sales Rep</strong><b style="color:red">*</b></label>
						</div>
						<div class="col-xl-4"
							style="width: 200px; padding-bottom: 0px; margin-bottom: 11px;"
							name="salesRep">
							<input class="border-secondary form-control" type="text"
								style="margin-bottom: 5px;" name="salesRep"
								value="<%=cus.getSalesRep()%>">
						</div>
					</div>
					<div class="row">
						<div class="col-xl-2 offset-xl-3">
							<label class="col-form-label"><strong>Remarks</strong></label>
						</div>
						<div class="col-xl-4" style="width: 500px;">
							<input class="border-secondary form-control" type="text"
								name="remarks" value="<%=cus.getRemarks()%>"
								style="margin-top: -6px;">
						</div>

					</div>
					<input type="hidden" name="id" value="<%=cus.getId()%>">
					<div class="row">
						<div
							class="col-6 col-sm-4 col-md-6 col-xl-2 offset-lg-0 offset-xl-3"
							style="padding-right: 0px; padding-left: 114px;">
							<button class="btn btn-primary btn-sm" type="submit"
								style="border-right-color: var(- -bs-btn-hover-border-color); width: 100px;">Update</button>
						</div>
						<div
							class="col-6 col-sm-4 col-md-4 col-xl-2 offset-3 offset-sm-0 offset-xl-0"
							style="padding-left: 66px;">
							<a href="Customer_mst.jsp"><button
									class="btn btn-primary btn-sm" type="button"
									style="width: 100px;">Cancel</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="../../assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="../../assets/js/header.js"></script>
	<script src="../../assets/js/login.js"></script>
</body>

</html>