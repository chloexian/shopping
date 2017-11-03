const crypto = require('crypto');

const nodemailer = require('nodemailer');

const SMSClient = require('@alicloud/sms-sdk');

let transporter = nodemailer.createTransport({
  host: 'smtp.126.com',
  port: 25,
  auth: {
    user: 'c876181420@126.com', //发件邮箱
    pass: 'x08057728' //授权码  
  }
});

const accessKeyId = 'LTAIJaqwTr5cLKdg';
const secretAccessKey = '6KOCMAHEV7id1FAXu0Na3QH8FIP4a5';

let smsClient = new SMSClient({accessKeyId, secretAccessKey})

/*
  {
    PhoneNumbers: '1500000000', //接收短信手机号
    SignName: '', //短信签名
    TemplateCode: 'SMS_109035006', //短信模板代码
    TemplateParam: '{"code":"12345"}'
  }
*/

class Utils {
	constructor () {}

	addCrypto (o, field) {
		let md5 = crypto.createHash('md5');
		md5.update(o[field]);
		o[field] = md5.digest('hex');
	}

	sendMail (mailOptions, fn) {
		transporter.sendMail(mailOptions, fn);
	}

    sendSMS (smsOptions,successFn,errFn) {
    return smsClient.sendSMS(smsOptions)
     .then(successFn,errFn);
  }
}

module.exports = new Utils();