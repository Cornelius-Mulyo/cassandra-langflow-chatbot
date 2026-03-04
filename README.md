# Apache Cassandra Setup – Assignment Project

## Overview
This project demonstrates how I set up Apache Cassandra using Docker, created a students table, inserted sample data, and ran NoSQL queries through cqlsh.

## Files Included
- `schema.cql` – All Cassandra commands for creating the table and inserting data  
- `docker_commands.txt` – Docker commands used to run Cassandra locally  
- `main.py` (auto-created, not required)  

## How to Use This Project

### 1. Start Cassandra with Docker
```bash
docker run --name cassandra-db -p 9042:9042 -d cassandra:latest

docker exec -it cassandra-db cqlsh
