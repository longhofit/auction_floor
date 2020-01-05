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

/// markString
/// EXP: ("123456", 4, 10, 10, "*", true) => ******3456
/// <source>: chuỗi gốc
/// <showLength> số kí tự không bị ẩn
/// <minLength> độ dài tối thiểu của chuỗi kết quả
/// <maxLength> độ dài tối đa của chuỗi kết quả
/// <charMark> Kí tự thay thế
/// <isLeftToRight> hướng thay thế
module.exports.markString = (source, showLength, minLength, maxLength, charMark, isLeftToRight) => {
    var Mark = charMark;
    Mark = Mark.substring(0,1);
    if(source==null)
        return null;
    let sourceLength = source.length; 
    var resultLength = sourceLength;
    var result = '';

    //Swap
    if(minLength > maxLength){
        minLength = maxLength + minLength;
        maxLength = minLength - maxLength;
        minLength = minLength - maxLength;
    }

    if(resultLength > maxLength ){
        resultLength = maxLength;
    }
    if(resultLength < minLength){
        resultLength = minLength;
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

