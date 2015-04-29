(function(angular, factory) {
    'use strict';

    if (typeof define === 'function' && define.amd) {
        define(['angular'], function(angular) {
            return factory(angular);
        });
    } else {
        return factory(angular);
    }
}(window.angular || null, function(angular) {
    'use strict';
	
	var app = angular.module('ngChurchManagement', []);
	
	angular.isUndefinedOrNull = function undefinedOrNull(value){
        return angular.isUndefined(value) || value === null;
    };
    angular.isUndefinedOrNullOrEmpty = function undefinedOrNull(value){
        return angular.isUndefined(value) || value === null || value === "";
    };
    app.factory('ngChurchManagementService', function($http){
        var factory = {};
        factory.model = undefined;
        
        factory.get = function get(basePath){
            if(angular.isUndefinedOrNullOrEmpty(factory.model)){
                $http.get(basePath+"/a.json").then(function(data){
                    factory.model = data;
                });
            }
        };
        
        return factory;
        
    });

	app.controller('ngChurchSermonController', ['$scope', 'ngChurchManagementService',
		function($scope, ngChurchManagementService){
			$scope.sermon = undefined;
			var curSermon = 0;
			var totalSermons = 0;
			$scope.nextDisable = false;
			$scope.prevDisable = true;
			
			$scope.init = function init(){
                ngChurchManagementService.get($scope.basePath);
                while(angular.isUndefinedOrNullOrEmpty(ngChurchManagementService.model)){
                    console.log("waiting on data");
                }
                $scope.sermon = ngChurchManagementService.model.sermons[curSermon];
                totalSermons = ngChurchManagementService.model.sermons.length;
                
			};
			
			$scope.init();
			
			
			$scope.next = function next(){
                if(curSermon+1 < totalSermons){
                    curSermon += 1;    
                    $scope.sermon = ngChurchManagementService.model.sermons[curSermon];
                }
                $scope.prevDisable = curSermon > 0;
                $scope.nextDisable = (curSermon+1) < totalSermons;
			};
			
			$scope.prev = function prev(){
                if(curSermon > 0){
                    curSermon -= 1;    
                    $scope.sermon = ngChurchManagementService.model.sermons[curSermon];
                }
                $scope.prevDisable = curSermon > 0;
                $scope.nextDisable = (curSermon+1) < totalSermons;
			};
			
			
		}
	]);
	
	app.controller('ngChurchEventController', ['$scope', 'ngChurchManagementService',
		function($scope, ngChurchManagementService){
			$scope.events = undefined;
			var curPage = 0;
			var totalPages = 1;
			$scope.nextDisable = false;
			$scope.prevDisable = true;
			
			$scope.init = function init(){
                ngChurchManagementService.get($scope.basePath);
                while(angular.isUndefinedOrNullOrEmpty(ngChurchManagementService.model)){
                    console.log("waiting on data");
                }
                $scope.events = {0:ngChurchManagementService.model.events[curPage],1:ngChurchManagementService.model.events[curPage+1]};
                totalPages = parseInt(""+ngChurchManagementService.model.events.length/2) + ngChurchManagementService.model.events.length%2;
			};
			
			$scope.next = function next(){
                if(curPage+2 < totalPages){
                    curPage += 2;    
                    $scope.events = {0:ngChurchManagementService.model.events[curPage],1:ngChurchManagementService.model.events[curPage+1]}; 
                }
                $scope.prevDisable = curPage > 0;
                $scope.nextDisable = (curPage+2) < totalPages;
			};
			
			$scope.prev = function prev(){
                if(curPage > 1){
                    curPage -= 2;    
                    $scope.events = {0:ngChurchManagementService.model.events[curPage],1:ngChurchManagementService.model.events[curPage+1]}; 
                }
                $scope.prevDisable = curPage > 0;
                $scope.nextDisable = (curPage+2) < totalPages;
			};
			
			$scope.init();
			
			
		}
	]);
	
	
	app.directive('ngChurchEvent', ['$q', '$parse',
		function($q, $parse) {
			return {
				restrict: 'AEC',
				scope: {
					basePath: '@'
				},
				controller: 'ngChurchEventController',
				templateUrl: 'cmEvent.html'
			};
		}
	]);
	app.directive('ngChurchSermon', ['$q', '$parse',
		function($q, $parse) {
			return {
				restrict: 'AEC',
				scope: {
					basePath: '@'
				},
				controller: 'ngChurchSermonController',
				templateUrl: 'cmSermon.html'
            };
        }
	]);
	app.run(['$templateCache', function ($templateCache) {
        $templateCache.put('cmEvent.html', 
            '<div class="col-xs-10 col-xs-offset-1 col-md-offset-0 col-md-6" ng-repeat="event in events">'+
            '  <a ng-href="{{event.url}}">                                                               '+
            '    <div class="well" style="padding: 0px;">                                                '+
            '        <div class="start text-center">                                                     '+
            '            <p class="num">{{getDay(event.start)}}</p>                                      '+
            '            <p class="month">{{getMonth(event.start)}}</p>                                  '+
            '        </div>                                                                              '+
            '        <div>                                                                               '+
            '           <img ng-src="basePath+event.image" style="width:100%;">                          '+
            '        </div>                                                                              '+
            '        <div class="row">                                                                   '+
            '            <div class="col-xs-12">                                                         '+
            '                <div class="col-xs-12">                                                     '+
            '                    <h4 class="col-xs-12">{{event.title}}</h4>                              '+
            '                    <p class="small">Start: {{getFormattedDate(event.start)}}</p>           '+
            '                    <p class="small">End: {{getFormattedDate(event.end)}}</p>               '+
            '                    <p class="col-xs-12">{{event.description}}</p>                          '+
            '                </div>                                                                      '+
            '            </div>                                                                          '+
            '        </div>                                                                              '+
            '    </div>                                                                                  '+
            '	</a>                                                                                     '+
            '</div>                                                                                      '+
            '<div class="row">                                                                           '+
            '    <div class="col-xs-12">                                                                 '+
            '        <button class="btn bnt-defualt text-center" ng-disabled="prevDisable" ng-click="prev()"><i class="fa fa-fw fa-2x fa-chevron-left"></i></button>'+
            '        <button class="btn bnt-defualt text-center" ng-disabled="nextDisable" ng-click="next()"><i class="fa fa-fw fa-2x fa-chevron-right"></i></button>'+
            '    </div>                                                                                  '+
            '</div>                                                                                      '
            );
		$templateCache.put('cmSermon.html', 
            '<div class="col-xs-12 col-md-8 col-md-offset-2">                                            '+
            '    <div class="well" style="padding: 0px;">                                                '+
            '        <img ng-src="basePath+event.image" style="width:100%;">                             '+
            '        <div class="row">                                                                   '+
            '            <div class="col-xs-12">                                                         '+
            '                <div class="col-xs-12">                                                     '+
            '                    <h4 class="col-xs-12">{{sermon.title}}</h4>                             '+
            '                    <p class="small">Start: {{getFormattedDate(sermon.start)}}</p>          '+
            '                    <p class="small">End: {{getFormattedDate(sermon.end)}}</p>              '+
            '                    <p class="col-xs-12">{{sermon.description}}</p>                         '+
            '                </div>                                                                      '+
            '            </div>                                                                          '+
            '        </div>                                                                              '+
            '    </div>                                                                                  '+
            '</div>                                                                                      '+
            '<div class="row">                                                                           '+
            '    <div class="col-xs-12">                                                                 '+
            '        <button class="btn bnt-defualt text-center" ng-disabled="prevDisable" ng-click="prev()"><i class="fa fa-fw fa-2x fa-chevron-left"></i></button>'+
            '        <button class="btn bnt-defualt text-center" ng-disabled="nextDisable" ng-click="next()"><i class="fa fa-fw fa-2x fa-chevron-right"></i></button>'+
            '    </div>                                                                                  '+
            '</div>                                                                                      '
            );
        }
    ]);
}));