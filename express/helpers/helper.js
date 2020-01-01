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


//default
let DEFAULT_MARKSTRING_LENGTH = 4;
let DEFAULT_MARKSTRING_MINLENGTH = 10;
let DEFAULT_MARKSTRING_MAXLENGTH = 10;
let DEFAULT_MARKSTRING_CHAR = "*";
let DEFAULT_MARKSTRING_ISLEFTTORIGHT = true;

module.exports.markString = (source) => {
    return markString(source, DEFAULT_MARKSTRING_LENGTH, DEFAULT_MARKSTRING_MINLENGTH, DEFAULT_MARKSTRING_MAXLENGTH, DEFAULT_MARKSTRING_CHAR, DEFAULT_MARKSTRING_ISLEFTTORIGHT);
}

module.exports.markString = (source, length) => {
    return markString(source, length, DEFAULT_MARKSTRING_MINLENGTH, DEFAULT_MARKSTRING_MAXLENGTH, DEFAULT_MARKSTRING_CHAR, DEFAULT_MARKSTRING_ISLEFTTORIGHT);
}

module.exports.markString = (source, showLength, minLenth, maxLength, charMark, isLeftToRight) => {
    var Mark = charMark.substring(0,1);
    let sourceLength = source.length; 
    var resultLength = sourceLength;
    var result = "";

    //Swap
    if(minLenth > maxlength){
        minLenth = maxlength + minLenth;
        maxlength = minLenth - maxlength;
        minLenth = minLenth - maxlength;
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

