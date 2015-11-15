angular.module('estrApp')
.controller('MainCtrl', [
  '$scope', '$http', '$cookies',
  function($scope, $http, $cookies){
    $scope.test = 'testy';
      $http({
    method: 'GET',
    url: 'api/v1/users/' + 1 + '/appointments',
 headers:{
   Authorization: 'Token token="' + $cookies.get('api_key') + '"',
 }
  }).then(function successCallback(response) {
      console.log('success', response);
    }, function errorCallback(response) {
      console.log('failure', response);
    });


  }])
