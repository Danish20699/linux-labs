# Lab 5: File Permissions (chmod, chown)

## Commands
- chmod - Change file permissions
- chown - Change file owner

## Permission Format

-rwxrwxrwx = Owner|Group|Others

r(read=4) w(write=2) x(execute=1)

## chmod (Change Permissions)

Syntax: chmod 600 filename
- First digit (6) = Owner rw- (4+2)
- Second digit (0) = Group --- (0)
- Third digit (0) = Others --- (0)

Common: 600 (secret), 644 (public), 755 (executable)

## chown (Change Owner)

Syntax: sudo chown username filename
Syntax: sudo chown user:group filename

## Real DevOps Use

Config files: 600
Web files: 644
Scripts: 755
Private dirs: 700

