USE StudentAttendanceSystem;

CREATE TABLE Lecturers(
    Lecturer_ID CHAR(8) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Position VARCHAR(30),
    Telephone CHAR(10) NOT NULL,
    Date_Of_Birth DATE NOT NULL,
    Gender CHAR(1) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Students(
    Student_ID CHAR(8) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Year CHAR(1) NOT NULL,
    Telephone CHAR(10) NOT NULL,
    Date_Of_Birth DATE NOT NULL,
    Gender CHAR(1) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Courses(
    Course_ID CHAR(6) PRIMARY KEY,
    Course_Title VARCHAR(30) NOT NULL,
    Year_Course CHAR(1) NOT NULL,
    Lecturer_ID CHAR(8),
    FOREIGN KEY (Lecturer_ID) REFERENCES Lecturers(Lecturer_ID) ON DELETE SET NULL
);

CREATE TABLE StudentCourse(
    Student_ID CHAR(8),
    Course_ID CHAR(6),
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID) ON DELETE CASCADE,
    FOREIGN KEY (Course_ID) REFERENCES Courses(Course_ID) ON DELETE CASCADE
);

SELECT "Tables created successfully" AS "success info";