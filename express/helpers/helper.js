var nodemailer = require('nodemailer');
module.exports.datenow = () => {
    let ts = Date.now();
    let date_ob = new Date(ts);
    let date = date_ob.getDate();
    let month = date_ob.getMonth() + 1;
    let year = date_ob.getFullYear();
    return `${date}/${month}/${year}`;
}
module.exports.sendmail = (emailtosend,title,content) => {
    var transporter = nodemailer.createTransport({
        service: 'gmail',
        host: "smtp.gmail.com",
        port: "465",
        ssl: true,
        auth: {
            user: 'lelongho998@gmail.com',
            pass: '0909565151It'
        }
    });

    var mailOptions = {
        from: 'lelongho998@gmail.com',
        to: emailtosend,
        subject: title,
        text: content
    };
    transporter.sendMail(mailOptions, function (error, info) {
        if (error) {
            console.log(error);
        } else {
            console.log('Email sent: ' + info.response);
        }
    })
    
}