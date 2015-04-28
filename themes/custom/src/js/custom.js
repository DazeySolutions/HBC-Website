var appDependencies = ['ui.router', 'toaster', 'ngAnimate', 'ngLodash', 'ngImageSlider', 'ngContact', 'pdf'];
var hbcWebApp = angular.module("hbcWebApp", appDependencies);

angular.isUndefinedOrNull = function undefinedOrNull(value){
    return angular.isUndefined(value) || value === null;
};
angular.isUndefinedOrNullOrEmpty = function undefinedOrNull(value){
    return angular.isUndefined(value) || value === null || value === "";
};
hbcWebApp.filter('to_trusted', ['$sce', function($sce){
        return function(text) {
            return $sce.trustAsHtml(text);
        };
    }]);
/**
* UI ROUTER CONFIG FILE
* router.js
*/
hbcWebApp.config(['$stateProvider','$urlRouterProvider', function($stateProvider, $urlRouterProvider){
    $urlRouterProvider.when('',['$state', function($state){
        $state.go('site',{page:'home',controller:'HomePageController'});
    }]);
    $urlRouterProvider.when('/',['$state', function($state){
        $state.go('site',{page:'home',controller:'HomePageController'});
    }]);
    $urlRouterProvider.otherwise('/home');
    var controlName = 'HomePageController';
    $stateProvider
        .state('site', {
            url: "/:page",
            templateUrl: function(stateParams){
                var location = "/home/ajax";
                if(!angular.isUndefinedOrNullOrEmpty(stateParams.page)){
                    location = "/"+stateParams.page+"/ajax";
                }
                return location;
            },
            resolve: {
                jsonData: function($stateParams, $http){
                    return $http.get("/"+$stateParams.page+"/JSON");
                }
            },
            controllerProvider: function(jsonData){
                return jsonData.data.controller;
            }
            
        });
}] );
hbcWebApp.config(['$locationProvider', function($locationProvider){
    $locationProvider.html5Mode(true);
}]);

/**
* CONTROLLERS FILE
* controllers.js
*/
hbcWebApp.controller('SiteController', ['$scope', 'toaster', '$window', '$http', '$stateParams', '$state','EventsService', function ($scope, toaster, $window, $http, $stateParams, $state, EventsService){
    
    EventsService.get();
    $scope.init = function init(){
        $http.get("/home/validAlerts").success(function(data){
            $scope.toastData = data;
        }); 
        
        angular.element(".navbar-inverse").css("background-color", "rgba(0,0,0,0)");
        angular.element(".navbar-inverse").css("border-color", "rgba(0,0,0,0)");
        
        angular.element($window).on('scroll', function(){
           if(angular.element("div.section-row:first")[0].getBoundingClientRect().top<58) {
               angular.element(".navbar-inverse").css("background-color", "#222");
               angular.element(".navbar-inverse").css("border-color", "#222");
           }else{
               angular.element(".navbar-inverse").css("background-color", "rgba(0,0,0,0)");
               angular.element(".navbar-inverse").css("border-color", "rgba(0,0,0,0)");
           }
        });
    };
    $scope.init();
}]);
hbcWebApp.controller('HomePageController', ['$scope', '$http', '$stateParams', '$window','lodash', '$timeout','EventsService', function($scope, $http, $stateParams, $window, lodash, $timeout, EventsService){
    $scope.content = jsonData.data.content;
    $scope.imagePath = jsonData.data.imagepath;
    $scope.content = undefined;
    
    $scope.init =  function init(){
        var maxHeight = Math.min($window.innerHeight-50, $window.innerWidth/(16/9));
        angular.element(".imageSlider").css('height',maxHeight+"px");
        angular.element(".imageSlider").css('background-color','#222');
        angular.element(".imageSlider").css('background-size','cover');
        if(!angular.isUndefinedOrNullOrEmpty(EventsService.model) && !angular.isUndefinedOrNullOrEmpty(EventsService.model.html)){
            angular.element(".event-section").html(EventsService.model.html);
            if(!$scope.$$phase) {
                $scope.$apply();
            }   
        }else{
            angular.element(".event-section").html("<h4 class='text-center'>More events coming soon!</h4>");
        }
    };
    
    $scope.init();
}]);

