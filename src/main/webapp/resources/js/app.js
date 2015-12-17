'use strict';
 
var app=angular.module("tracker",['ngRoute']);

app.config(function($routeProvider){
	$routeProvider
	
	//route for the home page
	.when('/',{
		templateUrl:'home.jsp',
		controller:'DashboardController'
	})
	
	.when('/viewissues',{
		templateUrl:'viewissues.jsp',
		controller:'ViewIssuesController'
	})
	.when('/createissue',{
		templateUrl:'createissue.jsp',
		controller:'CreateIssueController'
	})
	
	.otherwise('/')
})

