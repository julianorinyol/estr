// angular.module('estrApp', ['Devise']).
    // config(function(AuthProvider) {
    //     AuthProvider.registerPath('/api/v1/users');
    //     AuthProvider.registerMethod('POST');
    //     AuthProvider.resourceName('user');
    // });

angular.module('estrApp', ['ui.router', 'templates', 'Devise'])
.config([
  '$stateProvider',
  '$urlRouterProvider',
  function($stateProvider, $urlRouterProvider) {
    $stateProvider
    .state('home', {
      url: '/home',
      templateUrl: 'home/_home.html',
      controller: 'MainCtrl'
    })
    .state('login', {
      url: '/login',
      templateUrl: 'auth/_login.html',
      controller: 'AuthCtrl',
      onEnter: ['$state', 'Auth', function($state, Auth) {
        Auth.currentUser().then(function (){
          $state.go('home');
        })
      }]
    })
    .state('register', {
      url: '/register',
      templateUrl: 'auth/_register.html',
      controller: 'AuthCtrl',
      onEnter: ['$state', 'Auth', function($state, Auth) {
        Auth.currentUser().then(function (){
          $state.go('home');
        })
      }]
    })
    .state('register-manager', {
      url: '/register-manager',
      templateUrl: 'auth/_register-manager.html',
      controller: 'AuthCtrl',
      onEnter: ['$state', 'Auth', function($state, Auth) {
        Auth.currentUser().then(function (){
          $state.go('home');
        })
      }]
    })
    .state('register-test', {
      url: '/register-test',
      templateUrl: 'auth/_register-manager.html',
      controller: 'AuthCtrl',
      onEnter: ['$state', 'Auth', function($state, Auth) {
        
      }]
    });

    $urlRouterProvider.otherwise('home');
  }])