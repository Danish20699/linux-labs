# Lab 21: PHP + PostgreSQL Integration

## What We Built

Full-stack application: Apache + PHP + PostgreSQL working together!

## Architecture

Browser -> Apache -> PHP -> PostgreSQL -> Data -> HTML -> Browser

## Files Created

### test.php
Simple PHP test file that echoes text.

### students.php
Connects to PostgreSQL database and displays student records dynamically.

## Key PHP Functions

- pg_connect() - Connect to PostgreSQL
- pg_query() - Execute SQL query
- pg_fetch_assoc() - Get results as array
- pg_close() - Close connection

## Result

Successfully displayed LIVE database data on webpage!
URL: http://localhost:8080/students.php

## Real DevOps Significance

This proves the complete stack works:
Linux + Apache + PostgreSQL + PHP

This is the foundation for Lab 22 Project!

## Security

Used dedicated user (college_admin) instead of postgres superuser.
Following least privilege principle.
