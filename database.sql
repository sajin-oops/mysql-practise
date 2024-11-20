mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sajin              |
| sajinak            |
| world              |
+--------------------+
6 rows in set (0.12 sec)

mysql> use sajinak;
Database changed
mysql> show tables;
+-------------------+
| Tables_in_sajinak |
+-------------------+
| student           |
+-------------------+
1 row in set (0.08 sec)

mysql> desc student;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| name     | varchar(30) | NO   |     | NULL    |       |
| regno    | varchar(20) | YES  | UNI | NULL    |       |
| email    | varchar(30) | YES  | UNI | NULL    |       |
| password | varchar(30) | NO   |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> select*from student;
+-----------+-------+-----------------------+----------+
| name      | regno | email                 | password |
+-----------+-------+-----------------------+----------+
| sajin a.k | 111   | sajinak2003@gmail.com | 12345    |
+-----------+-------+-----------------------+----------+
1 row in set (0.00 sec)

mysql> insert into student values(
    -> "nijas a.k",112,"nijas@23gmail.com",12212);
Query OK, 1 row affected (0.03 sec)

mysql> select * from student;
+-----------+-------+-----------------------+----------+
| name      | regno | email                 | password |
+-----------+-------+-----------------------+----------+
| sajin a.k | 111   | sajinak2003@gmail.com | 12345    |
| nijas a.k | 112   | nijas@23gmail.com     | 12212    |
+-----------+-------+-----------------------+----------+
2 rows in set (0.00 sec)

mysql> insert into student values(
    -> "aaron",122,"aaron2@gmail.com",13332);
Query OK, 1 row affected (0.01 sec)

mysql> insert into student values(
    -> "lijin",123,"lijin*@gmail.com",14444);
Query OK, 1 row affected (0.01 sec)

mysql> select*from student;
+-----------+-------+-----------------------+----------+
| name      | regno | email                 | password |
+-----------+-------+-----------------------+----------+
| sajin a.k | 111   | sajinak2003@gmail.com | 12345    |
| nijas a.k | 112   | nijas@23gmail.com     | 12212    |
| aaron     | 122   | aaron2@gmail.com      | 13332    |
| lijin     | 123   | lijin*@gmail.com      | 14444    |
+-----------+-------+-----------------------+----------+
4 rows in set (0.00 sec)

mysql>


--condition

mysql> select name,regno from student where regno = 111;
+-----------+-------+
| name      | regno |
+-----------+-------+
| sajin a.k | 111   |
+-----------+-------+
1 row in set (0.00 sec)

mysql>