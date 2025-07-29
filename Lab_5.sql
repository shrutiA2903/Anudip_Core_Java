---------------------------------------------------------------------------------QUESTION-1-------------------------------------------------------------------------------------

1.Consider two tables, customers and orders, with the following structures:
 Customers Table:
 customer_id (Primary Key)
 first_name
 Last_name
 Orders Table:
 order_id (Primary Key)
 customer_id (Foreign Key)
 order_date
 Total_amount
 ConsiderWrite an SQL query to retrieve the first and last names of customers along with the
 order date and total amount of their orders. Use an INNER JOIN to connect the two
 tables.


-----------------------------------------------------------------------------CREATE TABLE CUSTOMER-------------------------------------------------------------------------------


mysql> create table customer(id int(5)primary key not null,name varchar(10)not null, address varchar(30)not null,city varchar(20)not null, country varchar(20)not null);
Query OK, 0 rows affected, 1 warning (0.15 sec)

mysql> desc customer;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | NO   | PRI | NULL    |       |
| name    | varchar(10) | NO   |     | NULL    |       |
| address | varchar(30) | NO   |     | NULL    |       |
| city    | varchar(20) | NO   |     | NULL    |       |
| country | varchar(20) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+

mysql> insert into customer values(1,'shruti','new ranip','Ahmedabad','india');
mysql> insert into customer values(2,'jeel','c.g. road','Surat','india'),(3,'sujal','patil road','mumbai','india');
Query OK, 2 rows affected (0.00 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> insert into customer values(4,'janvi','cp road','Surat','india'),(5,'anaya','nagar road','ahmedabad','india');
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+----+--------+------------+-----------+---------+
| id | name   | address    | city      | country |
+----+--------+------------+-----------+---------+
|  1 | shruti | new ranip  | Ahmedabad | india   |
|  2 | jeel   | c.g. road  | Surat     | india   |
|  3 | sujal  | patil road | mumbai    | india   |
|  4 | janvi  | cp road    | Surat     | india   |
|  5 | anaya  | nagar road | ahmedabad | india   |
+----+--------+------------+-----------+---------+


-----------------------------------------------------------------------------CREATE TABLE ORDERS-------------------------------------------------------------------------------


mysql> create table orders(order_id int primary key not null,order_date varchar(30)not null,total_amount int(30)not null, id int, foreign key(id) references customer(id));
Query OK, 0 rows affected, 1 warning (0.08 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| order_id     | int         | NO   | PRI | NULL    |       |
| order_date   | varchar(30) | NO   |     | NULL    |       |
| total_amount | int         | NO   |     | NULL    |       |
| id           | int         | YES  | MUL | NULL    |       |
+--------------+-------------+------+-----+---------+-------+

mysql>insert into orders values(1,'15/2/2024',3500,4),(2,'18/04/2024',10000,5),(3,'13/02/2024',30000,2),(4,'03/08/2024',15000,4),(5,'25/03/2024',3000,1),(6,'22/05/2024',16000,1);
Query OK, 6 rows affected (0.03 sec)
Records: 6  Duplicates: 0  Warnings: 0

mysql> select * from orders;
+----------+------------+--------------+------+
| order_id | order_date | total_amount | id   |
+----------+------------+--------------+------+
|        1 | 15/2/2024  |         3500 |    4 |
|        2 | 18/04/2024 |        10000 |    5 |
|        3 | 13/02/2024 |        30000 |    2 |
|        4 | 03/08/2024 |        15000 |    4 |
|        5 | 25/03/2024 |         3000 |    1 |
|        6 | 22/05/2024 |        16000 |    1 |
+----------+------------+--------------+------+


------------------------------------------------------------------------------------ANSWER-1-------------------------------------------------------------------------------------------

Write an SQL query to retrieve the first and last names of customers along with the order date and total amount of their orders. Use an INNER JOIN to connect the two tables.


mysql> select name, order_date, total_amount from customer join orders on customer.id=orders.order_id;
+--------+------------+--------------+
| name   | order_date | total_amount |
+--------+------------+--------------+
| shruti | 15/2/2024  |         3500 |
| jeel   | 18/04/2024 |        10000 |
| sujal  | 13/02/2024 |        30000 |
| janvi  | 03/08/2024 |        15000 |
| anaya  | 25/03/2024 |         3000 |
+--------+------------+--------------+
5 rows in set (0.00 sec)


---------------------------------------------------------------------------------QUESTION-2-------------------------------------------------------------------------------------

two tables, departments and employees, with the following structures:
 Departments Table:
 department_id (Primary Key)
 department_name
 Employees Table:
 employee_id (Primary Key)
 first_name
 last_name
 department_id (Foreign Key)
 Write an SQL query to retrieve a list of all departments and the names of employees
 who belong to each department. Use a LEFT JOIN to include departments that have no
 employees


-----------------------------------------------------------------------------CREATE TABLE DEPATMENT-------------------------------------------------------------------------------



mysql> create table department( dep_id int not null primary key, dep_name varchar(30)not null);
Query OK, 0 rows affected (0.06 sec)

mysql> desc department;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| dep_id   | int         | NO   | PRI | NULL    |       |
| dep_name | varchar(30) | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into department values(1,'HR'),(2,'IT'),(3,'Finance'),(4,'Accountant'),(5,'Marketing');
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from department;
+--------+------------+
| dep_id | dep_name   |
+--------+------------+
|      1 | HR         |
|      2 | IT         |
|      3 | Finance    |
|      4 | Accountant |
|      5 | Marketing  |
+--------+------------+
5 rows in set (0.00 sec)


-----------------------------------------------------------------------------CREATE TABLE EMPLOYEE-------------------------------------------------------------------------------



mysql> create table emp(emp_id int primary key not null,emp_name varchar(30)not null, dep_id int, foreign key(dep_id) references department(dep_id));
Query OK, 0 rows affected (0.10 sec)

mysql> desc emp;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | int         | NO   | PRI | NULL    |       |
| emp_name | varchar(30) | NO   |     | NULL    |       |
| dep_id   | int         | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)


mysql> insert into emp values(1,'Shruti',1),(2,'Hetvi',2),(3,'Jeel',1),(4,'Sujal',null),(5,'Trisha',4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from emp;
+--------+----------+--------+
| emp_id | emp_name | dep_id |
+--------+----------+--------+
|      1 | Shruti   |      1 |
|      2 | Hetvi    |      2 |
|      3 | Jeel     |      1 |
|      4 | Sujal    |   NULL |
|      5 | Trisha   |      4 |
+--------+----------+--------+


------------------------------------------------------------------------------------ANSWER-2-------------------------------------------------------------------------------------------

 Write an SQL query to retrieve a list of all departments and the names of employees who belong to each department. Use a LEFT JOIN to include departments that have no employees.



mysql> select dep_name, emp_name from department left join emp on department.dep_id = emp.dep_id;
+------------+----------+
| dep_name   | emp_name |
+------------+----------+
| HR         | Shruti   |
| HR         | Jeel     |
| IT         | Hetvi    |
| Finance    | NULL     |
| Accountant | Trisha   |
+------------+----------+
5 rows in set (0.01 sec)
