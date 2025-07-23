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

mysql> alter table student_1 add gender varchar(30) not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student_1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | NO   | PRI | NULL    |       |
| name       | varchar(10) | NO   |     | NULL    |       |
| address    | varchar(50) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
| gender     | varchar(30) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> select * from student_1;
+------------+--------+-----------+-----+--------+
| student_id | name   | address   | age | gender |
+------------+--------+-----------+-----+--------+
|        101 | Shruti | Ahmedabad |  22 |        |
|        102 | Jeel   | Ahmedabad |  20 |        |
|        103 | Hetvi  | Surat     |  25 |        |
|        104 | Trisha | Surat     |  34 |        |
|        105 | Janvi  | Ahmedabad |  15 |        |
+------------+--------+-----------+-----+--------+
5 rows in set (0.00 sec)

mysql> alter table student_1 drop column gender;
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

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
5 rows in set (0.00 sec)

mysql> alter table student_1 drop primary key;
Query OK, 5 rows affected (0.08 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc student_1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | NO   |     | NULL    |       |
| name       | varchar(10) | NO   |     | NULL    |       |
| address    | varchar(50) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql>  alter table student_1 add constraint student_id primary key(student_id);
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

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

mysql> alter table student_1 rename column name to full_name;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from student_1;
+------------+-----------+-----------+-----+
| student_id | full_name | address   | age |
+------------+-----------+-----------+-----+
|        101 | Shruti    | Ahmedabad |  22 |
|        102 | Jeel      | Ahmedabad |  20 |
|        103 | Hetvi     | Surat     |  25 |
|        104 | Trisha    | Surat     |  34 |
|        105 | Janvi     | Ahmedabad |  15 |
+------------+-----------+-----------+-----+
5 rows in set (0.00 sec)

mysql> alter table student modify column full_name varchar(10) not null;
ERROR 1054 (42S22): Unknown column 'full_name' in 'product'
mysql> alter table student_1 modify column full_name varchar(10) not null;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student_1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| student_id | int         | NO   | PRI | NULL    |       |
| full_name  | varchar(10) | NO   |     | NULL    |       |
| address    | varchar(50) | NO   |     | NULL    |       |
| age        | int         | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql>