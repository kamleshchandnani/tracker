'use strict'

app.controller('LoginController', [ '$scope', function($scope) {
	$scope.login = {
		username : "",
		password : ""
	};

	$scope.onLogin = function() {

	}
} ]);

app.controller('SignupController', [ '$scope', function($scope) {
	$scope.newuser = {
		username : "",
		password : "",
		confirmpassowrd : ""
	};

	$scope.matchPassword = function() {
		return $scope.password === $scope.confirmpassword;
	}
} ]);

app.controller('IssueController', [ '$scope', function($scope) {
	$scope.issue = {
		title : "",
		description : "",
		createdby : "",
		status : ""
	}
	var statuslist = [ {
		value : "Open",
		label : "Open"
	}, {
		value : "Closed",
		label : "Closed"
	}, {
		value : "In-Progress",
		label : "In-Progress"
	} ]
	
	$scope.statuslist=statuslist;
	
	$scope.onSubmit=function(){
		
	}
	$scope.validStatus=function(){
		
		return $scope.issue.status!="" && $scope.issue.status!=null ;
	}
} ]);
