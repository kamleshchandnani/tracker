'use strict'

app.controller('MainController',['$scope',function($scope){
	$scope.logoutStatus=false;
	$scope.loginStatus=true;
	/*$scope.logoutVisible=function(){
		
		return logoutStatus;
	}
	$scope.loginVisible=function(){
		return loginStatus;
	}*/
	
	
	
}]);

app.controller('DashboardController',['$scope',function($scope){
	
	
		
}]);

app.controller('CreateIssueController',['$scope',function($scope){
	
}]);

app.controller('ViewIssuesController',['$scope',function($scope){
	
}]);

app.controller('LoginController', [ '$scope', function($scope) {
	$scope.login = {
		username : "",
		password : ""
	};

	$scope.onLogin = function() {
		$scope.logoutStatus=true
		$scope.loginStatus=false;
		
		
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
