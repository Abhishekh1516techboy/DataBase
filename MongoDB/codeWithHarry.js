// Show All Databases
show dbs;

// --------- CREATE Functionality ---------

// Create a New Database and Use It
use employee;

// show collections
show collections;

// Create a New Collection and Insert One Document
db.workers.insertOne(
    { name: "ravi", age: 28 }
);

// Create a New Collection and Insert Multiple Documents
db.workers.insertMany([
    { name: "kunkun", age: 28 },
    { name: "sumit", age: 39 },
    { name: "saurabh", age: 41 },
    { name: "ankur", age: 37 },
    { name: "vinod", age: 21 }
]);

// --------- READ Functionality ---------

// Read All Documents from the Collection
db.workers.find();

// Read Only One Document from the Collection
db.workers.findOne();

// Read All Documents Matching a Filter
db.workers.find({ age: 24 });

// Read Only One Document Matching a Filter
db.workers.findOne({ age: 24 });

// Read All Documents Where Age is Less Than 30
db.workers.find({ age: { $lt: 30 } });

// Read Only One Document Where Age is Less Than 30
db.workers.findOne({ age: { $lt: 30 } });

// Read All Documents Where Age is Greater Than 30
db.workers.find({ age: { $gt: 30 } });

// Read Only One Document Where Age is Greater Than 30
db.workers.findOne({ age: { $gt: 30 } });

// --------- UPDATE Functionality ---------

// Update Only One Document in the Collection
db.courses.updateOne({ courseName: 'mongoDB' }, { $set: { price: '9000' } });

// Update All Documents Matching a Filter in the Collection
db.courses.updateMany({ duration: '6 month' }, { $set: { price: '40000' } });

// --------- DELETE Functionality ---------

// Delete Only One Document from the Collection
db.courses.deleteOne({ duration: '1 month' });

// Delete All Documents Matching a Filter from the Collection
db.courses.deleteMany({ duration: '1 month' });
