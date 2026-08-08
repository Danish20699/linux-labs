# Lab 3: File Operations

## Commands Covered
- cp - Copy files
- mv - Move or rename files
- rm - Remove/delete files

---

## 1. cp (Copy Files)

### What It Does
Creates a copy of a file in another location.

### Syntax
```bash
cp source-file destination-file
cp source-file destination-folder/
```

### Examples
```bash
cp test.txt backup.txt
# Creates copy named backup.txt

cp test.txt my-folder/test.txt
# Copies into folder with same name

cp test.txt my-folder/backup.txt
# Copies into folder with new name
```

### Important
- ORIGINAL file stays
- Creates NEW copy
- Safe operation (doesn't delete anything)

### Real DevOps Use
- Backup configuration files before editing
- Duplicate templates for new deployments
- Archive important files

---

## 2. mv (Move or Rename)

### What It Does
Moves file to new location OR renames it.

### Syntax
```bash
mv old-name new-name          # RENAME
mv file-name destination/     # MOVE
```

### Examples
```bash
mv lab-test.txt test-file.txt
# Renames in same folder

mv test-file.txt my-folder/
# Moves to different folder

mv test-file.txt my-folder/backup.txt
# Moves AND renames
```

### Important
- Original is GONE (moved, not copied)
- No undo - be careful!
- Faster than cp + rm

### Real DevOps Use
- Reorganize files
- Archive old files to archive folder
- Rename configuration files

---

## 3. rm (Remove/Delete)

### What It Does
Per

ls labs/linux-fundamentals/
