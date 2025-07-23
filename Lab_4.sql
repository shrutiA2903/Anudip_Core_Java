Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 16
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use anp_d1485
Database changed



----------------------------------------------------------CREATE TABLE----------------------------------------------------------



mysql> create table student_1(student_id int(20) primary key,name varchar(10) not null, address varchar(50) not null, age int(10) not null);
Query OK, 0 rows affected, 2 warnings (0.05 sec)

mysql> desc student_1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | NO   | PRI | NULL    |       |
| name       | varchar(10) | NO   |     | NULL    |       |
| address    | varchar(50) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.02 sec)



----------------------------------------------------------INSERT DATA----------------------------------------------------------




mysql> insert into student_1 values(101, 'Shruti', 'Ahmedabad', 22),(102, 'Jeel', 'Ahmedabad', 20),(103, 'Hetvi', 'Surat', 25),(104, 'Trisha', 'Surat', 34),(105, 'Janvi', 'Ahmedabad', 15);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student_1;
+------------+--------+-----------+-----+
| student_id | name   | address   | age |
+------------+--------+-----------+-----+
|        101 | Shruti | Ahmedabad |  22 |
|        102 | Jeel   | Ahmedabad |  20 |
|        103 | Hetvi  | Surat     |  25 |
|        104 | Trisha | Surat     |  34 |
|        105 | Janvi  | Ahmedabad |  15 |
+------------+--------+-----------+-----+
5 rows in set (0.01 sec)



----------------------------------------------------------(1.) SUM()---------------------------------------------------------




mysql> select sum(age) from student_1;
+----------+
| sum(age) |
+----------+
|      116 |
+----------+
1 row in set (0.00 sec)



----------------------------------------------------------(2.) AVG()----------------------------------------------------------




mysql> select avg(age) from student_1;
+----------+
| avg(age) |
+----------+
|  23.2000 |
+----------+
1 row in set (0.00 sec)



----------------------------------------------------------(3.) MIN()----------------------------------------------------------



mysql> select min(age) from student_1;
+----------+
| min(age) |
+----------+
|       15 |
+----------+
1 row in set (0.00 sec)



----------------------------------------------------------(4.) MAX()----------------------------------------------------------



mysql> select max(age) from student_1;
+----------+
| max(age) |
+----------+
|       34 |
+----------+
1 row in set (0.00 sec)



----------------------------------------------------------(5.) COUNT()----------------------------------------------------------




mysql> select count(*) from student_1;
+----------+
| count(*) |
+----------+
|        5 |
+----------+
1 row in set (0.02 sec)

mysql>
