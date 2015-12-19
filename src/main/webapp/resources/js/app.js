'use strict';
 
var app=angular.module("tracker",['ngRoute']);

app.config(function($routeProvider){
	$routeProvider
	
	//route for the home page
	.when('/home',{
		templateUrl:'home',
		controller:function($scope) {
	       }
	})
	
	.when('/viewissues',{
		templateUrl:'viewissues',
		controller:'ViewIssuesController'
	})
	.when('/createissue',{
		
		templateUrl:'createissue',
		controller:'IssueController'
	})
	
	.otherwise('/home')
})

