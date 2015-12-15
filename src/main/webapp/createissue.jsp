<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Home | IssueTracker</title>

<!-- core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/font-awesome.min.css" rel="stylesheet">
<link href="resources/css/animate.min.css" rel="stylesheet">
<link href="resources/css/prettyPhoto.css" rel="stylesheet">
<link href="resources/css/main.css" rel="stylesheet">
<link href="resources/css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="resources/images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="resources/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="resources/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="resources/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="resources/images/ico/apple-touch-icon-57-precomposed.png">


<style type="text/css">
html, body {
	height: 100%
}

.inner-addon {
	position: relative;
}

/* style icon */
.inner-addon .glyphicon {
	position: absolute;
	padding: 10px;
	pointer-events: none;
}

.left-addon .glyphicon {
	left: 0px;
}

.form-group .left-addon input, .form-group .left-addon textarea,
	.form-group .left-addon select {
	padding-left: 32px;
}

.form-group input:focus, .form-group textarea:focus, .form-group select:focus
	{
	outline: none;
	border-color: #c52d2f;
}

.form-group input, .form-group textarea, .form-group select {
	outline: 1px solid black;
}
</style>
</head>
<!--/head-->

<body class="homepage">
	<section id="feature" style="height: 100%;">
		<div class="container" style="padding-left: 25%;">
			<div
				style="width: 60%; padding: 50px; border: solid 1px black; border-radius: 5px; box-shadow: 0px 0px 10px black; background-color:white;">
				<form role="form">
					<div class="form-group">
						<label>Title:</label>
						<div class="inner-addon left-addon">
							<i class="glyphicon glyphicon-text-width"></i> <input type="text"
								class="form-control" placeholder="Title" />
						</div>
					</div>
					<div class="form-group">
						<label>Description:</label>
						<div class="inner-addon left-addon">
							<i class="glyphicon glyphicon-edit"></i>
							<textarea class="form-control" rows="5" id="comment"
								placeholder="Description"></textarea>
						</div>
					</div>
					<div class="form-group">
						<label>Created By:</label>
						<div class="inner-addon left-addon">
							<i class="glyphicon glyphicon-user"></i> <input type="text"
								class="form-control" placeholder="" />
						</div>
					</div>
					<div class="form-group">

						<label>Status:</label>
						<div class="inner-addon left-addon">
							<i class="glyphicon glyphicon-flag"></i> <select
								class="form-control" id="sel1">
								<option value="Open">Open</option>
								<option value="Closed">Closed</option>
								<option value="In-Progress">In-Pogress</option>
							</select>
						</div>
					</div>
					<button type="submit" class="btn btn-danger">
						<span class="glyphicon glyphicon-save"></span>&nbsp;Submit
					</button>
				</form>
			</div>
		</div>
	</section>
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.prettyPhoto.js"></script>
	<script src="resources/js/jquery.isotope.min.js"></script>
	<script src="resources/js/main.js"></script>
	<script src="resources/js/wow.min.js"></script>
</body>
</html>