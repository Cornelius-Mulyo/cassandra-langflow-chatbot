# Apache Cassandra Setup – Assignment Project

## Overview

This project demonstrates how to set up **Apache Cassandra using Docker**, create a `students` table, insert sample data, and run NoSQL queries using both **CQL** and **Python**. It also includes a simple context file that can be used with a **Langflow chatbot**.

---

## Files Included

* `schema.cql` – Cassandra commands for creating the keyspace, table, and inserting data
* `docker_commands.txt` – Docker commands used to run Cassandra locally
* `query_test.py` – Python script that connects to Cassandra and runs queries
* `context_file.md` – Context file used by a Langflow chatbot

---

## How to Run

### 1. Start Cassandra with Docker

```bash
docker run --name cassandra-node -p 9042:9042 -d cassandra
docker exec -it cassandra-node cqlsh
```

### 2. Run the schema

Inside `cqlsh` run:

```sql
SOURCE 'schema.cql';
```

### 3. Run the Python query script

Make sure the Cassandra driver is installed:

```bash
pip install cassandra-driver
```

Then run:

```bash
python query_test.py
```

---

## Technologies Used

* Apache Cassandra
* Docker
* Python
* Langflow
* NoSQL Databases

---

## Project Structure and Example Output

### Project Structure

```
cassandra-langflow-chatbot
│
├── schema.cql
├── docker_commands.txt
├── query_test.py
├── context_file.md
└── README.md
```

### Example Output

Running the Python query script returns:

```
Students in database:

ID: STU00001, Name: Cornelius Mulyokela, Major: Computer Science, GPA: 3.89
ID: STU00002, Name: Alice Johnson, Major: Data Science, GPA: 3.75
ID: STU00003, Name: Michael Lee, Major: Cybersecurity, GPA: 3.92
```
