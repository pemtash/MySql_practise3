show databases;
select * from northwind;
use northwind;
show tables;
select * from categories;
# DQL DATA QUERY LANGUAGE:  read data from the table
SELECT * FROM categories;
SELECT categoryid, picture from categories;
SELECT DISTINCT categoryid from categories;

# query data with a filter using a WHERE clause
SELECT * FROM CUSTOMERS;
SELECT companyname, contactname, city, phone FROM customers WHERE customerid= 'ALFKI';
# change the display of the column name using column alias
SELECT companyname as cn from customers;
select * from customers;
# count the number of rows in table
SELECT COUNT(*) FROM CUSTOMERS;
SELECT COUNT(*) FROM EMPLOYEES;
SELECT COUNT(*) FROM INFORMATION_SCHEMA.tables WHERE TABLE_SCHEMA = 'NORTHWIND';

# sorting a result set 
USE NORTHWIND;
SELECT * FROM CUSTOMERS;
SELECT companyname as cn, contacttitle as ct from customers
order by cn asc , ct desc;

# group rows in a result set:
select companyname from customers group by companyname;
#19:59:05	select companyname from customers group by comapanyname LIMIT 0, 2000	Error Code: 1054. Unknown column 'comapanyname' in 'group statement'	0.000 sec
SELECT companyname, customerid, contactname  FROM customers GROUP BY companyname, customerid, contactname;


# searching data using the like operator;
SELECT COMPANYNAME FROM CUSTOMERS WHERE COLUMN LIKE '% 12209 %';
#20:10:12	SELECT COMPANYNAME, CONTACTNAME FROM CUSTOMERS WHERE COLUMN LIKE '%maria anders%'	Error Code: 1064. You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'COLUMN LIKE '%maria anders%'' at line 1	0.000 sec
SELECT companyname, contacttitle
FROM customers
WHERE companyname LIKE '%Alfreds Futterkiste%';