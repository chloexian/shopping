angular.module('app')
	.controller('shopcartController', ['$scope', '$stateParams','API','utils',function ($scope,$stateParams,API,utils) {
		console.log('stateParams',$stateParams);
		 utils.tips.showLoadTips();
        API.fetchGet('/main/shopcart/158@qq.com' + {email:'158@qq.com'})
          .then(function(data){
          	console.log(data);
             $scope.data=data.data;
             utils.tips.hideLoadTips();
          })
          .catch(function(err){
                console.log(err);
                utils.tips.hideLoadTips();
          })
        
}])