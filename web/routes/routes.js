angular.module('app')
  .config(['$stateProvider','$urlRouterProvider','$locationProvider',function($stateProvider,$urlRouterProvider,$locationProvider){
       $urlRouterProvider.otherwise('/login');
       $stateProvider
         .state('main',{
         	url:'',
         	abstruct:true,
         	templateUrl:'/template/main/main.html'
         })
         .state('main.home',{
         	url:'/home',
         	templateUrl:'/template/home/home.html'
         })
         .state('main.find',{
         	url:'/find',
         	templateUrl:'/template/find/find.html'
         })
         .state('register',{
          url:'/register',
          templateUrl:'/template/register/register.html',
          cache:false,
          controller:'registerController',
          resolve: {
          des: ['$ocLazyLoad', function ($ocLazyLoad) {
            return $ocLazyLoad.load('register');
            }]

          }

         })
         .state('login',{
          url:'/login',
          templateUrl:'/template/login/login.html',
          cache:false,
          controller:'loginController',
          resolve: {
          des: ['$ocLazyLoad', function ($ocLazyLoad) {
            return $ocLazyLoad.load('login');
            }]

          }

         })

         $locationProvider.html5Mode(true);
  }])