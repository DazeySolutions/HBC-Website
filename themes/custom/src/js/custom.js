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
                if(stateParams.page == ""  || stateParams.page == undefined){
                    return "/home/ajax";
                }else{
                    return "/"+stateParams.page+"/ajax";
                }
            },
            controllerProvider: function(stateParams){
                if(stateParams.controller == undefined){
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
