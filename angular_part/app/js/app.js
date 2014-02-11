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
    }).
    when('/users/:id', {
      templateUrl: 'partials/users-detail.html',
      controller: 'UserDetailCtrl'
    }).
    when('/books', {
      templateUrl: 'partials/books.html',
      controller: 'BookListCtrl'
    }).
    when('/books/:id', {
      templateUrl: 'partials/books-detail.html',
      controller: 'BookDetailCtrl'
    }).
    when('/authors', {
      templateUrl: 'partials/authors.html',
      controller: 'AuthorListCtrl'
    }).
    when('/authors/:id', {
      templateUrl: 'partials/authors-detail.html',
      controller: 'AuthorDetailCtrl'
    });
  }]);