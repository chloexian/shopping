angular.module('app')
   .factory('utils',['$ionicPopup', function($ionicPopup){
      var u = {

      //提示信息模块
      tips: {
        showTips: function (msg, scope) {
          var tips = $ionicPopup.show({
            template: '<div style="text-align: center;">' + msg + '</div>',
            title: '提示消息',
            scope: scope,
            buttons: [
              {
                text: '确认',
                type: 'button-assertive',
                onTap: function () {
                  tips.close();
                }
              }
            ]
          });
        }
      },

      //验证表单模块
      //策略者模式
      validForm: {
        //验证不为空
        isNotEmpty: function (msg) {
          return msg == '' || msg == undefined ? false : true;
        },

        //验证邮箱格式
        isEmail: function (email) {
          var reg = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
          return reg.test(email)
        },

        isPhone: function (phone) {
          var reg = /^1[358]\d{9}$/;
          return reg.test(phone);
        },
        isLength:function(msg,min,max){
           return msg.length >=min && msg.length <=max ? true : false;
        },
        isNotOnlyW:function(msg){
          return /\W/.test(msg);
        },

        isEqual:function(a,b){
          return a===b ? true : false;
        }



      }

    };

    return u;
   }])