<!DOCTYPE html>
<html lang="en" ng-app="tracker">
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

	<header id="header">

		<nav class="navbar navbar-inverse " role="banner">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html"><img
						src="resources/images/logo.png" alt="logo"></a>
				</div>

				<div class="collapse navbar-collapse navbar-center">
					<ul class="nav navbar-nav">
						<li class="active"><a href="index.html"><span
								class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>
						<li><a href="#" data-toggle="modal" data-target="#loginModal"><span
								class="glyphicon glyphicon-log-in"></span>&nbsp;Login</a></li>
						<!-- Login Modal -->
						<div id="loginModal" class="modal fade" role="dialog">
							<div class="modal-dialog modal-sm" style="width: 30%">

								<!-- Modal content-->
								<div class="modal-content" style="background-color: #f2f2f2">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h2 class="modal-title" style="text-align: center;">Login</h2>
									</div>
									<div class="modal-body">
										<form role="form" name="loginform" novalidate
											ng-submit="onLogin()" ng-app="tracker"
											ng-controller="LoginController">
											<div class="form-group"
												ng-class="{'has-error':login.username.$error.required && !login.username.$pristine}">
												<div class="inner-addon left-addon">
													<i class="glyphicon glyphicon-user"></i> <input type="text"
														class="form-control" placeholder="Username"
														ng-model="login.username" required /> <span
														ng-show="login.username.$error.required && !login.username.$pristine"
														class="help-block">Username cannot be blank</span>

												</div>
											</div>
											<div class="form-group"
												ng-class="{'has-error':login.password.$error.required && !login.password.$pristine}">
												<div class="inner-addon left-addon">
													<i class="glyphicon glyphicon-lock"></i> <input
														type="password" class="form-control"
														placeholder="Password" ng-model="login.password" required />
													<span
														ng-show="login.password.$error.required && !login.password.$pristine"
														class="help-block">Password cannot be blank</span>
												</div>
											</div>

											<button type="submit" class="btn btn-danger">
												<span class="glyphicon glyphicon-log-in"></span>&nbsp;SignIn
											</button>

										</form>
									</div>
									<div class="modal-footer">
										Don't have an account yet?
										<button type="button" class="btn btn-link"
											data-dismiss="modal" data-toggle="modal"
											data-target="#signupModal">Signup</button>
									</div>
								</div>

							</div>
						</div>
						<!-- signup modal -->
						<div id="signupModal" class="modal fade" role="dialog">
							<div class="modal-dialog modal-sm" style="width: 30%">

								<!-- Modal content-->
								<div class="modal-content" style="background-color: #f2f2f2"
									ng-controller="SignupController">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h2 class="modal-title" style="text-align: center;">Signup</h2>
									</div>
									<div class="modal-body">
										<form role="form">
											<div class="form-group">
												<div class="inner-addon left-addon">
													<i class="glyphicon glyphicon-user"></i> <input type="text"
														class="form-control" placeholder="Username" />
												</div>
											</div>
											<div class="form-group">
												<div class="inner-addon left-addon">
													<i class="glyphicon glyphicon-lock"></i> <input type="text"
														class="form-control" placeholder="Password" />
												</div>
											</div>
											<div class="form-group">
												<div class="inner-addon left-addon">
													<i class="glyphicon glyphicon-ok"></i> <input type="text"
														class="form-control" placeholder="Confirm Password" />
												</div>
											</div>

											<button type="submit" class="btn btn-danger">
												<span class="glyphicon glyphicon-save"></span>&nbsp;Sign Up
											</button>
										</form>
									</div>
									<div class="modal-footer">
										Already have an account?
										<button type="button" class="btn btn-link"
											data-dismiss="modal" data-toggle="modal"
											data-target="#loginModal">Login</button>
									</div>
								</div>

							</div>
						</div>
						<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Logout</a></li>
						<li
							style="position: absolute; left: 85%; top: 40%; color: #f2f2f2;">Welcome,User&nbsp;<span
							class="glyphicon glyphicon-user"></span></li>
					</ul>
				</div>
			</div>
			<!--/.container-->
		</nav>
		<!--/nav-->

	</header>
	<!--/header-->

	<!-- main content goes here -->
	<section id="feature" style="height: 100%;">
		<div class="container">
			<div class="center wow fadeInDown">
				<h2>Issue Tracker</h2>
				<p class="lead">A Simplest Tool to log issues and view them!</p>
			</div>



			<form>
				<input type="text" required> <input type="submit">
			</form>
			<div class="row">
				<div class="features">
					<div class="col-md-4 col-sm-6 wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="600ms">
						<div class="feature-wrap">
							<a href="#"><i class="fa fa-eye"></i></a> <br> <br>
							<h2>View Issues</h2>

						</div>
					</div>
					<!--/.col-md-4-->

					<div class="col-md-4 col-sm-6 wow fadeInDown"
						data-wow-duration="1000ms" data-wow-delay="600ms">
						<div class="feature-wrap">
							<a href="#"><i class="fa fa-edit"></i></a> <br> <br>
							<h2>Create Issue</h2>

						</div>
					</div>
					<!--/.col-md-4-->

				</div>
				<!--/.features-->
			</div>
			<!--/.row-->
		</div>
		<!--/.container-->
	</section>
	<!--/#feature-->

	<footer id="footer" class="midnight-blue">
		<div class="container">
			<div class="row">
				<div class="col-sm-5"></div>
				<div class="col-sm-6">&copy; Kamlesh Chandnani.</div>

			</div>
		</div>
	</footer>
	<!--/#footer-->

	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/angular.js"></script>
	<script src="resources/js/angular-route.js"></script>
	<script src="resources/js/app.js"></script>
	<script src="resources/js/controller.js"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
</body>
</html>