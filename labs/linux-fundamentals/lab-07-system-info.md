# Lab 7: System Information

## Commands
- df - Disk space usage
- du - Directory size
- top - Running processes
- ps - Process list
- free - Memory usage

## df (Disk Free)

Shows disk space on all drives.

```bash
df -h
# -h = Human readable (KB, MB, GB)
```

## du (Disk Usage)

Shows folder sizes.

```bash
du -sh /home
# -s = Summary, -h = Human readable
```

## free (Memory)

Shows RAM usage.

```bash
free -h
# Shows total, used, available memory
```

## top (Real-time Processes)

Shows running processes and CPU/memory.

```bash
top
# Press Q to quit
```

## ps (Process Snapshot)

Shows snapshot of processes.

```bash
ps aux
# Shows all processes with details
```

## Real DevOps Use

df: Monitor disk
git add labs/linux-fundamentals/lab-06-text-processing.md labs/linux-fundamentals/lab-07-system-info.md
git commit -m "Lab 6-7: Text Processing & System Information"
git push origin main
