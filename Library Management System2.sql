SELECT Book_title,Category,Rental_price
FROM Books
WHERE Status='yes';
SELECT Emp_name,Salary
FROM Employee
ORDER BY Salary DESC;
SELECT B.Book_title,
C.Customer_name
FROM Books B
JOIN IssueStatus I ON B.ISBN=I.Isbn_book
JOIN Customer C ON I.Issued_cust=C.Customer_Id;
SELECT Category,COUNT(*) AS Total_Books
GROUP BY CATEGORY;
SELECT Emp_name,position
FROM Employee
WHERE Salary>50000;
SELECT Customer_name
FROM Customer
WHERE Reg_date<'2022-01-01'
AND Customer_Id NOT IN (SELECT Issued_cust FROM IssueStatus);
SELECT B.Branch_no,COUNT(E.Emp_Id)AS Total_Employees
FROM Branch B
JOIN Employee E ON B.Branch_no=E.Branch_no
GROUP BY B.Branch_no;
SELECT C.Customer_name
FROM Customer C
JOIN IssueStatus I ON C.Customer_Id=I.Issued_cust
WHERE MONTH(I.Issued_date)=6 AND YEAR(I.Issued_date)=2023;
SELECT Book_title
FROM Books
WHERE Book_title LIKE'%history';
SELECT B.Branch_no,
COUNT(E.Emp_Id)AS Total_Employees
FROM Branch B
JOIN Employee E ON B.Branch_no=E.Branch_no
GROUP BY B.Branch_no
HAVING COUNT(E.Emp_Id)>5;
SELECT E.Emp_name,
B.Branch_address
FROM Employee E
JOIN Branch B ON E.Branch_no=B.Branch_no;
SELECT C.Customer_name
FROM Customer C
 JOIN IssueStatus I ON C.Customer_Id=I.Issued_cust
 JOIN Books B ON I.Isbn_book=B.ISBN
 WHERE B.Rental_price>25;








