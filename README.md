MYSQL PROJECT - LIBRARY MANAGEMENT SYSTEM

Topic : Library Management System Created by: ABDUL KARRAR

I am going to build a project named Library Management System. It keeps track of all information about books in the library, their cost, status and total number of books available in the library.

1.Retrieve the book title, category, and rental price of all available books.
SELECT Book_title, Category, Rental_Price FROM Books WHERE Status = 'Yes';

![SELECT book title category rental prc](https://github.com/user-attachments/assets/7e1df284-ab2f-4f14-9615-042a7a56c16d)

2.List the employee names and their respective salaries in descending order of salary.
SELECT Emp_Id, Emp_name, Salary FROM Employee ORDER BY Salary DESC;

![SELECT employ id name salary](https://github.com/user-attachments/assets/9fb7438e-5b3f-47dc-b2c3-faa9ca8055d5)

3.Retrieve the book titles and the corresponding customers who have issued those books
SELECT IssueStatus.Issued_cust,
IssueStatus.Issued_book_name,
Customer.Customer_name
FROM IssueStatus LEFT JOIN Customer
ON IssueStatus.Issued_cust = Customer.Customer_Id;

![SELECT IssueStatus Issued_cust](https://github.com/user-attachments/assets/e94d1f3e-bd87-4036-ab3e-13acb0b2b0b0)

4.Display the total count of books in each category.
SELECT Category, COUNT(*) AS NoOfBooks FROM Books GROUP BY Category;

![select category count group](https://github.com/user-attachments/assets/7e4bc320-b624-45cf-8845-297e6e2a492a)

5.Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000.
SELECT Emp_name, Position, Salary FROM Employee WHERE Salary > 50000;

![SELECT employee name position salary](https://github.com/user-attachments/assets/b662bff2-21a9-4523-99e4-af0867fb8892)

6.Display the branch numbers and the total count of employees in each branch.
SELECT Branch_no, COUNT(*) AS NoOfEmployees FROM Employee GROUP BY Branch_no;

![select br noof emply](https://github.com/user-attachments/assets/aaf9d2df-eba5-44d4-bc4d-8a83f643294c)

7. Retrieve book titles from books table containing database.
SELECT ISBN, Book_title, Author FROM Books WHERE Category = 'Database' ORDER BY ISBN;

![SELECT ISBN BK TITLE](https://github.com/user-attachments/assets/befb604b-114b-423d-ba47-4f7705f24749)

8.Retrieve the branch numbers along with the count of employees for branches having more than 4 employees.
SELECT Branch_no, COUNT() AS NoOfEmployees FROM Employee GROUP BY Branch_no HAVING COUNT() > 4;

![select br noof emply](https://github.com/user-attachments/assets/7a02dbf4-3677-4432-ba9d-07b572498181)

9.Retrieve the names of employees who manage branches and their respective branch addresses.
SELECT Employee.Emp_name, Employee.Branch_no, Branch.Branch_address FROM Employee LEFT JOIN Branch ON Employee.Branch_no = Branch.Branch_no WHERE Employee.Position = 'Manager' ORDER BY Branch_no;

![122732](https://github.com/user-attachments/assets/ca66d973-8c88-4dc4-bedb-38dfaf2acc0d)

10.SELECT Customer.Customer_name, Books.Book_title,
Books.Rental_Price
FROM Customer INNER JOIN IssueStatus
ON Customer.Customer_Id = IssueStatus.Issued_cust
INNER JOIN Books ON
IssueStatus.Isbn_book = Books.ISBN
WHERE Books.Rental_Price > 15;  

![SELECT book title category rental prc](https://github.com/user-attachments/assets/302ab30c-67d1-4942-9d87-87b4ddc76646)

11.Retrieve all the book details
SELECT * FROM Books;
![SELECT FROM books](https://github.com/user-attachments/assets/176009b7-f8ec-4838-a9a0-074469f53dcf)
