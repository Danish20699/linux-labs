# Complete DevOps Command Reference - Danish Nazir

## Linux Fundamentals

### Navigation Commands

**pwd** - Print Working Directory
What it does: Shows your exact current location in the filesystem.
Example: pwd
Output: /home/danish/linux-labs

**ls** - List
What it does: Shows files and folders in current directory.
Variations:
- ls = simple list
- ls -a = shows hidden files (starting with .)
- ls -la = shows hidden files WITH details (permissions, size, owner, date)
Example: ls -la

**cd** - Change Directory
What it does: Moves you to a different location in filesystem.
Special cases:
- cd .. = go up ONE level
- cd ~ = go to home directory
- cd - = go to PREVIOUS directory
Example: cd /var/www/html

---

## File Operations

**touch** - Create Empty File
What it does: Creates a new empty file (or updates timestamp if exists).
Example: touch newfile.txt

**cat** - Concatenate (Read File)
What it does: Displays file contents on screen.
Example: cat file.txt

**echo** - Print Text
What it does: Outputs text to screen (or into a file with redirect).
Example: echo "Hello World"

**> (redirect)** - Overwrite
What it does: Sends output INTO a file, OVERWRITING existing content.
Example: echo "text" > file.txt

**>> (append)** - Append
What it does: Adds output to END of file WITHOUT deleting existing content.
Example: echo "more text" >> file.txt

**cp** - Copy
What it does: Creates a DUPLICATE of a file. Original stays unchanged.
Important: Use cp -r for folders (recursive)
Example: cp source.txt destination.txt
Example: cp -r /source/folder /dest/folder

**mv** - Move/Rename
What it does: Two uses - moves file to new location, OR renames it.
Example: mv old.txt new.txt (renames)
Example: mv file.txt /new/path/ (moves)

**rm** - Remove/Delete
What it does: PERMANENTLY deletes files. No trash bin!
DANGER: rm -rf deletes folders AND contents with NO confirmation
Example: rm file.txt
Example: rm -rf /folder (DANGEROUS - use carefully!)

---

## Directory Operations

**mkdir** - Make Directory
What it does: Creates a new folder.
Special flag: mkdir -p creates nested folders automatically
Example: mkdir myfolder
Example: mkdir -p path/to/nested/folder

**rmdir** - Remove Directory
What it does: Deletes EMPTY folders only.
Example: rmdir emptyfolder

---

## Permissions

**chmod** - Change Mode (Permissions)
What it does: Controls WHO can read/write/execute a file.
Numbers explained:
- 4 = read (r)
- 2 = write (w)
- 1 = execute (x)
Common patterns:
- 755 = owner full access, others read+execute (scripts)
- 644 = owner read+write, others read only (regular files)
- 600 = owner only, no one else (secrets/private files)
Example: chmod 755 script.sh
Example: chmod 600 secret.conf

**chown** - Change Owner
What it does: Changes WHO owns the file (user and/or group).
Example: chown danish file.txt
Example: chown danish:danish file.txt (owner AND group)

---

## Text Processing

**grep** - Search Text Inside Files
What it does: Finds lines containing a specific pattern/text.
Variations:
- grep -i = case insensitive search
- grep -c = count matches
- grep -n = show line numbers
Example: grep "ERROR" logfile.txt
Example: grep -i "error" logfile.txt

**sed** - Stream Editor (Find & Replace)
What it does: Finds and replaces text patterns in files.
Syntax: sed s/find/replace/g filename
Example: sed s/ERROR/CRITICAL/g logfile.txt

**find** - Find Files
What it does: Searches for FILES by name, type, size, or date (not content).
Example: find /home -name "*.txt"
Example: find / -mtime -1 (modified in last 24 hours)

---

## Process Management

**ps aux** - Process Status
What it does: Shows SNAPSHOT of currently running processes.
Columns: USER, PID, %CPU, %MEM, COMMAND
Example: ps aux
Example: ps aux | grep apache (find specific process)

**top** - Real-time Process Monitor
What it does: LIVE updating view of CPU/memory usage and processes.
Exit: Press q to quit
Example: top

