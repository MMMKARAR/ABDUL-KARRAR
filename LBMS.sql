create database LBMS;
USE LBMS;
CREATE TABLE Branch (
Branch_no INT PRIMARY KEY,
Manager_Id INT,
Branch_address VARCHAR(255),
Contact_no VARCHAR(15)
);
INSERT INTO Branch VALUES 
(1, 11, '15 Park Ave', '555-1001'),
(2, 12, '27 River Rd', '555-2002'),
(3, 13, '48 Hill St', '555-3003'),
(4, 14, '59 Greenway Ln', '555-4004'),
(5, 15, '73 Meadow Dr', '555-5005'),
(6, 16, '86 Sunset Blvd', '555-6006'),
(7, 17, '92 Forest Path', '555-7007'),
(8, 18, '11 Ocean View', '555-8008'),
(9, 19, '35 Valley Rd', '555-9010'),
(10, 20, '50 Lake St', '555-1010'),
(11, 21, '62 Highland Ave', '555-1111'),
(12, 22, '74 Birchwood Dr', '555-1212'),
(13, 23, '89 Maplewood Ave', '555-1313'),
(14, 24, '102 Cedar Ridge', '555-1414'),
(15, 25, '115 Elm Circle', '555-1515'),
(16, 26, '128 Pinewood Dr', '555-1616'),
(17, 27, '143 Aspen Grove', '555-1717'),
(18, 28, '157 Oak Park', '555-1818'),
(19, 29, '169 Magnolia Ct', '555-1919'),
(20, 30, '183 Sycamore Ln', '555-2020'),
(21, 31, '198 Willow Ct', '555-2121'),
(22, 32, '210 Chestnut Way', '555-2222'),
(23, 33, '224 Laurel Ln', '555-2323'),
(24, 34, '238 Juniper Dr', '555-2424'),
(25, 35, '252 Hawthorn Ave', '555-2525');
SHOW CREATE TABLE Employee;
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE Branch;
SET FOREIGN_KEY_CHECKS = 1;
DELETE FROM Branch;
DELETE FROM Employee;  
TRUNCATE TABLE Branch;
INSERT INTO Employee VALUES
(1, 'Alice Morgan', 'Supervisor', 62000, 3),
(2, 'Ethan Carter', 'Team Lead', 47000, 5),
(3, 'Olivia Bennett', 'Archivist', 41000, 2),
(4, 'Liam Foster', 'Assistant Archivist', 35000, 4),
(5, 'Sophia Hughes', 'Library Assistant', 31000, 1),
(6, 'Noah Scott', 'Library Clerk', 29000, 6),
(7, 'Ava Reed', 'Tech Support', 43000, 3),
(8, 'Mason Turner', 'Library Assistant', 32000, 4),
(9, 'Isabella Campbell', 'Library Clerk', 30000, 2),
(10, 'Elijah Cook', 'Supervisor', 64000, 5),
(11, 'Emma Myers', 'Archivist', 44000, 1),
(12, 'James Ward', 'Assistant Archivist', 35500, 6),
(13, 'Amelia Brooks', 'Library Assistant', 31500, 2),
(14, 'William Hayes', 'Library Clerk', 29500, 4),
(15, 'Charlotte Gray', 'Team Lead', 46000, 6),
(16, 'Benjamin Ross', 'Tech Support', 42500, 1),
(17, 'Mia Phillips', 'Supervisor', 63000, 4),
(18, 'Lucas Powell', 'Library Assistant', 31000, 5),
(19, 'Harper Simmons', 'Archivist', 43000, 3),
(20, 'Henry Peterson', 'Library Clerk', 29500, 1),
(21, 'Ella Howard', 'Assistant Archivist', 37000, 6),
(22, 'Alexander Collins', 'Library Clerk', 28500, 2),
(23, 'Isla Kelly', 'Supervisor', 62000, 1),
(24, 'Jacob Mitchell', 'Archivist', 42000, 4),
(25, 'Lily Adams', 'Library Assistant', 38000, 3);
CREATE TABLE Books (
    ISBN VARCHAR(20) PRIMARY KEY,
    Book_title VARCHAR(255),
    Category VARCHAR(100),
    Rental_Price DECIMAL(5, 2),
    Status VARCHAR(3),
    Author VARCHAR(100),
    Publisher VARCHAR(100)
);
INSERT INTO Books VALUES 
('978-0-13-485228-5', 'SQL Essentials', 'Database', 16.99, 'Yes', 'Author Z', 'Publisher Z'),
('978-1-23456-789-0', 'Data Modeling Basics', 'Database', 18.49, 'No', 'Author Y', 'Publisher Y'),
('978-0-765-43210-9', 'Database Optimization', 'Database', 19.99, 'Yes', 'Author X', 'Publisher X'),
('978-0-111-22222-3', 'Advanced Database Techniques', 'Database', 27.99, 'No', 'Author W', 'Publisher W'),
('978-1-567-89012-3', 'Computer Science Principles', 'Computer Science', 36.49, 'Yes', 'Author V', 'Publisher V'),
('978-0-987-65432-1', 'Python Programming Basics', 'Programming', 46.49, 'Yes', 'Author U', 'Publisher U'),
('978-1-789-01234-5', 'Mastering Python', 'Programming', 52.99, 'No', 'Author T', 'Publisher T'),
('978-0-654-32109-8', 'Algorithmic Thinking', 'Computer Science', 31.49, 'Yes', 'Author S', 'Publisher S'),
('978-0-543-21098-7', 'AI for Beginners', 'Computer Science', 58.99, 'No', 'Author R', 'Publisher R'),
('978-1-432-10987-6', 'Networking Fundamentals', 'Computer Networks', 23.49, 'Yes', 'Author Q', 'Publisher Q'),
('978-0-321-09876-5', 'Cybersecurity Essentials', 'Computer Networks', 34.99, 'No', 'Author P', 'Publisher P'),
('978-1-210-98765-4', 'Systems Architecture', 'Computer Science', 42.99, 'Yes', 'Author O', 'Publisher O'),
('978-0-987-12345-6', 'Linux Fundamentals', 'Operating Systems', 40.49, 'No', 'Author N', 'Publisher N'),
('978-1-876-54321-9', 'JavaScript Fundamentals', 'Programming', 24.49, 'Yes', 'Author M', 'Publisher M'),
('978-0-765-12345-8', 'Building Web APIs', 'Web Development', 32.99, 'No', 'Author L', 'Publisher L'),
('978-1-234-56789-0', 'Python Data Analysis', 'Programming', 28.99, 'Yes', 'Author K', 'Publisher K'),
('978-0-123-45678-9', 'Computer Networking Basics', 'Computer Networks', 50.49, 'Yes', 'Author J', 'Publisher J'),
('978-1-987-65432-2', 'Advanced MySQL', 'Database', 56.99, 'No', 'Author I', 'Publisher I'),
('978-0-765-43210-8', 'Algorithms Unlocked', 'Computer Science', 68.99, 'Yes', 'Author H', 'Publisher H'),
('978-1-345-67890-1', 'Shell Scripting 101', 'Operating Systems', 46.99, 'No', 'Author G', 'Publisher G'),
('978-0-987-23456-7', 'Node.js for Developers', 'Web Development', 35.49, 'Yes', 'Author F', 'Publisher F'),
('978-1-765-43210-3', 'The Complete Programmer', 'Programming', 41.99, 'No', 'Author E', 'Publisher E'),
('978-0-543-21098-6', 'Operating Systems Explained', 'Operating Systems', 45.99, 'Yes', 'Author D', 'Publisher D'),
('978-1-234-56789-1', 'DBMS Fundamentals', 'Database', 51.99, 'Yes', 'Author C', 'Publisher C'),
('978-0-123-45678-8', 'Intro to Computer Science', 'Computer Science', 63.99, 'No', 'Author B', 'Publisher B');
CREATE TABLE Customer (
	Customer_Id INT PRIMARY KEY,
	Customer_name VARCHAR(100),
	Customer_address VARCHAR(255),
	Reg_date DATE
);
INSERT INTO Customer VALUES 
(1, 'Liam Carter', '456 Aspen St', '2022-12-01'),
(2, 'Sophia Evans', '789 Willow St', '2023-11-02'),
(3, 'Ethan Parker', '321 Cypress St', '2024-10-03'),
(4, 'Mia Barnes', '654 Sequoia St', '2021-09-04'),
(5, 'Noah Russell', '123 Dogwood St', '2022-08-05'),
(6, 'Emma Foster', '987 Magnolia St', '2023-07-06'),
(7, 'Lucas Hayes', '456 Hawthorn St', '2024-06-07'),
(8, 'Olivia Brooks', '789 Chestnut St', '2021-05-08'),
(9, 'Ava Griffin', '321 Juniper St', '2022-04-09'),
(10, 'Mason Cooper', '654 Poplar St', '2023-03-10'),
(11, 'Isabella Fisher', '123 Laurel St', '2024-02-11'),
(12, 'Elijah Morgan', '987 Aspen St', '2021-01-12'),
(13, 'Amelia Torres', '456 Cedar St', '2022-12-13'),
(14, 'Logan Jenkins', '789 Birch St', '2023-11-14'),
(15, 'Charlotte Simmons', '321 Oak St', '2024-10-15'),
(16, 'James Peterson', '654 Willow St', '2021-09-16'),
(17, 'Harper Hughes', '123 Maple Ave', '2022-08-17'),
(18, 'Benjamin Reed', '987 Pine St', '2023-07-18'),
(19, 'Ella Ward', '456 Elmwood St', '2024-06-19'),
(20, 'Alexander Rivera', '789 Fir St', '2021-05-20'),
(21, 'Abigail Cook', '321 Spruce St', '2022-04-21'),
(22, 'Sebastian Campbell', '654 Redwood St', '2023-03-22'),
(23, 'Zoe Mitchell', '123 Sequoia Ave', '2024-02-23'),
(24, 'Daniel Adams', '987 Dogwood St', '2021-01-24'),
(25, 'Lily Bell', '456 Cedar Ave', '2022-12-25');
CREATE TABLE IssuedStatus (
	Issue_Id INT PRIMARY KEY,
	Issued_cust INT,
	Issued_book_name VARCHAR(255),
	Issue_date DATE,
	Isbn_book VARCHAR(20),
	FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
	FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);
