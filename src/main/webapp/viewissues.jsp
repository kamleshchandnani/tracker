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
<!-- DATA TABLES -->
<link href="resources/datatables/dataTables.bootstrap.css"
	rel="stylesheet" type="text/css" />

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
		<div class="container" style="padding-left: 5%;">
			<div
				style="width: 100%; padding: 50px; border: solid 1px black; border-radius: 5px; box-shadow: 0px 0px 10px black; background-color: white;">
				<table id="rule_list" class="table table-bordered table-striped"
					cellspacing="0" width="100%">
					<thead>
						<tr>
							<th style="text-align: center;">Ticket Id</th>
							<th style="text-align: center;">Title</th>
							<th style="text-align: center;">Description</th>
							<th style="text-align: center;">Created By</th>
							<th style="text-align: center;">Status</th>
						</tr>
					</thead>
					<tbody id="tbody" style="text-align: center;">
													
					</tbody>

					<tfoot>
						<tr>
							<th style="text-align: center;">Ticket Id</th>
							<th style="text-align: center;">Title</th>
							<th style="text-align: center;">Description</th>
							<th style="text-align: center;">Created By</th>
							<th style="text-align: center;">Status</th>
						</tr>
						</tr>
					</tfoot>
				</table>

			</div>
		</div>
	</section>
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.prettyPhoto.js"></script>
	<script src="resources/js/jquery.isotope.min.js"></script>
	<script src="resources/js/main.js"></script>
	<script src="resources/js/wow.min.js"></script>
	<!-- DATA TABES SCRIPT -->
	<script src="resources/jQuery/jQuery-2.1.3.min.js"></script>
	<script src="resources/datatables/jquery.dataTables.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {

			$('#rule_list').dataTable({

			});

		});
	</script>


</body>
</html>