var appDependencies = ['ui.router'];
var hbcWebApp = angular.module("hbcWebApp", appDependencies);

/**
* UI ROUTER CONFIG FILE
* router.js
*/
hbcWebApp.config(['$stateProvider','$urlRouterProvider', function($stateProvider, $urlRouterProvider){
    angular.isUndefinedOrNull = function undefinedOrNull(value){
        return angular.isUndefined(value) || value === null;
    };
    angular.isUndefinedOrNullOrEmpty = function undefinedOrNull(value){
        return angular.isUndefined(value) || value === null || value === "";
    };
    $urlRouterProvider.otherwise("/");
    
    $stateProvider
        .state('site', {
            url: "/:page",
            templateProvider: function(stateParams, $http){
                var location = "/home/ajax";
                if(!angular.isUndefinedOrNullOrEmpty(stateParams.page)){
                    location = "/"+stateParams.page+"/ajax";
                }
                $http.get(location).
                    success(function(data, status, headers, config) {
                        return data;
                    }).
                    error(function(data, status, headers, config) {
                        return "<h1>An error has occurred!  Try refreshing the page, if you have seen this multiple times <a href='mailto:webmaster@hbc-ky.com'>email the webmaster</a></h1>";
                    });
            },
            controllerProvider: function(stateParams){
                if(angular.isUndefinedOrNullOrEmpty(stateParams.controller)){
                    return 'HomePageController';
                }else{
                    return stateParams.controller;
                }
            } 
        });
}] );
hbcWebApp.config(['$locationProvider', function($locationProvider){
    $locationProvider.html5Mode(true);
}]);

/*hbcWebApp.controller('HomePageController', ['$scope', '$http', '$stateParams', function($scope, $http, $stateParams){
    $scope.init =  function init(){
      $http.get("/"+$stateParams.page+"/ajaxContent").success(function(data){
          $scope.content = data;
      });
    };
}]);
*/
