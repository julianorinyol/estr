angular.module('estrApp')
.controller('AuthCtrl', [
'$scope',
'$state',
'Auth',
'$http',
'$cookies',
'$rootScope',
function($scope, $state, Auth, $http, $cookies, $rootScope){
  // $scope.login = function() {
  //  Auth.login($scope.user).then(function(){
  //    $state.go('home');
  //  });
  // };
   $scope.login = function() {
    // return $http.post
  };


  // $scope.register = function() {
  //  Auth.register($scope.user).then(function(){
  //    $state.go('home');
  //  });
  // };
  $scope.registerTest = function() {
    return $http.post('/api/v1/users', $scope.user)
    .success(function(data){
      console.log('success', data);
      $cookies.put('api_key', data.user.api_key);
    });
  };
}]);