**kill** - Terminate Process
What it does: Sends signal to stop a process.
Two types:
- kill PID = polite request (SIGTERM), allows cleanup
- kill -9 PID = FORCE kill (SIGKILL), immediate, no cleanup
Example: kill 1234
Example: kill -9 1234 (use only when normal kill fails)

---

## Service Management (systemctl)

**systemctl status** - Check Service Status
What it does: Shows if a service is running, stopped, or failed.
Example: systemctl status apache2

**systemctl start/stop** - Control Service
What it does: Starts or stops a background service.
Example: systemctl start apache2
Example: systemctl stop apache2

**systemctl restart** - Restart Service
What it does: Stops then starts a service (useful after config changes).
Example: systemctl restart apache2

**systemctl enable** - Auto-start on Boot
What it does: Makes service start automatically when server boots.
Example: systemctl enable apache2

---

## Disk & System Resources

**df -h** - Disk Free (Human readable)
What it does: Shows disk SPACE usage on all mounted drives.
Example: df -h

**du -h** - Disk Usage
What it does: Shows how much space specific folders/files use.
Example: du -sh /var/log

**free -h** - Memory Usage
What it does: Shows RAM usage (total, used, free, available).
Example: free -h

---

## Networking

**ip addr show** - Show Network Interfaces
What it does: Displays network interface configuration and IP addresses.
Example: ip addr show

**ping** - Test Connectivity
What it does: Tests if a host is reachable over network.
Example: ping google.com

**curl** - Transfer Data / Test HTTP
What it does: Makes HTTP requests, useful for testing web servers/APIs.
Example: curl http://localhost

**ssh** - Secure Shell
What it does: Creates encrypted connection to control REMOTE computer.
Example: ssh username@server-ip
Example: ssh danish@127.0.0.1 -p 2222

---

## Package Management (apt)

