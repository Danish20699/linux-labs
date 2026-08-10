-- create_db.sql
-- Run this as postgres superuser to set up the database and user
-- Usage: sudo -u postgres psql -f create_db.sql

CREATE DATABASE portfolio_db;

CREATE USER portfolio_user WITH PASSWORD 'danish1p';

GRANT ALL PRIVILEGES ON DATABASE portfolio_db TO portfolio_user;
