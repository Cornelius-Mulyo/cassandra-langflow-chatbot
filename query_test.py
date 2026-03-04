from cassandra.cluster import Cluster

# Connect to Cassandra running locally
cluster = Cluster(["127.0.0.1"])
session = cluster.connect()

# Select keyspace
session.execute("USE studentdb")

# Query the students table
rows = session.execute("SELECT * FROM students")

print("Students in database:")

for row in rows:
    print(f"ID: {row.id}, Name: {row.name}, Major: {row.major}, GPA: {row.gpa}")