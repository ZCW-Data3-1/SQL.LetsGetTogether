

INSERT INTO Students (StudentID, StudentName, Address, City, PostalCode, Country) VALUES (11,'Jane Doe', '57 Union St', 'Glasgow', 6789, 'Scotland');
INSERT INTO Students (StudentID, StudentName, Address, City, PostalCode, Country) VALUES (22,'Aravind Babu', '34 ff St', 'Newyork', 5555, 'USA');
INSERT INTO Students (StudentID, StudentName, Address, City, PostalCode, Country) VALUES (33,'Matt Hoke', '444 ssf St', 'Berlin', 3456, 'Germany');
INSERT INTO Students (StudentID, StudentName, Address, City, PostalCode, Country) VALUES (44,'ssss ddd', '44 ffg St', 'Philadelphia', 4333, 'USA');
INSERT INTO Students (StudentID, StudentName, Address, City, PostalCode, Country) VALUES (55,'we rr', '55 ff St', 'Trenton', 7677, 'USA');
INSERT INTO Students (StudentID, StudentName, Address, City, Country) VALUES (66,'fffdfdf', '54 jhjj St', 'Philadelphia','USA');
INSERT INTO Students (StudentID, StudentName, Address, City, Country) VALUES (77,'fdf', '22 bbvb St', 'Trenton', 'USA');

CREATE TABLE Students (
    StudentID int NOT NULL,
    StudentName varchar(255),
    Address varchar(255),
    City varchar(255),
    PostalCode int,
    Country varchar(255),
    PRIMARY KEY (StudentID)
);

CREATE TABLE Enrollments (
    EnrollmentID int,
    Name varchar(255),
    StudentID int,
    PRIMARY KEY (EnrollmentID),
    CONSTRAINT FK_Enrollment FOREIGN KEY (StudentID)
    REFERENCES Students(StudentID)
);

INSERT INTO Enrollments (EnrollmentID, Name, StudentID) VALUES (111, 'JOE', 11);
INSERT INTO Enrollments (EnrollmentID, Name, StudentID) VALUES (222, 'ARF', 22);
INSERT INTO Enrollments (EnrollmentID, Name, StudentID) VALUES (333, 'GTT', 33);
INSERT INTO Enrollments (EnrollmentID, Name, StudentID) VALUES (444, 'JJJ', 44);
INSERT INTO Enrollments (EnrollmentID, Name, StudentID) VALUES (555, 'IUJ', 55);

SELECT * FROM Enrollments LEFT JOIN Students ON Enrollments.StudentID = Students.StudentID;