'use strict'

app.controller('MainController',['$scope','$rootScope',function($scope,$rootScope){
	$rootScope.logoutStatus=false;
	$rootScope.loginStatus=true;
	/*$scope.logoutVisible=function(){
		g
		return logoutStatus;
	}
	$scope.loginVisible=function(){
		return loginStatus;
	*}/*/
	
	
	
}]);

app.controller('DashboardController',['$scope',function($scope){
	
	
		
}]);

app.controller('CreateIssueController',['$scope',function($scope){
	
}]);

app.controller('ViewIssuesController',['$scope',function($scope){
	
}]);

app.controller('LoginController', [ '$scope','$rootScope', function($scope,$rootScope) {
	$scope.login = {
		username : "",
		password : ""
	};

	$scope.onLogin = function() {
		$rootScope.logoutStatus=true
		$rootScope.loginStatus=false;
		$('#loginModal').close();
		$(function(){
			$('#loginModal').modal('hide');	
		})
		
		//alert('');
		//close the dialog here. $().close() or .hide() whatever it is. 
		// second, u want to know the login status in other controller. which is MainController. 
		// three ways of doing it. 
		// 1. Use $rootScope for sharing of common data. $rootScope.loginStatus = true
		// 2. Use angular events, from this controller send LoginEvent and in other controller do something on lgoin event. (Best approch)
		// 3. Use angular services. Make a service to hold the common data u want between controllers. 
		// got it?
		//done!
		// how to work with angular events?
		$scope.$apply();
		
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
		 var postData = {
	                u_name: $scope.newuser.username,
	                u_password: $scope.newuser.password
	               
	            };		 
		 $http({
             method: 'POST',
             url: 'createuser',
             data: postData,
             headers: {
            	 "Content-Type": "application/json",
                 "Accept": "text/plain"
				    }
            
         })
         .then(function (response) {
             if (response.status == 200) {
            	 $scope.successFlag=true;
					$scope.errorFlag=false;
            	 alert('success');
             }
             else {
            	    $scope.successFlag=false;
					$scope.errorFlag=true;
                 console.log("failed user creation: " + response.data);
             }
         });
		 
		 
		 
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
