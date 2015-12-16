'use strict';
 
var App = angular.module("tracker",[]);

App.controller("LoginController", [ '$scope', function($scope) {
	$scope.login = {
		username : "",
		password : ""
	};
} ]);

App.controller("SignupController", [ '$scope', function($scope) {
	$scope.newuser = {
			username : "",
			password : "",
			confirmpassowrd:""
		};
} ]);