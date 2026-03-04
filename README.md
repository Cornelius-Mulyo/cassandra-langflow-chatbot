# Apache Cassandra Setup – Assignment Project

![Docker](https://img.shields.io/badge/Docker-Containerized-blue)
![Cassandra](https://img.shields.io/badge/Database-Apache%20Cassandra-purple)
![Python](https://img.shields.io/badge/Python-Backend-yellow)

## Overview

This project demonstrates how to set up **Apache Cassandra using Docker**, create a `students` table, insert sample data, and run NoSQL queries using **CQL** and **Python**.

The project also demonstrates basic **CRUD operations (Create, Read, Update, Delete)** using Cassandra and shows how the database can be integrated with backend tools such as **Python and Langflow**.

---

## Technologies Used

- Apache Cassandra  
- Docker  
- Python  
- Langflow  
- NoSQL Databases  

---

## Project Structure

```
cassandra-langflow-chatbot/
│
├── schema.cql
├── docker_commands.txt
├── query_test.py
├── context_file.md
├── README.md
└── screenshots/
```

---

## Files Included

- `schema.cql` – Cassandra commands for creating the keyspace, table, and inserting data  
- `docker_commands.txt` – Docker commands used to run Cassandra locally  
- `query_test.py` – Python script that connects to Cassandra and runs queries  
- `context_file.md` – Context file used by a Langflow chatbot  

---

## How to Run the Project

### 1. Start Cassandra with Docker

```bash
docker run --name cassandra-node -p 9042:9042 -d cassandra
docker exec -it cassandra-node cqlsh
```

---

### 2. Run the Schema

Inside `cqlsh` run:

```sql
SOURCE 'schema.cql';
```

This will create:

- the `studentdb` keyspace  
- the `students` table  
- sample student records  

---

### 3. Run the Python Query Script

Install the Cassandra Python driver:

```bash
pip install cassandra-driver
```

Run the query script:

```bash
python query_test.py
```

---

## Example Queries

```sql
SELECT * FROM students;

SELECT * FROM students WHERE id = 'STU00001';

UPDATE students
SET gpa = 3.95
WHERE id = 'STU00002';

SELECT * FROM students
WHERE major = 'Computer Science'
ALLOW FILTERING;

DELETE FROM students
WHERE id = 'STU00003';
```

---

## Demo Screenshots

### Cassandra Queries

The screenshot below shows example Cassandra queries including selecting records, updating values, filtering results, and deleting records.

![Cassandra Queries](screenshots/Demo1.png)

---

### Query Results and Table Structure

This screenshot demonstrates the Cassandra table structure and query outputs after performing CRUD operations.

![Query Results](screenshots/Demo2.png)

---

## What This Project Demonstrates

- Running **Apache Cassandra inside Docker**
- Designing a **NoSQL database schema**
- Executing **CQL queries**
- Performing **CRUD operations**
- Connecting Cassandra with **Python**
- Preparing data for integration with **AI tools like Langflow**


