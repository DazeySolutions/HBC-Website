var appDependencies = ['ui.router', 'toaster', 'ngAnimate', 'ngLodash', 'ngImageSlider', 'ngContact'];
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
            params: {controller: ''},
            templateUrl: function(stateParams){
                var location = "/home/ajax";
                if(!angular.isUndefinedOrNullOrEmpty(stateParams.page)){
                    location = "/"+stateParams.page+"/ajax";
                }
                if(!angular.isUndefinedOrNullOrEmpty(stateParams.controller)){
                    controlName = stateParams.controller;
                }else{
                    controlName = 'HomePageController';
                }
                return location;
            },
            controller: controlName
            
        });
}] );
hbcWebApp.config(['$locationProvider', function($locationProvider){
    $locationProvider.html5Mode(true);
}]);

/**
* CONTROLLERS FILE
* controllers.js
*/
hbcWebApp.controller('SiteController', ['$scope', 'toaster', '$window', '$http', '$stateParams', '$state', function ($scope, toaster, $window, $http, $stateParams, $state){
    $scope.init = function init(){
        $http.get("/home/validAlerts").success(function(data){
            $scope.toastData = data;
        }); 
    };
    $scope.init();
}]);
hbcWebApp.controller('HomePageController', ['$scope', '$http', '$stateParams', '$window','lodash', '$timeout', function($scope, $http, $stateParams, $window, lodash, $timeout){
    $scope.init =  function init(){
        var location = "home";
        var maxHeight = $window.innerWidth/(2.39);
        angular.element(".imageSlider").css('height',maxHeight+"px");
        angular.element(".imageSlider").css('background-color','#222');
        angular.element(".imageSlider").css('background-size','cover');
        location = !angular.isUndefinedOrNullOrEmpty($stateParams.page) ? $stateParams.page : location;
        $http.get("/"+location+"/ajaxContent").success(function(data){
            $scope.content = data;
            if($scope.content.length % 2 === 1){
                angular.element(".connection").removeClass("odd");
                angular.element(".connection").addClass("even");
                angular.element(".footer .section-row").removeClass("even");
                angular.element(".footer .section-row").addClass("odd");
            }
            if(!angular.isUndefinedOrNullOrEmpty(events)){
                if(events === -1){
                    angular.element(".event-section").html("<h4 class='text-center'>More events coming soon!</h4>");
                }else{
                    angular.element(".event-section").html(events);
                }
            }else{
                angular.element(".event-section").html("<h4 class='text-center'>Loading upcoming events...</h4>");
            }
        });
        $http.get("http://beta.hbc-ky.com:3000/a").success(function(data){
            if(angular.isUndefinedOrNullOrEmpty(data)){
                events = -1;
            }else{
                events = data;
            }
            if(!angular.isUndefinedOrNull($scope.content)){
                if(events === -1){
                    angular.element(".event-section").html("<h4 class='text-center'>More events coming soon!</h4>");
                }else{
                    angular.element(".event-section").html(events);
                }
            }
        });
        $scope.imagePath = "/"+location+"/ajaxImages";
        // $http.get("/"+location+"/ajaxImages?width="+$window.innerWidth).success(function(data){
        //     $scope.images = data;
        //     $scope.prevImageNum = data.length-1;
        //     $scope.currImage = $scope.images[0];
            
        //     angular.element(".imageSlider").css('background-image','url("/'+$scope.currImage.Filename+'")');
        //     lodash.forEach($scope.images, function(image, index){
        //         angular.element(".imageSlider .dots span").append("<i class='dot"+index+" fa fa-fw fa-circle-o'></i>");
        //     });
        //     angular.element(".imageSlider .dots span i.dot0").removeClass('fa-circle-o');
        //     angular.element(".imageSlider .dots span i.dot0").addClass('fa-circle');
        //     if($scope.images.length > 1){
        //         $timeout(function(){
        //             $scope.currImage = $scope.images[$scope.nextImageNum];
        //             angular.element(".imageSlider").css('background-image','url("/'+$scope.currImage.Filename+'")');
        //             $scope.incrementImageNums();
        //             angular.element(".imageSlider .dots span i.fa-circle").addClass('fa-circle-o');
        //             angular.element(".imageSlider .dots span i.fa-circle").removeClass('fa-circle');
        //             angular.element(".imageSlider .dots span i.dot"+$scope.currImageNum).addClass('fa-circle');
        //             angular.element(".imageSlider .dots span i.dot"+$scope.currImageNum).removeClass('fa-circle-o');
        //         }, 7000);
        //     }
        // });
        
    };
    var events;
    $scope.incrementImageNums = function(){
        $scope.nextImageNum++;
        if($scope.nextImageNum >= $scope.images.length){
            $scope.nextImageNum = 0;
        }
        $scope.curImageNum++;
        $scope.prevImageNum++;
        if($scope.prevImageNum >= $scope.images.length){
            $scope.prevImageNum = $scope.images.length-1;
        }
    };
    $scope.currImage = undefined;
    $scope.currImageNum = 0;
    $scope.nextImageNum = 1;
    $scope.prevImageNum = -1;
    $scope.content = undefined;
    $scope.images = {};
    $scope.init();
}]);

hbcWebApp.controller('PageController', ['$scope', '$http', '$stateParams', function($scope, $http, $stateParams){
    $scope.init =  function init(){
      
    };
}]);

hbcWebApp.controller('FormPageController', ['$scope', '$http', '$stateParams', function($scope, $http, $stateParams){
    $scope.init =  function init(){
      
    };
}]);

hbcWebApp.controller('GalleryPageController', ['$scope', '$http', '$stateParams', function($scope, $http, $stateParams){
    $scope.init =  function init(){
      
    };
}]);
