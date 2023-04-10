const fs = require('fs');

let data = generateText(4);

fs.writeFile("rom_data.v", data, (err) => {
    if (err)
        console.log(err);
    else {
        console.log(fs.readFileSync("rom_data.v", "utf8"));
  }
});

function generateText(size) {
    var result = '';
    for(var i = 0; i < size*size - 0; i++)
        for(var j = 0; j < size*size - 0; j++)
            result += multiplicativeRow(i, j, size);

    return result;
}

function multiplicativeRow(i, j, size) {
    let firstFactor = formatNumber(convertToBinary(i), size);
    let secondFactor = formatNumber(convertToBinary(j), size);
    let product = i*j;
    product = convertToBinary(product);
    product = formatNumber(product, 2*size);
    return '			8\'b' + firstFactor + secondFactor + ' : data = 8\'b' + product + ';\n';
}

function convertToBinary(number) {
    var rest = parseInt(number);
    var digits = [];
    var result = '';

    while(rest != 0){
        digits.push(rest%2);
        rest = parseInt(rest/2);
    }

    for(var i = digits.length - 1; i >= 0; i--){
        result += digits[i];
    }
    return result;
}

function formatNumber(number, digitsQuantity) {
    var result = '';

    for(var i = 0; i < digitsQuantity - number.length; i++){
        result += '0';
    }
    result += number;

    return result;
}

console.log(generateText());