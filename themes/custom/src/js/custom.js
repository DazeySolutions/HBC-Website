var appDependencies = ['ui.router'];
var hbcWebApp = angular.module("hbcWebApp", appDependencies);

/**
* UI ROUTER CONFIG FILE
* router.js
*/
hbcWebApp.config(['$stateProvider','$urlRouterProvider', function($stateProvider, $urlRouterProvider){
	$urlRouterProvider.otherwise("/");
	
	$stateProvider
		.state('site', {
			url: "/:page",
			templateUrl: function(stateParams){
				return "/"+stateParams.page+"/ajax";
				}
		});
}] );
hbcWebApp.config(['$locationProvider', function($locationProvider){
	$locationProvider.html5Mode(true);
}]);
