angular.module('app')
	.controller('homeController', ['$rootScope','$scope', '$state', 'API', 'utils', function ($rootScope,$scope, $state, API, utils) {
              console.log($rootScope.user);
		utils.tips.showLoadTips();
		API.fetchGet('/main/home')
			.then(function (data) {
				$scope.data = data.data;
				utils.tips.hideLoadTips();
			})
			.catch(function (err) {
				console.log(err);
				utils.tips.hideLoadTips();
			})


		$scope.getFocus = function (stateName) {
			$state.go(stateName)
		}

	}])