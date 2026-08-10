# Gap Commands Practice - find, tail -f, curl -vx

## Purpose

Strengthening commands identified as gaps in initial interview prep review.

## 1. find Command

### Search by name pattern
find /var/www/html -name "*.php"
Result: Found all 7 PHP files in web directory

### Search by modification time
find /var/www/html -mmin -60
Purpose: Files modified in last 60 minutes

### Search by file size
find /var/www/html -size +1k
Result: Identified larger, more complex PHP files

### Combine find with grep (advanced)
find /var/www/html -name "*.php" -exec grep -l "pg_connect" {} \;
Purpose: Find PHP files that connect to database
Result: Identified which files use database vs which dont (test.php excluded)

## 2. tail -f Command

### Live log following
sudo tail -f /var/log/apache2/access.log

What happened: Watched real-time HTTP requests as they occurred
Saw actual browsing history from testing portfolio earlier

### Error log live view
sudo tail -f /var/log/apache2/error.log

Result: Found complete history of debugging session including:
- The pg+connect typo error
- Password authentication failure
- Missing file error

Key learning: tail -f is essential for live debugging while reproducing bugs with a
