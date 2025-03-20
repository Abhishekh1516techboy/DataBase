// Select the database to use.
use('CwhSigmaWebDevDB');
// use('employees');

// Insert a few documents into the sales collection.
db.getCollection('courses').insertMany([
  { 'courseName': 'kotlin', 'price': 45000, 'duration': '6 month' },
  { 'courseName': 'ruby', 'price': 25000, 'duration': '6 month' },
  { 'courseName': 'python', 'price': 15000, 'duration': '4 month' },
  { 'courseName': 'javascript', 'price': 18000, 'duration': '3 month' },
  { 'courseName': 'react.js', 'price': 14500, 'duration': '2 month' },
  { 'courseName': 'next.js', 'price': 12500, 'duration': '1 month' },
  { 'courseName': 'mySql', 'price': 6500, 'duration': '1 month' },
  { 'courseName': 'mongoDB', 'price': 8500, 'duration': '1 month' },
]);

// print the message to the output window...
console.log("Done insertion complite successfully...");
db.getCollection('courses').find();

db.getCollection('workers').find();
db.courses.find();
db.courses.find({courseName:'mongoDB'});
db.courses.find({ $or: [{ courseName: 'c++' }, { price: { $lt: 23000 } }] });
db.workers.find();

// update...
db.courses.updateOne({ courseName: 'mongoDB' }, { $set: { price: '9000' } });
db.courses.updateMany({ duration: '6 month' }, { $set: { price: '40000' } });

// Delete...

db.courses.deleteOne({duration:'1 month'});

db.courses.deleteMany({duration:'1 month'});