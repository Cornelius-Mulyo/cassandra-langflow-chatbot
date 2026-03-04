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
