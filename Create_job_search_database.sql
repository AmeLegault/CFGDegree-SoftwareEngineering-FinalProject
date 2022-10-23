CREATE DATABASE job_search;
USE job_search;
CREATE TABLE users(ID INT NOT NULL UNIQUE PRIMARY KEY, surname VARCHAR(50), first_name VARCHAR(50),
 email VARCHAR(100) UNIQUE);
CREATE TABLE login_details(username VARCHAR(100) UNIQUE PRIMARY KEY, _password VARCHAR(100),
 ID INT NOT NULL UNIQUE, CONSTRAINT FK_category FOREIGN KEY(ID) REFERENCES users(ID));
 CREATE TABLE saved_jobs(employerID INT, employerName VARCHAR(100), expirationDate DATE, jobDescription VARCHAR(5000), jobID INT,
 jobTitle VARCHAR(100) NOT NULL PRIMARY KEY, jobURL VARCHAR(1000), locationName VARCHAR(100), maximumSalary INT, minimumSalary INT,
 applied_for_job VARCHAR(3), ID INT NOT NULL UNIQUE, CONSTRAINT FK_category2 FOREIGN KEY(ID) REFERENCES users(ID));