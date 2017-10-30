let server = {
	host: '127.0.0.1',
	port: '9229'
};

exports.server = server;

exports.mysqlOptions = {
	host: server.host,
	user: 'root',
	database: 'shopping'
}

