const fs = require('fs');

console.log('My file is testfile');
fs.writeFile('testfile.txt', 'Name: Srijan Vaddadi \nFavorite Movie: Fight Club \nWorst day: Monday', function (err, fd) {
    if (err) {
        return console.error(err);
    }
    console.log(`Decent`);
});

fs.readFile('testfile.txt', 'utf8', function (err, data) {
    console.log(data)
})

fs.appendFile('testfile.txt', '\nFavourite car: koenigsegg', function (err) {
    if (err) {
        return console.error(err);
    }
    console.log(`Decent2`);


    fs.readFile('testfile.txt', 'utf8', function (err, data) {
        console.log(data)
    })
});
