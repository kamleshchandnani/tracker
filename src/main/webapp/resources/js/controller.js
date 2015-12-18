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

app.controller('SignupController', [ '$scope','$http', function($scope,$http) {
	$scope.flagcheck=false;
	$scope.successFlag=false;
	$scope.errorFlag=false;
	$scope.newuser = {
		username : "",
		password : "",
		confirmpassowrd : ""
	};

	$scope.matchPassword = function() {
		return $scope.newuser.password === $scope.newuser.confirmpassword;
	}
	
	$scope.createUser=function(){
		//console.log('Creating user:'+ $scope.newuser.username +' '+ $cope.newuser.password);
		
		
		 var postData = {
	                username: $scope.newuser.username,
	                password: $scope.newuser.password
	               
	            };
		
		 
		 $.ajax({

				type : "POST",
				url : "createuser",//call to controller
				data : "username=" + $scope.newuser.username + "&password="
						+ $scope.newuser.password,
				success : function(response) {
					$scope.flagcheck=true;
					 
					 
					 
					 

				},
				error : function(e) {
					alert('Error: ' + e);
					
					$scope.successFlag=false;
					$scope.errorFlag=true;
	                 
	                 console.log("failed user creation: " + e.data);
				}
			});
		/* $scope.newuser = {
					username : "",
					password : "",
					confirmpassowrd : ""
				};
		 $scope.signupform.$setPristine();*/
		
			 alert('');
			 $scope.successFlag=true;
			 $scope.errorFlag=false;
			 $scope.$apply();
				
				 alert('inside');
			 
		 
		 
		 
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
