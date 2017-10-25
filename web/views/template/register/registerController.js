angular.module('app')
  .controller('registerController', ['$scope', 'utils', 'API', function ($scope, utils, API) {
    $scope.data = {
      email: '',
      phone: '',
      nickname: '',
      pwd: '',
      cpwd: ''
    };

    $scope.register = function () {
      if (!validRegister()) {
       return;
      }
      utils.tips.showLoadTips();
      API.fetchPost('/register', $scope.data)
        .then(function (data) {
          console.log('data ==> ', data);
          utils.tips.hideLoadTips();
          utils.tips.showTips(data.data.msg);
        })
        .catch(function (err) {
          utils.tips.hideLoadTips();
          utils.tips.showTips(data.data.msg);
        })

    }

    function validRegister() {
      if (!utils.validForm.isNotEmpty($scope.data.email)) {
        utils.tips.showTips('邮箱不能为空');
        return false;
      } else if (!utils.validForm.isEmail($scope.data.email)) {
        utils.tips.showTips('邮箱格式不正确');
        return false;
      }

      if (utils.validForm.isNotEmpty($scope.data.phone)) {
        if (!utils.validForm.isPhone($scope.data.phone)) {
          utils.tips.showTips('手机号码格式不正确');
          return false;
        }
      }

      if (!utils.validForm.isNotEmpty($scope.data.nickname)) {
        var time = new Date().getTime().toString();
        $scope.data.nickname = time.slice(time.length - 8);
      } else {
        if (!utils.validForm.isLength($scope.data.nickname, 3, 8)) {
          utils.tips.showTips('匿名字符个数3-8位');
          return false;
        } if (utils.validForm.isNotOnlyW($scope.data.nickname)) {
          utils.tips.showTips('匿名只能是下划线字母数字组合');
          return false;
        }
      }

      if (!utils.validForm.isNotEmpty($scope.data.pwd)) {
        utils.tips.showTips('密码不能为空');
        return false;
      } else if (!utils.validForm.isLength($scope.data.pwd, 8, 16)) {
        utils.tips.showTips('密码字符个数8-16位');
        return false;
      } else if (utils.validForm.isNotOnlyW($scope.data.pwd)) {
        utils.tips.showTips('密码只能是下划线字母数字组合');
        return false;
      }

      if (!utils.validForm.isEqual($scope.data.pwd, $scope.data.cpwd)) {
        utils.tips.showTips('两次密码不一致');
        return false;
      }

      return true;
    }

  }])