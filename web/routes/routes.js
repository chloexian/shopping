angular.module('app')
  .config(['$stateProvider', '$urlRouterProvider', '$locationProvider', function ($stateProvider, $urlRouterProvider, $locationProvider) {

    $urlRouterProvider.otherwise('/main/home');

    $stateProvider
      .state('main', {
        url: '',
        abstruct: true,
        templateUrl: '/template/main/main.html'
      })
      .state('main.home', {
        url: '/main/home',
        templateUrl: '/template/home/home.html',
        controller: 'homeController',
        resolve: {
          des: ['$ocLazyLoad', function ($ocLazyLoad) {
            return $ocLazyLoad.load('main.home');
          }]
        }
      })
      .state('main.find', {
        url: '/main/find',
        templateUrl: '/template/find/find.html'
      })
      .state('register', {
        url: '/register',
        templateUrl: '/template/register/register.html',
        cache: false,
        controller: 'registerController',
        resolve: {
          des: ['$ocLazyLoad', function ($ocLazyLoad) {
            return $ocLazyLoad.load('register');
          }]
        }
      })
      .state('login', {
        url: '/login',
        templateUrl: '/template/login/login.html',
        cache: false,
        controller: 'loginController',
        resolve: {
          des: ['$ocLazyLoad', function ($ocLazyLoad) {
            return $ocLazyLoad.load('login');
          }]
        }
      })
       .state('details', {
        url: '/details',
        templateUrl: '/template/details/details.html',
        controller: 'detailsController',
        resolve: {
          des: ['$ocLazyLoad', function ($ocLazyLoad) {
            return $ocLazyLoad.load('details');
          }]
        }
      })



      $locationProvider.html5Mode(true);


  }])