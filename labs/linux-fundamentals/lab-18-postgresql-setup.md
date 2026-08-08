# Lab 18: Setup PostgreSQL Database Server

## What is PostgreSQL?

Powerful database system. We'll use it for the project portfolio!

## Install PostgreSQL

```bash
sudo apt update
sudo apt install postgresql postgresql-contrib -y
```

## Start PostgreSQL

```bash
sudo systemctl start postgresql
sudo systemctl enable postgresql
```

## Access PostgreSQL

```bash
sudo -u postgres psql
# Opens PostgreSQL prompt
# Type \q to exit
```

## Create Database

```bash
sudo -u postgres createdb portfolio_db
```

## Create User

```bash
sudo -u postgres psql -c "CREATE USER portfolio_user WITH
git add labs/linux-fundamentals/lab-17* labs/linux-fundamentals/lab-18* labs/linux-fundamentals/lab-19* labs/linux-fundamentals/lab-20* labs/linux-fundamentals/lab-21*
git commit -m "Lab 17-21: Apache, PostgreSQL, SQL, PHP - Core Project Technologies"
git push origin main
