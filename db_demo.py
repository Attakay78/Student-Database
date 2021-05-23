import mysql.connector

conn = mysql.connector.connect(
  host = "localhost",
  user = "root",
  database = "StudentAttendanceSystem",
#   password="ftpiptf0"
)

cursor = conn.cursor()
name = ("Quaicoe", "Richard")
cursor.execute("SELECT Student_ID,FirstName,LastName FROM Students WHERE LastName = %s and FirstName = %s", name)
while True:

  row = cursor.fetchone()
  if row is None:
    break
  print(f"{row}")
print("Number of rows returned: %d" % cursor.rowcount)
  
cursor.close()