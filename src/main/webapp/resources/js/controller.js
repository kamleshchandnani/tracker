'use strict'

app.controller('MainController',['$scope','$rootScope',function($scope,$rootScope){
	$rootScope.logoutStatus=false;
	$rootScope.loginStatus=true;
	$rootScope.userSession="";
	$scope.doLogout=function(){
		$rootScope.logoutStatus=false;
		$rootScope.loginStatus=true;
	}
}]);

app.controller('DashboardController',['$scope',function($scope){
	
	
		
}]);

app.controller('CreateIssueController',['$scope',function($scope){
	
}]);

app.controller('ViewIssuesController',['$scope','$http',function($scope,$http){
	angular.element(document).ready(function () {				 
			 $http({
	             method: 'GET',
	             url: 'getissues',
	             
	         })
	         .then(function (response) {
	             if (response.status == 200) {
	            	 $scope.issueList=response.data;
	             }
	             else {
	            	 
	                 console.log("failed user creation: " + response.data);
	             }
	         });			
    });
	
}]);

app.controller('LoginController', [ '$scope','$http','$rootScope', function($scope,$http,$rootScope) {
	$scope.login = {
		username : "",
		password : ""
	};

	$scope.onLogin = function() {
		
		$scope.wrongcredentials=false;
		/*angular.element(document).ready(function () {
			alert('');
			$('#loginmodal').hide();
		});*/
			 var postData = {
		                u_name: $scope.login.username,
		                u_password: $scope.login.password
		            };
			 $http({
	             method: 'POST',
	             url: 'loginuser',
	             data: postData,
	             headers: {
	            	 "Content-Type": "application/json",
	                 "Accept": "text/plain"
				}
	            
	         })
	         .then(function (response) {
	             if (response.status == 200 && response.data=="success") {
						$rootScope.userSession=$scope.login.username;
						$scope.submitted=false;
						$rootScope.logoutStatus=true;
						$rootScope.loginStatus=false;
						$scope.login = {
								username : "",
								password : ""
							};
	            	 $scope.loginform.$setPristine();
	             }
	             else {
	            	 	
	            	 	$scope.wrongcredentials=true;
						console.log("failed user creation: " + response.data);
	             }
	         });
	}
	
} ]);

app.controller('SignupController', [ '$scope','$http', function($scope,$http) {
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
					$scope.submitted=false;
            	 $scope.newuser = {
            				username : "",
            				password : "",
            				confirmpassowrd : ""
            			};
            	 $scope.signupform.$setPristine();
             }
             else {
            	    $scope.successFlag=false;
					$scope.errorFlag=true;
                 console.log("failed user creation: " + response.data);
             }
         });
	}
} ]);

app.controller('IssueController', [ '$scope','$http', function($scope,$http) {
	$scope.createIssueSuccessFlag=false;
	$scope.createIssueErrorFlag=false;
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
	
	
	$scope.validStatus=function(){
		
		return $scope.issue.status!="" && $scope.issue.status!=null ;
	}
	
	$scope.createIssue=function(){		
		 var postData = {
	                issue_title: $scope.issue.title,
	                issue_desc: $scope.issue.description,
	                created_by:$scope.issue.createdby,
	                issue_status:$scope.issue.status
	            };		 
		 $http({
            method: 'POST',
            url: 'createnewissue',
            data: postData,
            headers: {
           	 "Content-Type": "application/json",
                "Accept": "text/plain"
				    }
           
        })
        .then(function (response) {
            if (response.status == 200) {
            	$scope.createIssueSuccessFlag=true;
					$scope.createIssueErrorFlag=false;
					$scope.submitted=false;
					$scope.issue = {
							title : "",
							description : "",
							createdby : "",
							status : ""
						}
           	 $scope.issueform.$setPristine();
            }
            else {
            	$scope.createIssueSuccessFlag=true;
				$scope.createIssueErrorFlag=false;
                console.log("failed user creation: " + response.data);
            }
        });
	}
} ]);
