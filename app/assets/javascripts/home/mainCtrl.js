angular.module('estrApp')
.controller('MainCtrl', [
  '$scope', '$http',
  function($scope, $http){
    $scope.test = 'testy';

      $http({
    method: 'GET',
    url: 'api/v1/users/' + 2 + '/appointments',
 headers:
   'Authorization: Token token="bb370674b525acee4175fd79c9ceb92f"',
  }).then(function successCallback(response) {
      debugger;
      console.log('success', response);
    }, function errorCallback(response) {
      console.log('failure', response);
    });


  }])
