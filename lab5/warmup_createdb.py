# create db
# psql -d template1
import psycopg2
con = psycopg2.connect(database="customers", user="postgres",
                       password="becausewut101", host="127.0.0.1", port="5432")

print("Database opened successfully")
cur = con.cursor()
cur.execute('''CREATE TABLE CUSTOMER
       (ID INT PRIMARY KEY     NOT NULL,
       Name           TEXT    NOT NULL,
       Address            TEXT     NOT NULL,
       Age INT NOT NULL,
       review        TEXT);''')
print("Table created successfully")

print("Record inserted successfully")
cur = con.cursor()
cur.execute("SELECT ID, Name, Address, Age, review from CUSTOMER")
rows = cur.fetchall()

print(rows)
for row in rows:
    print("ID =", row[0])
    print("Name =", row[1])
    print("Address =", row[2])
    print("Age =", row[2])
    print("review =", row[4], "\n")
print("Operation done successfully")


from faker import Faker
fake = Faker()
for i in range(100000):
    print(i)
    cur.execute("INSERT INTO CUSTOMER (ID,Name,Address,Age,review) VALUES ('"+ str(i)+"','"+fake.name()+"','"+fake.address()+"','"+str(fake.random_int(min = 18, max = 70))+"','"+fake.text()+"')")
    con.commit()
