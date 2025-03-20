# MongoDB CRUD Operations Guide by CodeWithHarry

## Full Form of CRUD

```
C - Create
R - Read
U - Update
D - Delete
```

---

## CREATE Functionality

### Step 1: Show All Databases
```sh
show dbs;
```

### Step 2: Create a New Database and Use It
```sh
use employees;
```

### Step 3: Create a New Collection and Insert One Document
```sh
db.workers.insertOne({name:"ravi", age:28});
```

### Step 4: Create a New Collection and Insert Multiple Documents
```sh
db.workers.insertMany([
    { name: "kunkun", age: 28 },
    { name: "sumit", age: 24 },
    { name: "saurabh", age: 41 },
    { name: "ankur", age: 24 },
    { name: "vinod", age: 21 }
]);
```

---

## READ Functionality

### Step 1: Read All Documents in the Collection
```sh
db.workers.find();
```

### Step 2: Read One Document from the Collection
```sh
db.workers.findOne();
```

### Step 3: Read All Filtered Documents (age: 24)
```sh
db.workers.find({age: 24});
```

### Step 4: Read One Filtered Document (age: 24)
```sh
db.workers.findOne({age: 24});
```

### Step 5: Read All Documents with (age < 30)
```sh
db.workers.find({age: {$lt: 30}});
```

### Step 6: Read One Document with (age < 30)
```sh
db.workers.findOne({age: {$lt: 30}});
```

### Step 7: Read All Documents with (age > 30)
```sh
db.workers.find({age: {$gt: 30}});
```

### Step 8: Read One Document with (age > 30)
```sh
db.workers.findOne({age: {$gt: 30}});
```

### Step 9: Read All Documents with AND Condition (jobRole: 'tester', age < 30)
```sh
db.workers.find({jobRole:'tester', age: {$lt: 30}});
```

### Step 10: Read One Document with AND Condition (jobRole: 'tester', age < 30)
```sh
db.workers.findOne({jobRole:'tester', age: {$lt: 30}});
```

### Step 11: Read All Documents with OR Condition (name: 'vipul' OR age > 30)
```sh
db.workers.find({$or:[{name:'vipul'}, {age: {$gt: 30}}]});
```

### Step 12: Read One Document with OR Condition (name: 'sumit' OR age < 30)
```sh
db.workers.findOne({$or:[{name:'sumit'}, {age: {$lt: 30}}]});
```

---

## UPDATE Functionality

### Step 1: Update All Matching Documents
```sh
db.courses.updateMany({ duration: '6 month' }, { $set: { price: '40000' } });
```

### Step 2: Update One Document
```sh
db.courses.updateOne({ courseName: 'mongoDB' }, { $set: { price: '9000' } });
```

---

## DELETE Functionality

### Step 1: Delete All Matching Documents
```sh
db.courses.deleteMany({ duration: '1 month' });
```

### Step 2: Delete One Document
```sh
db.courses.deleteOne({ duration: '1 month' });
```
