var friendsLibServices = angular.module('friendsLibServices', ['ngResource']);

friendLibServices.factory('FriendLib', ['$resource',
  function($resource){
    return $resource('http://localhost:3000/api/books.json', {}, {
      query: {method: 'GET', params: {}, isArray:true}
    });
  }]);