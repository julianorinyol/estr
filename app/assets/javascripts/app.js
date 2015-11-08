// angular.module('estrApp', ['ui.router', 'templates', 'Devise'])
angular.module('estrApp', ['ui.router', 'templates'])
.config([
'$stateProvider',
'$urlRouterProvider',
function($stateProvider, $urlRouterProvider) {
  $stateProvider
    .state('home', {
      url: '/home',
      templateUrl: 'home/_home.html',
      controller: 'MainCtrl'
    });
  $urlRouterProvider.otherwise('home');
}])