CREATE DATABASE Library;
USE Library;
CREATE TABLE Branch(
Branch_no INT PRIMARY KEY,
Manager_Id INT,
Branch_address VARCHAR(225),
Contact_no VARCHAR(20)
);
CREATE TABLE Employee(
Emp_Id INT PRIMARY KEY,
Emp_name VARCHAR(100),
Position VARCHAR(50),
Salary DECIMAL(10,2),
Branch_no INT,
FOREIGN KEY(Branch_no)REFERENCES
Branch(Branch_no)
);
CREATE TABLE Books(
ISBN VARCHAR(20) PRIMARY KEY,
Book_title VARCHAR(100),
Category VARCHAR(50),
Rental_price DECIMAL(10,2),
Status VARCHAR(10),
Author VARCHAR(100),
Publisher VARCHAR(100)
);
CREATE TABLE customer(
Customer_Id INT PRIMARY KEY,
Customer_name VARCHAR(100),
Customer_address VARCHAR(225),
Reg_date DATE
);
CREATE TABLE IssueStatus(
Issue_Id INT PRIMARY KEY,
Issued_cust INT,
Issued_book_name VARCHAR(100),
Issued_date DATE,
Isbn_book VARCHAR(20),
FOREIGN KEY(Issued_cust)REFERENCES Customer(Customer_Id),
FOREIGN KEY(Isbn_book)
REFERENCES Books(ISBN)
);
CREATE TABLE ReturnStatus(
Return_Id INT PRIMARY KEY,
Return_book_name VARCHAR(100),
Return_date DATE,
Isbn_book2 VARCHAR(20),
FOREIGN KEY(Isbn_book2)
REFERENCES Books(ISBN)
);