**apt update** - Refresh Package List
What it does: Downloads latest package information (doesn't install anything).
Example: sudo apt update

**apt upgrade** - Install Updates
What it does: Installs available updates for already-installed packages.
Example: sudo apt upgrade -y

**apt install** - Install Package
What it does: Installs a specific new software package.
Example: sudo apt install apache2 -y

---

## User Management

**whoami** - Current User
What it does: Shows your currently logged-in username.
Example: whoami

**id** - User Identity Details
What it does: Shows UID, GID, and group memberships.
Example: id

**sudo** - Superuser Do
What it does: Runs a command with admin/root privileges.
Example: sudo apt update

**useradd** - Create New User
What it does: Creates a new user account on the system.
Example: sudo useradd -m -s /bin/bash john

**passwd** - Set/Change Password
What it does: Sets or changes a user password.
Example: sudo passwd john

**usermod** - Modify User
What it does: Changes properties of existing user (like adding to groups).
Example: sudo usermod -aG sudo john

---

## Text Editors

**vi/vim** - Vi Editor
What it does: Powerful modal text editor (always available on Linux servers).
Modes: Command mode (default) and Insert mode (i to enter, Esc to exit)
Save/Quit: :w (save), :q (quit), :wq (save and quit)
Example: vi filename.txt

**nano** - Nano Editor
What it does: Simple, beginner-friendly text editor (no modes needed).
Save: Ctrl+O then Enter
Exit: Ctrl+X
Example: nano filename.txt

---

## PostgreSQL/SQL Commands

**CREATE DATABASE** - Create New Database
What it does: Creates a new database container.
Example: CREATE DATABASE mydb;

**CREATE TABLE** - Create Table Structure
What it does: Defines a new table with columns and data types (DDL).
Example: CREATE TABLE users (id SERIAL PRIMARY KEY, name VARCHAR(100));

**ALTER TABLE** - Modify Table Structure
What it does: Adds, removes, or changes columns in existing table (DDL).
Example: ALTER TABLE users ADD COLUMN email VARCHAR(100);

**INSERT INTO** - Add Data
What it does: Adds new rows of data into a table (DML).
Example: INSERT INTO users (name) VALUES (Danish);

**SELECT** - Query Data
What it does: Retrieves/reads data from table (DQL - read only).
Example: SELECT * FROM users;
Example: SELECT * FROM users WHERE id = 1;

**UPDATE** - Modify Data
What it does: Changes existing data in table rows (DML).
Example: UPDATE users SET name = John WHERE id = 1;

**DELETE FROM** - Remove Data
What it does: Removes rows of data from table (DML).
Example: DELETE FROM users WHERE id = 1;

**GRANT** - Give Permissions
What it does: Gives a user access rights to database/table.
Example: GRANT ALL PRIVILEGES ON DATABASE mydb TO myuser;

**\c** - Connect to Database (psql command)
What it does: Switches connection to different database.
Example: \c mydb

**\dt** - List Tables (psql command)
What it does: Shows all tables in current database.
Example: \dt

**\d tablename** - Describe Table (psql command)
What it does: Shows column structure of specific table.
Example: \d users

**\du** - List Users (psql command)
What it does: Shows all database users/roles.
Example: \du

---

## Git Commands

**git clone** - Copy Repository
What it does: Downloads a complete copy of a remote repository.
Example: git clone https://github.com/user/repo.git

**git add** - Stage Changes
What it does: Marks files as ready to be committed.
Example: git add filename.txt
Example: git add . (all files)

**git commit** - Save Changes
What it does: Permanently records staged changes with a message.
Example: git commit -m "Description of changes"

**git push** - Upload Changes
What it does: Sends local commits to remote repository (GitHub).
Example: git push origin main

**git pull** - Download Changes
What it does: Gets latest changes from remote repository.
Example: git pull origin main

**git status** - Check Status
What it does: Shows which files are modified/staged/untracked.
Example: git status

**ssh-keygen** - Generate SSH Key
What it does: Creates public/private key pair for secure authentication.
Example: ssh-keygen -t ed25519 -C email@example.com

---

## PHP Functions (Database Connection)

**pg_connect()** - Connect to PostgreSQL
What it does: Establishes connection between PHP and PostgreSQL database.
Example: pg_connect("host=localhost dbname=mydb user=myuser password=mypass");

**pg_query()** - Execute SQL Query
What it does: Runs a SQL command through the PHP connection.
Example: pg_query($conn, "SELECT * FROM users");

**pg_fetch_assoc()** - Fetch Result Row
What it does: Gets one row of query results as an associative array.
Example: while ($row = pg_fetch_assoc($result)) { }

**pg_close()** - Close Connection
What it does: Properly closes the database connection.
Example: pg_close($conn);

---

## Key Concepts Summary

**DDL vs DML vs DQL:**
- DDL (Data Definition) = CREATE, ALTER, DROP - changes STRUCTURE
- DML (Data Manipulation) = INSERT, UPDATE, DELETE - changes DATA
- DQL (Data Query) = SELECT - only READS data

**Port Forwarding:**
Creates a tunnel between host machine port and VM port, allowing external access to isolated VM network.

**Least Privilege Principle:**
Give users/services ONLY the minimum permissions needed - never use superuser/root for regular operations.

**Why PHP Needs Apache:**
PHP code must be PROCESSED by a web server before becoming HTML. Apache receives requests, hands PHP files to PHP interpreter, then sends the resulting HTML to browser.
---

## Infrastructure as Code

**init.sql / create_db.sql**
What it does: SQL scripts that automate database setup - creating databases, users, tables, and data in one reproducible file.
Why it matters: Instead of manually typing 50+ commands, run one script to rebuild entire infrastructure. Critical for disaster recovery, onboarding new team members, and CI/CD pipelines.

Example workflow:
sudo -u postgres psql -f create_db.sql
sudo -u postgres psql -d portfolio_db -f init.sql

**Best Practice: Separate Concerns**
- create_db.sql = superuser tasks (create database, create user)
- init.sql = schema and data (tables, inserts, permissions)

**Idempotency:**
Scripts should be safe to run multiple times without breaking things. Real production scripts often use IF NOT EXISTS checks or DROP IF EXISTS before CREATE to handle re-runs safely.
