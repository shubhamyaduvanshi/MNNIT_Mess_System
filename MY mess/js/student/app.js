'use strict';

/* App Module */

var messapp = angular.module('messapp', [
    'ngRoute',
    'ngMaterial',
    'AppControllers',
    'AppServices',
    'AppDirectives',
]);

messapp.config(['$routeProvider','$locationProvider',
    function($routeProvider, $locationProvider) {
        $routeProvider.
                when('/', {
                    templateUrl: 'partials/student_main.html',
                    controller: 'MainCtrl'
                }).when('/currentmonth',{
                    templateUrl: 'partials/student_currentmonth.html',
                    controller: 'CurrentMonthCtrl'
                }).when('/prevmonths',{
                    templateUrl: 'partials/student_prevmonths.html',
                    controller: 'PrevMonthsCtrl'
                }).when('/forum',{
                    templateUrl: 'partials/student_forum.html',
                    controller: 'ForumCtrl'
                }).when('/ratemess',{
                    templateUrl: 'partials/student_ratemess.html',
                    controller: 'RateMessCtrl'
                }).when('/changepassword',{
                    templateUrl: 'partials/student_changepassword.html',
                    controller: 'ChangePasswordCtrl'
                });
        $locationProvider.html5Mode(false).hashPrefix('!');// it is first mode.

        // as in angular js have 3 modes for routing operation.
        //Hashbang Mode
        //HTML5 Mode
        //Hashbang in HTML5 Mode
    }]);
