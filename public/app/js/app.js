'use strict';

var friendLibApp = angular.module('friendLibApp', [
  'ngRoute',
  'friendLibControllers'
  ]);

// friendLibApp
//   .config(['$locationProvider', function($locationProvider) {
//     $locationProvider.html5Mode(true);
//   }]);

friendLibApp.config([
  '$routeProvider',
  function($routeProvider) {
    $routeProvider.
    when('/', {
      templateUrl: 'app/partials/home.html',
      // redirectTo: function(current, path, search) {
      //   if(search.goto) {
      //     return "/" + search.goto;
      //   }
      //   else {
      //     return "/";
      //   }
      // }
    }).
    when('/users', {
      templateUrl: 'app/partials/users.html',
      controller: 'UserListCtrl'
    }).
    when('/users/:id', {
      templateUrl: 'app/partials/user-detail.html',
      controller: 'UserDetailCtrl'
    }).
    when('/books', {
      templateUrl: 'app/partials/books.html',
      controller: 'BookListCtrl'
    }).
    when('/books/new', {
      templateUrl: 'app/partials/new_book.html'
    }).
    when('/books/:id', {
      templateUrl: 'app/partials/book-detail.html',
      controller: 'BookDetailCtrl'
    }).
    when('/authors', {
      templateUrl: 'app/partials/authors.html',
      controller: 'AuthorListCtrl'
    }).
    when('/authors/:id', {
      templateUrl: 'app/partials/author-detail.html',
      controller: 'AuthorDetailCtrl'
    }).
    when('/users/:user_id/books', {
      templateUrl: 'app/partials/books.html',
      controller: 'UsersBookCtrl'
    }).
    otherwise({redirectTo:"/"});
  }]);