# Lab 19: SQL Practice - Student Database

## What We Built

Created a Student database with CRUD operations practice.

## Commands Used

### Create Database
```sql
CREATE DATABASE student_db;
\c student_db
```

### Create Table
```sql
CREATE TABLE Student (
    ID INTEGER,
    Name VARCHAR(50),
    Adress VARCHAR(100)
);
```

### ALTER TABLE (Add Columns)
```sql
ALTER TABLE Student ADD COLUMN RollNo INTEGER;
ALTER TABLE Student ADD COLUMN Class INTEGER;
```

### INSERT (Create Data)
```sql
INSERT INTO Student (ID, Name, RollNo, Adress, Class) 
VALUES (1, 'Danish', 22, 'Srinagar', 12);
```

### SELECT (Read Data)
```sql
SELECT * FROM Student;
SELECT * FROM Student WHERE Class = 12;
```

### UPDATE (Modify Data)
```sql
UPDATE Student SET Class = 12 WHERE ID = 1;
```

### DELETE (Remove Data)
```sql
DELETE FROM Student WHERE ID = 3;
```

## CRUD Operations Summary

- C = Create (INSERT)
- R = Read (SELECT)
- U = Update (UPDATE)
- D = Delete (DELETE)

## Real DevOps Use

Every application uses CRUD operations:
- User registration = INSERT
- Loading profile = SELECT
- Editing settings = UPDATE
- Deleting account = DELETE

