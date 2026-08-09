# Lab 19: SQL - DDL, DML, DQL Commands

## SQL Categories Overview

SQL commands are divided into 3 main categories:

## 1. DDL (Data Definition Language)

**Purpose:** Define/modify database STRUCTURE (blueprint)

**Commands:**
- CREATE - Create new table/database
- ALTER - Modify existing structure
- DROP - Delete table/database completely

### CREATE TABLE

```sql
CREATE TABLE Student (
    ID INTEGER,
    Name VARCHAR(50),
    Adress VARCHAR(100)
);
```

### ALTER TABLE

```sql
ALTER TABLE Student ADD COLUMN RollNo INTEGER;
ALTER TABLE Student ADD COLUMN Class INTEGER;
```

### DROP TABLE

```sql
DROP TABLE Student;
-- Completely deletes table and ALL data!
```

### DROP COLUMN

```sql
ALTER TABLE Student DROP COLUMN Class;
-- Removes just one column
```

---

## 2.
