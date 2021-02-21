# create db
# psql -d template1
import psycopg2
con = psycopg2.connect(database="students", user="postgres",
                       password="123456", host="127.0.0.1", port="5432")

print("Database opened successfully")
cur = con.cursor()
cur.execute('''CREATE TABLE STUDENT
      (ADMISSION INT PRIMARY KEY     NOT NULL,
      NAME           TEXT    NOT NULL,
      AGE            INT     NOT NULL,
      COURSE        CHAR(50),
      DEPARTMENT        CHAR(50));''')
print("Table created successfully")

print("Record inserted successfully")
cur = con.cursor()
cur.execute("SELECT admission, name, age, course, department from STUDENT")
rows = cur.fetchall()

print(rows)
for row in rows:
    print("ADMISSION =", row[0])
    print("NAME =", row[1])
    print("AGE =", row[2])
    print("COURSE =", row[3])
    print("DEPARTMENT =", row[4], "\n")
print("Operation done successfully")
con.close()

from faker import Faker
fake = Faker()
for i in range(100):
    print(i)
    cur.execute("INSERT INTO STUDENT (Admission,Name,Age,Course,Department) VALUES ('"+ str(i)+"','"+fake.name()+"','"+str(fake.pyint(16, 50, 1))+"','SE', 'ICT')")
    con.commit()
