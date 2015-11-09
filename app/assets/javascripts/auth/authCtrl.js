angular.module('estrApp')
.controller('AuthCtrl', [
'$scope',
'$state',
'Auth',
'$http',
'$rootScope',
function($scope, $state, Auth, $http, $rootScope){
  $scope.login = function() {
   Auth.login($scope.user).then(function(){
     $state.go('home');
   });
  };

  $scope.register = function() {
   Auth.register($scope.user).then(function(){
     $state.go('home');
   });
  };
  $scope.registerTest = function() {
    return $http.post('/api/v1/users', $scope.user)
    .success(function(data){
      console.log('success', data);
    });
  };
}]);