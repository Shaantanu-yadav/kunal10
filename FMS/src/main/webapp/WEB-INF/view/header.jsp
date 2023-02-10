<!DOCTYPE html>
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

<body style="font-size: 13px;">
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
						data-bs-toggle="dropdown" href="#" style="background:#" style="font-weight=">Administration</a>
						<div class="dropdown-menu" data-bs-popper="none">
							<a class="dropdown-item" href="#">User Rights</a><a
								class="dropdown-item" href="#">Update Tank location</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="dropdown-toggle nav-link" aria-expanded="true"
						data-bs-toggle="dropdown" href="#" >Masters</a>
						<div class="dropdown-menu" data-bs-popper="none">
							<a class="dropdown-item" href="#">Tanker Master</a><a
								class="dropdown-item" href="#">Product Master</a><a
								class="dropdown-item" href="Customer_mst.jsp">Customer
								Master</a><a class="dropdown-item" href="#">Tank - Product
								Master</a><a class="dropdown-item" href="#">User Master</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="dropdown-toggle nav-link" aria-expanded="true"
						data-bs-toggle="dropdown" href="#" style="background:#">Scheduling</a>
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
						data-bs-toggle="dropdown" href="#" style="background:#">ACAS</a>
						<div class="dropdown-menu" data-bs-popper="none">
							<a class="dropdown-item" href="#">condition master</a><a
								class="dropdown-item" href="#">Tank Allocation</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="dropdown-toggle nav-link" aria-expanded="false"
						data-bs-toggle="dropdown" href="#" style="background:#">Report</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="#">First Item</a><a
								class="dropdown-item" href="#">Second Item</a><a
								class="dropdown-item" href="#">Third Item</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="dropdown-toggle nav-link" aria-expanded="true"
						data-bs-toggle="dropdown" href="#" style="background:#">Tame Details</a>
						<div class="dropdown-menu" data-bs-popper="none">
							<a class="dropdown-item" href="#">Tame Allocation</a>
						</div></li>
					<li class="nav-item dropdown"><a
						class="dropdown-toggle nav-link" aria-expanded="true"
						data-bs-toggle="dropdown" href="#" style="background:#" style=font>TEAL TOTE TRAVELLER</a>
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
		<div class="container d-none" id="gPageLoader">
		<div class="row">
			<div class="col">
				<div class="animationload">
					<div class="osahanloading"></div>
					<div id="gPageLoaderMsg"></div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" role="dialog" tabindex="-1" id="gAlertModal">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5></h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
					<button class="btn btn-primary btn-sm" type="button"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" role="dialog" tabindex="-1" id="gConfirmModal">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4></h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body"></div>
				<div class="modal-footer">
					<button
						class="btn btn-outline-secondary btn-sm border rounded-0 border-primary btn-cancel"
						type="button" data-bs-dismiss="modal">Cancel</button>
					<button class="btn btn-primary btn-sm border rounded-0 btn-confirm"
						type="button">Confirm</button>
				</div>
			</div>
		</div>
	</div>
	<div class="modal fade" role="dialog" tabindex="-1"
		id="changePasswordModal" data-bs-backdrop="static"
		data-bs-keyboard="false">
		<div class="modal-dialog modal-sm modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title">Change Password</h5>
					<button type="button" class="btn-close btn-modal-close"
						data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div class="modal-body text-center">
					<input class="form-control-sm form-control text-center mb-2"
						type="password" id="changePasswordInput"
						placeholder="Enter New Password"><span
						id="changePasswordSpan" class="text-danger"></span>
				</div>
				<div class="modal-footer">
					<button class="btn btn-light btn-sm btn-modal-close" type="button"
						data-bs-dismiss="modal">Close</button>
					<button class="btn btn-primary btn-sm" id="changePasswordSave"
						type="button">Save</button>
				</div>
			</div>
		</div>
	</div>
	<script src="../../assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>