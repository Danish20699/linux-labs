# Lab 8: Linux Upgrade and Update Commands

## Learning Objectives
- Understand package management in Ubuntu
- Learn `apt update`, `apt upgrade`, `apt install`
- Practice system maintenance

## Commands

### 1. Update Package List
```bash
sudo apt update
```
- Downloads latest package information
- Doesn't install anything yet
- Just refreshes the list

### 2. Upgrade Installed Packages
```bash
sudo apt upgrade
```
- Installs security updates
- Upgrades packages to newer versions
- Safe - won't remove packages

### 3. Install New Package
```bash
sudo apt install package-name
```
- Installs a specific package

## Why This Matters for DevOps
- Servers must stay updated for security
- Automation requires understanding package management
- `apt` is the Ubuntu/Debian package manager
- In production, updates are automated (we'll learn this later!)

## Hands-On Exercise
Complete this on your Ubuntu VM!

