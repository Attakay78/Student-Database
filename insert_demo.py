import mysql.connector

conn = mysql.connector.connect(
  host = "localhost",
  user = "root",
  database = "StudentAttendanceSystem",
#   password="ftpiptf0"
)

cursor = conn.cursor()

id = input("enter your student id: ")
firstname = input("enter your firstname: ")
lastname = input("enter your lastname: ")
year = input("enter your year: ")
telephone = input("enter your phone number: ")
dob = input("enter your date of birth as yyyy-mm-dd: ")
gender = input("enter your gender, M or F: ")
email = input("enter your email address: ")

def InsertStudent(id, firstname, lastname, year, telephone, dob, gender, email):
    values = (id, firstname, lastname, year, telephone, dob, gender, email)
    try:
        cursor.execute("INSERT INTO Students VALUES (%s,%s,%s,%s,%s,%s,%s,%s)", values)
    except:
        print("could not insert student into database")
    else:
        cursor.close()
        conn.commit()
        print("Disconnected")


InsertStudent(id, firstname, lastname, year, telephone, dob, gender, email)
    