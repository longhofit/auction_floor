var nodemailer = require('nodemailer');
const productModel = require('../models/product.model');
const categoryModel = require('../models/category.model');

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

module.exports.markString = (source, showLength, minLenth, maxLength, charMark, isLeftToRight) => {
    var Mark = charMark;
    Mark = Mark.substring(0,1);
    if(source==null)
        return null;
    let sourceLength = source.length; 
    var resultLength = sourceLength;
    var result = '';

    //Swap
    if(minLenth > maxLength){
        minLenth = maxLength + minLenth;
        maxLength = minLenth - maxLength;
        minLenth = minLenth - maxLength;
    }

    if(resultLength > maxLength ){
        resultLength = maxLength;
    }
    if(resultLength < minLenth){
        resultLength = minLenth;
    }
    if(resultLength <= showLength){
        return source.substring(sourceLength - showLength, sourceLength);
    }

    for(i = 0; i < resultLength - showLength; i++){
        result += Mark;
    }

    if(isLeftToRight){
        result += source.substring(sourceLength - showLength, sourceLength);
    }
    else{
        result = source.substring(0, showLength) + result;
    }

    return result;
}
