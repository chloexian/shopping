let server = {
	host: '127.0.0.1',
	port: '8001'
}

exports.server = server;

exports.mysqlOptions = {
   host:server.host,
   user:'root',
   password:'',
   database:'shopping'
}