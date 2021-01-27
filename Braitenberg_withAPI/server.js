console.log("server is up!")

const express = require('express');
const Datastore = require('nedb');

var app = express();

var server = app.listen (3000, listening);

function listening() {
  console,console.log('listening . . .');
}

app.use (express.static('website'));
app.use (express.json({limit: '1mb'  }));

//var fs = require('fs')
//var logger = fs.createWriteStream('log.txt', {
//flags: 'a' // 'a' means appending (old data will be preserved)
//})
//logger.write (console.log);
//app.get ('/flower', sendFlower);

//function sendFlower (request, response) {
//  response.send("i love flowers")
//}

const database = new Datastore('output.db');
database.loadDatabase();
//ndjson-to-csv [database] > ['output.csv']

app.post('/api01', (request, response) => {
  //console.log("data logging happening!");
  console.log(request.body);
  const data = request.body;
  database.insert(data);
  //console.log(database);
  response.end();
});

