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
<!-- Data Table -->
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

<body class="homepage" ng-controller="MainController">

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
						<li class="active"><a href="#/home"><span
								class="glyphicon glyphicon-home"></span>&nbsp;Home</a></li>
						<li ng-show="loginStatus"><a href="#/home"
							data-toggle="modal" data-target="#loginModal"><span
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
												ng-class="{'has-error':(submitted && loginform.username.$error.required) || (loginform.username.$error.required && !loginform.username.$pristine)}">
												<div class="inner-addon left-addon">
													<i class="glyphicon glyphicon-user"></i> <input type="text"
														class="form-control" placeholder="Username"
														ng-model="login.username" required name="username" /> <span
														ng-show="(submitted && loginform.username.$error.required) || (loginform.username.$error.required && !loginform.username.$pristine)"
														class="help-block">Username cannot be blank</span>
												</div>
											</div>
											<div class="form-group"
												ng-class="{'has-error':(submitted && loginform.password.$error.required) || (loginform.password.$error.required && !loginform.password.$pristine) }">
												<div class="inner-addon left-addon">
													<i class="glyphicon glyphicon-lock"></i> <input
														type="password" class="form-control"
														placeholder="Password" ng-model="login.password" required
														name="password" /> <span
														ng-show="(submitted && loginform.password.$error.required) || (loginform.password.$error.required && !loginform.password.$pristine)"
														class="help-block">Password cannot be blank</span>
												</div>
											</div>
											<button type="submit" class="btn btn-danger"
												ng-click="submitted=true">
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
										<form role="form" name="signupform" novalidate
											ng-submit="onSubmit()" ng-app="tracker"
											ng-controller="SignupController">
											<div class="form-group"
												ng-class="{'has-error':(submitted && signupform.username.$error.required) || (signupform.username.$error.required && !signupform.username.$pristine)}">
												<div class="inner-addon left-addon">
													<i class="glyphicon glyphicon-user"></i> <input type="text"
														class="form-control" placeholder="Username"
														name="username" required ng-model="newuser.username" /> <span
														ng-show="(submitted && signupform.username.$error.required) || (signupform.username.$error.required && !signupform.username.$pristine)"
														class="help-block">Username cannot be blank</span>
												</div>
											</div>
											<div class="form-group"
												ng-class="{'has-error':(submitted && signupform.password.$error.required) || (signupform.password.$error.required && !signupform.password.$pristine)}">
												<div class="inner-addon left-addon">
													<i class="glyphicon glyphicon-lock"></i> <input
														type="password" class="form-control"
														placeholder="Password" name="password" required
														ng-model="password" /> <span
														ng-show="(submitted && signupform.password.$error.required) || (signupform.password.$error.required && !signupform.password.$pristine)"
														class="help-block">Password cannot be blank</span>
												</div>
											</div>
											<div class="form-group"
												ng-class="{'has-error':(submitted && signupform.confirmpassword.$error.required) || (signupform.confirmpassword.$error.required && !signupform.confirmpassword.$pristine)|| (!matchPassword() && !signupform.confirmpassword.$pristine)}">
												<div class="inner-addon left-addon">
													<i class="glyphicon glyphicon-ok"></i> <input
														type="password" class="form-control"
														placeholder="Confirm Password" name="confirmpassword"
														required ng-model="confirmpassword" /> <span
														ng-show="(submitted && signupform.confirmpassword.$error.required) || (signupform.confirmpassword.$error.required && !signupform.confirmpassword.$pristine)"
														class="help-block">Confirm Password cannot be blank</span>
													<span
														ng-show="!matchPassword() && !signupform.confirmpassword.$pristine"
														class="help-block">Password Missmatch</span>
												</div>
											</div>

											<button type="submit" class="btn btn-danger"
												ng-click="submitted=true">
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
						<li ng-show="logoutStatus"><a href="#/home"><span
								class="glyphicon glyphicon-log-out"></span>&nbsp;Logout</a></li>
						<li ng-show="logoutVisible()"
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
	<section id="feature" style="height: 110%;">
		<ng-view></ng-view>
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
	<!-- DATA TABES SCRIPT -->
	<script src="resources/jQuery/jQuery-2.1.3.min.js"></script>
	<script src="resources/datatables/jquery.dataTables.min.js"></script>

</body>
</html>