INSERT INTO IssuedStatus VALUES
(1, 1, 'SQL Essentials', '2022-01-10', '978-0-13-485228-5'),
(2, 2, 'Data Modeling Basics', '2023-02-11', '978-1-23456-789-0'),
(3, 3, 'Database Optimization', '2024-03-12', '978-0-765-43210-9'),
(4, 4, 'Advanced Database Techniques', '2021-04-13', '978-0-111-22222-3'),
(5, 5, 'Computer Science Principles', '2022-05-14', '978-1-567-89012-3'),
(6, 6, 'Python Programming Basics', '2023-06-15', '978-0-987-65432-1'),
(7, 7, 'Mastering Python', '2024-07-16', '978-1-789-01234-5'),
(8, 8, 'Algorithmic Thinking', '2021-08-17', '978-0-654-32109-8'),
(9, 9, 'AI for Beginners', '2022-09-18', '978-0-543-21098-7'),
(10, 10, 'Networking Fundamentals', '2023-10-19', '978-1-432-10987-6'),
(11, 11, 'Cybersecurity Essentials', '2024-11-20', '978-0-321-09876-5'),
(12, 12, 'Systems Architecture', '2021-12-21', '978-1-210-98765-4'),
(13, 13, 'Linux Fundamentals', '2022-01-22', '978-0-987-12345-6'),
(14, 14, 'JavaScript Fundamentals', '2023-02-23', '978-1-876-54321-9'),
(15, 15, 'Building Web APIs', '2024-03-24', '978-0-765-12345-8'),
(16, 16, 'Python Data Analysis', '2021-04-25', '978-1-234-56789-0'),
(17, 17, 'Computer Networking Basics', '2022-05-26', '978-0-123-45678-9'),
(18, 18, 'Advanced MySQL', '2023-06-27', '978-1-987-65432-2'),  
(19, 19, 'Algorithms Unlocked', '2024-07-28', '978-0-765-43210-8'),
(20, 20, 'Shell Scripting 101', '2021-08-29', '978-1-345-67890-1'),
(21, 21, 'Node.js for Developers', '2022-09-30', '978-0-987-23456-7'),
(22, 22, 'The Complete Programmer', '2023-10-31', '978-1-765-43210-3'),
(23, 23, 'Operating Systems Explained', '2024-11-01', '978-0-543-21098-6'),
(24, 24, 'DBMS Fundamentals', '2021-12-02', '978-1-234-56789-1'),
(25, 25, 'Intro to Computer Science', '2022-01-03', '978-0-123-45678-8');
SELECT Isbn_book
FROM IssuedStatus
WHERE Isbn_book NOT IN (SELECT ISBN FROM Books);
INSERT INTO Books VALUES 
('978-0-543-21098-6', 'Operating Systems Explained', 'Operating Systems', 45.99, 'Yes', 'Author D', 'Publisher D');
UPDATE Books 
SET ISBN = '978-1-987-65432-2' 
WHERE Book_title = 'Advanced MySQL';
SELECT Isbn_book
FROM IssueStatus
WHERE Isbn_book NOT IN (SELECT ISBN FROM Books);
SELECT ISBN, COUNT(*) 
FROM Books 
GROUP BY ISBN 
HAVING COUNT(*) > 1;
UPDATE IssueStatus 
SET Isbn_book = '978-1-987-65432-2' 
WHERE Issue_Id = 18;
INSERT INTO IssuedStatus VALUES
(1, 1, 'SQL Essentials', '2022-01-10', '978-0-13-485228-5'),
(2, 2, 'Data Modeling Basics', '2023-02-11', '978-1-23456-789-0'),
(3, 3, 'Database Optimization', '2024-03-12', '978-0-765-43210-9'),
(4, 4, 'Advanced Database Techniques', '2021-04-13', '978-0-111-22222-3'),
(5, 5, 'Computer Science Principles', '2022-05-14', '978-1-567-89012-3'),
(6, 6, 'Python Programming Basics', '2023-06-15', '978-0-987-65432-1'),
(7, 7, 'Mastering Python', '2024-07-16', '978-1-789-01234-5'),
(8, 8, 'Algorithmic Thinking', '2021-08-17', '978-0-654-32109-8'),
(9, 9, 'AI for Beginners', '2022-09-18', '978-0-543-21098-7'),
(10, 10, 'Networking Fundamentals', '2023-10-19', '978-1-432-10987-6'),
(11, 11, 'Cybersecurity Essentials', '2024-11-20', '978-0-321-09876-5'),
(12, 12, 'Systems Architecture', '2021-12-21', '978-1-210-98765-4'),
(13, 13, 'Linux Fundamentals', '2022-01-22', '978-0-987-12345-6'),
(14, 14, 'JavaScript Fundamentals', '2023-02-23', '978-1-876-54321-9'),
(15, 15, 'Building Web APIs', '2024-03-24', '978-0-765-12345-8'),
(16, 16, 'Python Data Analysis', '2021-04-25', '978-1-234-56789-0'),
(17, 17, 'Computer Networking Basics', '2022-05-26', '978-0-123-45678-9'),
(18, 18, 'Advanced MySQL', '2023-06-27', '978-1-987-65432-2'),  
(19, 19, 'Algorithms Unlocked', '2024-07-28', '978-0-765-43210-8'),
(20, 20, 'Shell Scripting 101', '2021-08-29', '978-1-345-67890-1'),
(21, 21, 'Node.js for Developers', '2022-09-30', '978-0-987-23456-7'),
(22, 22, 'The Complete Programmer', '2023-10-31', '978-1-765-43210-3'),
(23, 23, 'Operating Systems Explained', '2024-11-01', '978-0-543-21098-6'),
(24, 24, 'DBMS Fundamentals', '2021-12-02', '978-1-234-56789-1'),
(25, 25, 'Intro to Computer Science', '2022-01-03', '978-0-123-45678-8');
CREATE TABLE ReturnStatus (
Return_Id INT PRIMARY KEY,
Return_cust INT,
Return_book_name VARCHAR(255),
Return_date DATE,
Isbn_book2 VARCHAR(20),
FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);
INSERT INTO ReturnStatus VALUES
(1, 1, 'SQL Essentials', '2022-01-10', '978-0-13-485228-5'),
(2, 2, 'Data Modeling Basics', '2023-02-11', '978-1-23456-789-0'),
(3, 3, 'Database Optimization', '2024-03-12', '978-0-765-43210-9'),
(4, 4, 'Advanced Database Techniques', '2021-04-13', '978-0-111-22222-3'),
(5, 5, 'Computer Science Principles', '2022-05-14', '978-1-567-89012-3'),
(6, 6, 'Python Programming Basics', '2023-06-15', '978-0-987-65432-1'),
(7, 7, 'Mastering Python', '2024-07-16', '978-1-789-01234-5'),
(8, 8, 'Algorithmic Thinking', '2021-08-17', '978-0-654-32109-8'),
(9, 9, 'AI for Beginners', '2022-09-18', '978-0-543-21098-7'),
(10, 10, 'Networking Fundamentals', '2023-10-19', '978-1-432-10987-6'),
(11, 11, 'Cybersecurity Essentials', '2024-11-20', '978-0-321-09876-5'),
(12, 12, 'Systems Architecture', '2021-12-21', '978-1-210-98765-4'),
(13, 13, 'Linux Fundamentals', '2022-01-22', '978-0-987-12345-6'),
(14, 14, 'JavaScript Fundamentals', '2023-02-23', '978-1-876-54321-9'),
(15, 15, 'Building Web APIs', '2024-03-24', '978-0-765-12345-8'),
(16, 16, 'Python Data Analysis', '2021-04-25', '978-1-234-56789-0'),
(17, 17, 'Computer Networking Basics', '2022-05-26', '978-0-123-45678-9'),
(18, 18, 'Advanced MySQL', '2023-06-27', '978-1-987-65432-2'),  
(19, 19, 'Algorithms Unlocked', '2024-07-28', '978-0-765-43210-8'),
(20, 20, 'Shell Scripting 101', '2021-08-29', '978-1-345-67890-1'),
(21, 21, 'Node.js for Developers', '2022-09-30', '978-0-987-23456-7'),
(22, 22, 'The Complete Programmer', '2023-10-31', '978-1-765-43210-3'),
(23, 23, 'Operating Systems Explained', '2024-11-01', '978-0-543-21098-6'),
(24, 24, 'DBMS Fundamentals', '2021-12-02', '978-1-234-56789-1'),
(25, 25, 'Intro to Computer Science', '2022-01-03', '978-0-123-45678-8');
SELECT * FROM Branch;
SELECT * FROM Employee;
SELECT * FROM Books;
SELECT * FROM Customer;
SELECT * FROM IssuedStatus;  
SELECT * FROM ReturnStatus;    
SELECT Book_title, Category, Rental_Price
FROM Books WHERE Status = 'Yes';
SELECT Emp_Id, Emp_name,
Salary FROM Employee
ORDER BY Salary DESC;
SELECT IssueStatus.Issued_cust,
IssueStatus.Issued_book_name,
Customer.Customer_name
FROM IssueStatus LEFT JOIN Customer
ON IssueStatus.Issued_cust = Customer.Customer_Id;  
SELECT Category,
COUNT(*) AS NoOfBooks
FROM Books GROUP BY
Category;
SELECT Emp_name,
Position, Salary
FROM Employee WHERE
Salary > 50000;
SELECT Customer.Reg_date, Customer.Customer_name,
IssueStatus.Issued_book_name FROM Customer
LEFT JOIN IssueStatus ON
Customer.Customer_Id = IssueStatus.Issued_cust
WHERE Customer.Reg_date < '2022-01-01';   
SELECT Branch_no,
COUNT(*) AS NoOfEmployees
FROM Employee
GROUP BY Branch_no;
SELECT Customer.Customer_name,
IssueStatus.Issued_book_name,
IssueStatus.Issue_date
FROM Customer LEFT JOIN IssueStatus
ON Customer.Customer_Id = IssueStatus.Issued_cust
WHERE IssueStatus.Issue_date
BETWEEN '2023-11-13' AND '2021-04-20';  
SELECT ISBN, Book_title, Author
FROM Books WHERE Category = 'Database'
ORDER BY ISBN;
SELECT Branch_no,
COUNT(*) AS NoOfEmployees
FROM Employee
GROUP BY Branch_no
HAVING COUNT(*) > 4;
SELECT Employee.Emp_name,
Employee.Branch_no,
Branch.Branch_address
FROM Employee LEFT JOIN Branch ON
Employee.Branch_no = Branch.Branch_no
WHERE Employee.Position = 'Manager'
ORDER BY Branch_no;  
SELECT Customer.Customer_name, Books.Book_title,
Books.Rental_Price
FROM Customer INNER JOIN IssueStatus
ON Customer.Customer_Id = IssueStatus.Issued_cust
INNER JOIN Books ON
IssueStatus.Isbn_book = Books.ISBN
WHERE Books.Rental_Price > 25;     
