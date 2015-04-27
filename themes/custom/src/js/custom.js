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
hbcWebApp.controller('SiteController', ['$scope', 'toaster', '$window', '$http', '$stateParams', '$state', function ($scope, toaster, $window, $http, $stateParams, $state){
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
hbcWebApp.controller('HomePageController', ['$scope', '$http', '$stateParams', '$window','lodash', '$timeout', function($scope, $http, $stateParams, $window, lodash, $timeout){
    $scope.init =  function init(){
        var location = "home";
        var maxHeight = Math.min($window.innerHeight-50, $window.innerWidth/(16/9));
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
            $http.get("http://events.hbc-ky.com/a").success(function(data){
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
                        if(!$scope.$$phase) {
                            $scope.$apply();
                        }
                    }
                }
            });
        });
        $scope.imagePath = "/"+location+"/ajaxImages";
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

hbcWebApp.controller('ContentPageController', ['$scope', '$http', '$stateParams','$window','lodash', '$timeout', function($scope, $http, $stateParams, $window, lodash, $timeout){
    $scope.init =  function init(){
        var location = '';
        var maxHeight = $window.innerWidth/(2.39);
        angular.element(".imageSlider").css('height',maxHeight+"px");
        angular.element(".imageSlider").css('background-color','#222');
        angular.element(".imageSlider").css('background-size','cover');
        location = !angular.isUndefinedOrNullOrEmpty($stateParams.page) ? $stateParams.page : location;
        if(location !== ''){
            $http.get("/"+location+"/ajaxContent").success(function(data){
                $scope.content = data;
                if($scope.content.length % 2 === 1){
                    angular.element(".connection").removeClass("odd");
                    angular.element(".connection").addClass("even");
                    angular.element(".footer .section-row").removeClass("even");
                    angular.element(".footer .section-row").addClass("odd");
                }
                $http.get("http://events.hbc-ky.com/a").success(function(data){
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
                            if(!$scope.$$phase) {
                                $scope.$apply();
                            }
                        }
                    }
                });
            });
            $scope.imagePath = "/"+location+"/ajaxImages";
        }
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

hbcWebApp.controller('FormPageController', ['$scope', '$http', '$stateParams', function($scope, $http, $stateParams){
    $scope.init =  function init(){
      
    };
}]);

hbcWebApp.controller('DocumentHolderController', ['$scope', '$http', '$stateParams','$window','lodash', function($scope, $http, $stateParams, $window, lodash){
     $scope.init =  function init(){
        var location = '';
        var maxHeight = $window.innerWidth/(2.39);
        angular.element(".imageSlider").css('height',maxHeight+"px");
        angular.element(".imageSlider").css('background-color','#222');
        angular.element(".imageSlider").css('background-size','cover');
        location = !angular.isUndefinedOrNullOrEmpty($stateParams.page) ? $stateParams.page : location;
        if(location !== ''){
            $http.get("/"+location+"/ajaxContent").success(function(data){
                $scope.jsonData = data;
                // var dropDowns = angular.element("<ul class='nav nav-pills'></ul>");
                // lodash.each($scope.jsonData, function(months, year){
                    
                //     var monthDD = "<li role='presentation' class='dropdown'><a href='#' role='button' aria-expanded='false' class='dropdown-toggle' data-toggle='dropdown'>"+year+"<i class='fa fa-fw fa-chevron-down'></i></a><ul class='dropdown-menu' role='menu'>";
                //     lodash.each(months, function(days, month){
                //         monthDD += "<li><span><i class='fa fa-fw fa-plus'></i>"+month+"</span></li>";
                //         monthDD += "<li class='divider'></li>";
                //         lodash.each(days, function(link, day){    
                //             monthDD += "<li><a href='#' ng-click='loadDoc(\""+link+"\")'><i class='fa fa-fw fa-minus'></i>"+day+"</a></li>";
                //         });
                //         monthDD += "<li class='divider'></li>";
                //     });
                //     monthDD += "</ul></li>";
                //     dropDowns.append(monthDD);
                // });
                // angular.element(".menu-holder").append(dropDowns);
                angular.element(".connection").removeClass("odd");
                angular.element(".connection").addClass("even");
                angular.element(".footer .section-row").removeClass("even");
                angular.element(".footer .section-row").addClass("odd");
            });
            $scope.imagePath = "/home/ajaxImages";
        }
    };
    
    $scope.url = undefined;
    
    $scope.haveUrl = function haveURL(){
      return !angular.isUndefinedOrNullOrEmpty($scope.url);
    };
    $scope.loadDoc = function loadDoc(link){
        $scope.url = link;  
    };
    
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

hbcWebApp.controller('GalleryPageController', ['$scope', '$http', '$stateParams', function($scope, $http, $stateParams){
    $scope.init =  function init(){
      
    };
}]);
