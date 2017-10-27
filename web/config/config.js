(function () {
var app = angular.module('app');

//配置懒加载信息
app.config(["$provide", "$compileProvider", "$controllerProvider", "$filterProvider", function ($provide, $compileProvider, $controllerProvider, $filterProvider) {
 app.controller = $controllerProvider.register;
 app.directive = $compileProvider.directive;
 app.filter = $filterProvider.register;
 app.factory = $provide.factory;
 app.service = $provide.service;
 app.constant = $provide.constant;
}])
	.config(['$ionicConfigProvider', function ($ionicConfigProvider) {
		$ionicConfigProvider.tabs.position('bottom');
	}])
	.config(["$ocLazyLoadProvider", function ($ocLazyLoadProvider) {
		$ocLazyLoadProvider.config({
	 		debug: false,
	 		events: false,
	 		modules: [
		 		{
		 			name: 'register',
		 			files: [
		 				'/template/register/registerController.js',
		 				'/template/register/register.css'
		 			]
		 		},
		 		{
		 			name: 'login',
		 			files: [
		 				'/template/login/loginController.js',
		 				'/template/login/login.css'
		 			]
		 		},
		 		{
		 			name: 'main.home',
		 			files: [
		 				'/template/home/homeController.js',
		 				'/template/home/home.css'
		 			]
		 		},
		 		{
		 			name: 'details',
		 			files: [
		 				'/template/details/detailsController.js',
		 				'/template/details/details.css'
		 			]
		 		},
		 		{
		 			name: 'comment',
		 			files: [
		 				'/template/comment/commentController.js',
		 				'/template/comment/comment.css'
		 			]
		 		},
		 		{
		 			name: 'main.shopcart',
		 			files: [
		 				'/template/shopcart/shopcartController.js',
		 				'/template/shopcart/shopcart.css'
		 			]
		 		},
	 		]
 		});
	}]);
	
})();