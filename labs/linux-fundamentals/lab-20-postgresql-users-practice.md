# Lab 20: PostgreSQL User Management - Hands-On

## What We Built

Created a dedicated database user with proper security (not using postgres superuser).

## Commands Practiced

### Create User
```sql
CREATE USER college_admin WITH PASSWORD 'SecurePass123';
```

### Grant Database Permissions
```sql
GRANT ALL PRIVILEGES ON DATABASE student_db TO college_admin;
```

### Grant Table Permissions (Important!)
```sql
GRANT ALL PRIVILEGES ON TABLE Student TO college_admin;
```

### List All Users
```sql
\du
```

### Connect As Specific User
```bash
psql -U college_admin -d student_db -h localhost
```

## Key Learning: Two-Level Permissions!

1. Database-level permission (GRANT ON DATABASE)
2. Table-level permission (GRANT ON TABLE)

BOTH are needed for full access!

## Security Principle

- postgres = Superuser (full access, dangerous if compromised)
- college_admin = Limited user (only specific database/table access)

This follows LEAST PRIVILEGE principle - exactly what production apps need!

## For Portfolio Project

We'll create: portfolio_user
With access to: portfolio_db only
This keeps our application secure!

