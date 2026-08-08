# Lab 9: User Management

## Commands Covered
- whoami - Show current user
- id - Show user ID & groups
- sudo - Run command as root
- useradd - Add new user (requires sudo)
- usermod - Modify existing user
- userdel - Delete user
- passwd - Change password

---

## 1. whoami (Who Am I?)

### What It Does
Shows the username of current logged-in user.

### Example
```bash
whoami
# Output: danish
```

### Real DevOps Use
- Verify which user running commands
- Security auditing

---

## 2. id (Show User Identity)

### What It Does
Shows detailed user info: UID, GID, groups.

### Example
```bash
id
# Output: uid=1000(danish) gid=1000(danish) groups=1000(danish),4(adm),24(cdrom)...
```

### Understanding Output
- uid=1000 → User ID (unique number)
- gid=1000 → Group ID (primary group)
- groups → All groups user belongs to

### Real DevOps Use
- Check user permissions
- Verify group membership
- Security auditing

---

## 3. sudo (Superuser Do)

### What It Does
Runs commands with elevated privileges (as root/admin).

### Syntax
```bash
sudo command-name
```

### Example
```bash
sudo apt update
# Runs apt update with admin privileges
```

### Important
- Requires user password
- User must be in sudoers group
- Logs all sudo commands
- Use carefully!

### Real DevOps Use
- Install packages
- Edit system files
- Manage users
- Security auditing

---

## 4. useradd (Add New User)

### What It Does
Creates new user account.

### Syntax
```bash
sudo useradd username
sudo useradd -m -s /bin/bash username
```

### Flags
- -m = Create home directory
- -s = Set login shell

### Example
```bash
sudo useradd -m -s /bin/bash john
# Creates user 'john' with home /home/john
```

### Real DevOps Use
- Add deployment users
- Create service accounts
- Manage team access

---

## 5. passwd (Set Password)

### What It Does
Sets or changes user password.

### Syntax
```bash
sudo passwd username
```

### Example
```bash
sudo passwd john
# Sets password for user 'john'
```

### Real DevOps Use
- Initialize new user password
- Reset forgotten passwords
- Enforce security policies

---

## 6. usermod (Modify User)

### What It Does
Modifies existing user properties.

### Syntax
```bash
sudo usermod -aG groupname username
sudo usermod -s /bin/bash username
```

### Flags
- -aG = Add to group (without removing other groups)
- -s = Change shell

### Example
```bash
sudo usermod -aG sudo john
# Adds john to sudo group (gives admin access)
```

### Real DevOps Use
- Add user to groups
- Grant sudo privileges
- Change user shell

---

## 7. userdel (Delete User)

### What It Does
Removes user account.

### Syntax
```bash
sudo userdel username
sudo userdel -r username
```

### Flags
- -r = Remove home directory too

### Example
```bash
sudo userdel -r john
# Deletes john and their home directory
```

### CAUTION
- PERMANENT operation
- Check before deleting!

### Real DevOps Use
- Remove old employees
- Clean up test accounts
- Manage system users

---

## User Management Flow

### Create User
```bash
sudo useradd -m -s /bin/bash john
sudo passwd john
sudo usermod -aG sudo john
```

Result: User 'john' created with home, shell, and sudo access!

### Check User
```bash
id john
# Shows john's details
```

### Modify User
```bash
sudo usermod -aG docker john
# Add john to docker group
```

### Delete User
```bash
sudo userdel -r john
# Remove john completely
```

