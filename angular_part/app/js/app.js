'use strict';

var friendLibApp = angular.module('friendLibApp', [
  'ngRoute',
  'friendLibControllers'
  ]);

friendLibApp.config([
  '$routeProvider',
  function($routeProvider) {
    $routeProvider.
    when('/users', {
      templateUrl: 'partials/users.html',
      controller: 'UserListCtrl'
    });
  }]);