hbcWebApp.controller('ContentPageController', ['$scope', '$http', '$stateParams','$window','lodash', '$timeout','jsonData','EventsService', function($scope, $http, $stateParams, $window, lodash, $timeout, jsonData, EventsService){
    $scope.content = jsonData.data.content;
    $scope.imagePath = jsonData.data.imagepath;
    $scope.content = undefined;
    
    $scope.init =  function init(){
        var maxHeight = $window.innerWidth/(2.39);
        angular.element(".imageSlider").css('height',maxHeight+"px");
        angular.element(".imageSlider").css('background-color','#222');
        angular.element(".imageSlider").css('background-size','cover');
        if(!angular.isUndefinedOrNullOrEmpty(EventsService.model) && !angular.isUndefinedOrNullOrEmpty(EventsService.model.html)){
            angular.element(".event-section").html(EventsService.model.html);
            if(!$scope.$$phase) {
                $scope.$apply();
            }   
        }else{
            angular.element(".event-section").html("<h4 class='text-center'>More events coming soon!</h4>");
        }
    };
    
    $scope.init();
}]);

hbcWebApp.controller('FormPageController', ['$scope', '$http', '$stateParams', function($scope, $http, $stateParams){
    $scope.init =  function init(){
      
    };
}]);

hbcWebApp.controller('DocumentHolderController', ['$scope', '$http', '$stateParams','$window','lodash','jsonData','EventsService', function($scope, $http, $stateParams, $window, lodash, jsonData, EventsService){
    
    $scope.documents = jsonData.data.documents.data;
    $scope.title = jsonData.data.documents.title;
    $scope.imagePath = jsonData.data.imagepath;
    $scope.curPage = 1;
    $scope.totalPages = 1;
    $scope.url = undefined;
    
    $scope.init =  function init(){
        var maxHeight = $window.innerWidth/(2.39);
        angular.element(".imageSlider").css('height',maxHeight+"px");
        angular.element(".imageSlider").css('background-color','#222');
        angular.element(".imageSlider").css('background-size','cover');
        angular.element(".connection").removeClass("odd");
        angular.element(".connection").addClass("even");
        angular.element(".footer .section-row").removeClass("even");
        angular.element(".footer .section-row").addClass("odd");
        if(!angular.isUndefinedOrNullOrEmpty(EventsService.model) && !angular.isUndefinedOrNullOrEmpty(EventsService.model.html)){
            angular.element(".event-section").html(EventsService.model.html);
            if(!$scope.$$phase) {
                $scope.$apply();
            }   
        }else{
            angular.element(".event-section").html("<h4 class='text-center'>More events coming soon!</h4>");
        }
    };

    $scope.haveUrl = function haveURL(){
      return !angular.isUndefinedOrNullOrEmpty($scope.url);
    };
    $scope.loadDoc = function loadDoc(link){
        $scope.url = link;  
    };
    
    $scope.getMonth = function getMonth(number){
        var month = "";
        switch(parseInt(number)){
            case 1:
                month =  "January";
                break;
            case 2:
                month =  "February";
                break;
            case 3:
                month =  "March";
                break;
            case 4:
                month =  "April";
                break;
            case 5:
                month =  "May";
                break;
            case 6:
                month =  "June";
                break;
            case 7:
                month =  "July";
                break;
            case 8:
                month =  "August";
                break;
            case 9:
                month =  "September";
                break;
            case 10:
                month =  "October";
                break;
            case 11:
                month =  "November";
                break;
            case 12:
                month =  "December";
                break;
        }
        
        return month;
    };

    $scope.init();
    
}]);

hbcWebApp.factory("EventsService", function($http){
    var factory = {};
    factory.model = undefined;
    
    factory.get = function get(){
        if(angular.isUndefinedOrNullOrEmpty(factory.model)){
            $http.get("http://events.hbc-ky.com/a").success(function(data){
                if(!angular.isUndefinedOrNullOrEmpty(data)){
                    factory.model = {
                        html: data
                    };
                }
            });
        }
    };
    
    return factory;
    
});

hbcWebApp.controller('GalleryPageController', ['$scope', '$http', '$stateParams', function($scope, $http, $stateParams){
    $scope.init =  function init(){
      
    };
}]);
