const crypto = require('crypto');

function DesiredHash(desiredString){

    let num = 0 ;
    // Add sting at the satrt of number

    hash = crypto.createHash('sha256').update(num+"").digest('hex');

    let condition = hash.startsWith("00000")
    while(!condition){
        // hashing with new number to find hash with 00000
        num+=1;
        hash = crypto.createHash('sha256').update(desiredString+num).digest('hex');
        condition = hash.startsWith("00000")
    }
    console.log(hash)
}
DesiredHash("AaditGupta")