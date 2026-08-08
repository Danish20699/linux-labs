# Lab 6: Text Processing (grep, sed)

## Commands
- grep - Find lines matching pattern
- sed - Find and replace text

## grep (Find)

Syntax: grep "pattern" filename

Example:
```bash
grep "ERROR" log.txt
# Shows all lines with ERROR
```

Use: Search logs for problems, find config values

## sed (Find & Replace)

Syntax: sed 's/find/replace/g' filename

Example:
```bash
sed 's/ERROR/CRITICAL/g' log.txt
# Replaces ERROR with CRITICAL
```

Use: Change configs, fix formats, bulk replacements

## Real DevOps Use

grep: Find errors in 1000+ line logs
sed: Update configs across multiple servers
Both: Parse and process system data

## grep Variants

grep -i "error" = Case insensitive
grep -n "error" = Show line numbers
grep -c "error" = Count matches

