const crypto = require('crypto');

function DesiredHash(transection){

    let num =0 ;
    // Converting the Transection to the String
    let transString = ""

    for (let i=0;i<transection.length;i++){
        transString += transection[i][0]+"To"+transection[i][1]+"OF"+transection[i][2];
        if (i+1 != transection.length){
            transString+="And"
        }
    }

    hash = crypto.createHash('sha256').update(num+transString).digest('hex');

    let condition = hash.startsWith("00000")
    while(!condition){
        num+=1;
        hash = crypto.createHash('sha256').update(num+"").digest('hex');
        condition = hash.startsWith("00000")
    }
    console.log(hash)
}
let transections = [["John", "Doe", 500], ["Doe", "Smith", 200]]
DesiredHash(transections)