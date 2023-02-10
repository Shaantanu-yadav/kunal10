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

<body>
	<nav class="navbar navbar-light navbar-expand-md bg-light navbar"
		style="font-weight: bold; border-bottom: 1px solid #198754; background: rgb(249, 249, 249);">
		<div class="container-fluid">
			<a class="navbar-brand" href="#" style="padding: 0;"><img
				height="40px" src="../../assets/img/GulbrandsenLogo.png"><span
				style="font-size: 1.2rem; font-weight: bold; margin-left: 0.5rem;">Container
					Tracking System</span></a>
			<div class="dropdown">
				<a class="dropdown-toggle" aria-expanded="true"
					data-bs-toggle="dropdown" href="#"><i
					class="fas fa-user text-dark"></i><span
					style="color: rgb(0, 0, 0);">${username}</span></a>
				<div class="dropdown-menu" data-bs-popper="none"
					style="padding-right: 2px; margin-right: -6px; padding-left: 0px; margin-left: -100px;">
					<a class="dropdown-item" href="/logout"><i
						class="fas fa-sign-out-alt"></i>Logout</a>
				</div>
			</div>
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col">
				<form class="border rounded-0 shadow"
					style="margin-top: 20px; margin-bottom: 20px; margin-left: 0px; margin-right: 0px;">
					<h4 class="text-center"
						style="margin-top: 12px; margin-bottom: 12px;">Customer
						Master</h4>
					<div class="row">
						<div class="col-xl-2 offset-xl-3">
							<label class="col-form-label"><strong>Customer
									Code</strong></label>
						</div>
						<div class="col-xl-4" style="width: 200px;">
							<input class="border-secondary form-control" type="text"
								style="margin-top: 9px; " name= "customerCode">
						</div>
					</div>
					<div class="row">
						<div class="col-xl-2 offset-xl-3">
							<label class="col-form-label"><strong>Customer
									Name</strong></label>
						</div>
						<div class="col-xl-4" style="width: 200px;">
							<input class="border-secondary form-control" type="text"
								style="margin-top: 9px;" name="customerName">
						</div>
					</div>
					<div class="row">
						<div class="col-xl-2 offset-xl-3 align-self-center">
							<label class="col-form-label"><strong>Product
									Group</strong></label>
						</div>
						<div class="col-xl-4" style="width: 200px; margin-bottom: 9px;" name="productGroup">
							<select class="form-select"
								style="margin-top: 8px; padding-bottom: 10px; margin-right: 1px; padding-right: 36px;">
								<optgroup label="This is a group">
									<option value="12" selected="">This is item 1</option>
									<option value="13">This is item 2</option>
									<option value="14">This is item 3</option>
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
								style="margin-bottom: 0px;" name= "sap">
						</div>
					</div>
					<div class="row">
						<div class="col-xl-2 offset-xl-3 align-self-center">
							<label class="col-form-label"><strong>Sales Rep</strong></label>
						</div>
						<div class="col-xl-4"
							style="width: 200px; padding-bottom: 0px; margin-bottom: 11px;" name= "salesRep">
							<select class="form-select"
								style="margin-top: 5px; margin-bottom: 5px; padding-bottom: 9px; padding-right: 37px;">
								<optgroup label="This is a group">
									<option value="12" selected="">This is item 1</option>
									<option value="13">This is item 2</option>
									<option value="14">This is item 3</option>
								</optgroup>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-2 offset-xl-3">
							<label class="col-form-label"><strong>Remarks</strong></label>
						</div>
						<div class="col-xl-4" style="width: 200px;">
							<input class="border-secondary form-control" type="text" name= "remarks"
								style="margin-top: -6px;">
						</div>
					</div>
					<div class="row">
						<div class="col-6 col-sm-4 col-xl-2 offset-lg-0 offset-xl-3"
							style="padding-right: 0px;">
							<button class="btn btn-primary btn-sm" type="button"
								style="border-right-color: var(- -bs-btn-hover-border-color); width: 100px;">Save</button>
						</div>
						<div class="col-6 col-sm-4 col-lg-4 col-xl-2 d-inline-block">
							<button class="btn btn-primary btn-sm" type="button"
								style="width: 100px;">Update</button>
						</div>
						<div
							class="col-6 col-sm-4 col-xl-2 offset-3 offset-sm-0 offset-xl-0">
							<button class="btn btn-primary btn-sm" type="button"
								style="width: 100px;">Cancel</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="../../assets/bootstrap/js/bootstrap.min.js"></script>
</body>

</html>