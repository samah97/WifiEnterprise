var exec = require('cordova/exec');

module.exports.connect = function(arg0, success,error){
    exec(success,error,'WifiEnterprise','connect',[arg0]);
}