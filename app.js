global.__basename = __dirname;

global.config = require(__basename + '/config/config.js')

const express = require('express');

const app = express();

const ejs = require('ejs');

const favicon = require('serve-favicon');

const bodyParser = require('body-parser');

app.use(favicon(__basename + '/web/public/images/icons/img_79.ico'));

const routes = require(__basename + '/routes/routes.js');

let port = process.env.PORT || config.server.port;

// 静态资源路径
app.use(express.static(__basename + '/web/public'));
app.use(express.static(__basename + '/web/views'));
app.use(express.static(__basename + '/web'));

app.set('views', __basename + '/web/views');
app.set('view engine','html');
app.engine('.html',ejs.__express);

//json化post请求数据
app.use(bodyParser.json());

//加载路由

routes(app);

app.use((req,res) => {
	res.status(404);
	res.send('页面不存在');

});

app.use((err,req,res) => {
	res.status(500);
	res.send('服务器错误')
});

app.listen(config.server.port,() =>{
	console.log(`服务器运行于${config.server.host}：${port}`)
});


