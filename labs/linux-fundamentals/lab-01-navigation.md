# Lab 1: Navigation Commands

## Commands Covered
- `pwd` - Print Working Directory
- `ls` - List files and directories
- `cd` - Change Directory

## 1. pwd (Print Working Directory)

### What It Does
Shows your current location in the filesystem.

### Why It Matters
You need to know WHERE you are before navigating anywhere!

### Example
```bash
pwd
# Output: /home/danish/linux-labs/linux-labs
```

### Real DevOps Use
When SSH into a server, first thing: `pwd` to know your location!

---

## 2. ls (List)

### What It Does
Shows files and folders in current directory.

### Variations
- `ls` - Simple list
- `ls -a` - Show hidden files (start with .)
- `ls -la` - Show detailed info (permissions, owner, size)

### Example
```bash
ls
# Output: README.md  labs  test-file.txt

ls -la
# Output: Shows files with permissions, owner, date, size
```

### Understanding ls -la Output
