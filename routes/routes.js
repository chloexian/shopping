const RoutesController = require(__basename + '/routesController/routesController.js');

module.exports = function (app) {

	app.get('/', RoutesController.homeController);

	app.post('/register', RoutesController.registerController);

	 app.post('/login', RoutesController.loginController);
	 app.get('/main/home', RoutesController.homeController);
	 app.get('/details/:id', RoutesController.detailsController);
     app.get('/comment/:id', RoutesController.commentController);
     app.get('/main/shopcart/:email', RoutesController.shopcartController);
}