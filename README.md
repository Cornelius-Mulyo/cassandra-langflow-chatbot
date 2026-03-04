# Apache Cassandra Setup – Assignment Project

![Docker](https://img.shields.io/badge/Docker-Containerized-blue)
![Cassandra](https://img.shields.io/badge/Database-Apache%20Cassandra-purple)
![Python](https://img.shields.io/badge/Python-Backend-yellow)

## Overview

This project demonstrates how to set up **Apache Cassandra using Docker**, create a `students` table, insert sample data, and run NoSQL queries using both **CQL** and **Python**.

The project also includes a simple **Langflow chatbot context file**, showing how Cassandra data could be integrated into AI-powered workflows.

This project demonstrates basic **NoSQL database operations**, containerization with Docker, and backend interaction using Python.

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

This will:

- Create the `studentdb` keyspace  
- Create the `students` table  
- Insert sample student records  

---

### 3. Run the Python Query Script

Install the Cassandra driver:

```bash
pip install cassandra-driver
```

Then run:

```bash
python query_test.py
```

The script connects to the Cassandra database and retrieves student records.

---

## Example Queries

### View All Students

```sql
SELECT * FROM students;
```

### Query a Specific Student

```sql
SELECT * FROM students WHERE id = 'STU00001';
```

### Update a Student's GPA

```sql
UPDATE students
SET gpa = 3.95
WHERE id = 'STU00002';
```

### Filter by Major

```sql
SELECT * FROM students
WHERE major = 'Computer Science'
ALLOW FILTERING;
```

### Delete a Student

```sql
DELETE FROM students
WHERE id = 'STU00003';
```

---

## Demo Screenshots

### Query Results

Shows all student records stored in the Cassandra table.

![Query Results](screenshots/select-results.png)

---

### Table Structure

Shows the Cassandra schema definition for the `students` table.

![Table Structure](screenshots/table-structure.png)

---

### Update Query

Demonstrates modifying an existing student's GPA.

![Update Query](screenshots/update-query.png)

---

### Filter Query

Filtering student records based on major.

![Filter Query](screenshots/filter-query.png)

---

### Delete Query

Removing a record from the database and verifying the result.

![Delete Query](screenshots/delete-query.png)

---

## What This Project Demonstrates

- Running **Apache Cassandra in Docker**
- Creating a **NoSQL database schema**
- Inserting and managing data using **CQL**
- Performing **CRUD operations** (Create, Read, Update, Delete)
- Connecting Cassandra with **Python**
- Preparing data for integration with **Langflow AI workflows**

---

## Future Improvements

- Add a REST API for querying Cassandra
- Integrate Cassandra queries into a Langflow chatbot
- Deploy the database and API using Docker Compose
- Add automated testing for database queries
