{\rtf1\ansi\ansicpg1252\cocoartf2709
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
-- 1 Write a SQL query to how many products were sold in February 2019.\
SELECT COUNT(*) AS\
products_sold FROM ecommerce\
WHERE (EXTRACT(MONTH FROM\
TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')))  = 2 and (EXTRACT(YEAR FROM\
TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')))  = 2019;\
\
-- 2 Write a SQL query to Total sales amount in each year.\
SELECT (EXTRACT(YEAR FROM\
TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) AS YEAR ,SUM(price*quantity) as totalsale\
FROM ecommerce\
GROUP BY (EXTRACT(YEAR FROM\
TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')));\
\
-- 3 Write a SQL query to what was the total sales amount of each product month-wise basis in the year 2019.\
SELECT  productname,\
(EXTRACT(MONTH FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) AS month ,\
SUM(price*quantity) AS sales\
FROM ecommerce\
WHERE (EXTRACT(YEAR FROM\
TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) = 2019\
GROUP BY productname,(EXTRACT(MONTH\
FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')))\
ORDER BY productname, (EXTRACT(MONTH\
FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')));\
\
-- 4 Write a SQL query to count the customers from each country.\
SELECT country,COUNT(customerno) AS No_of_Customers FROM\
ecommerce\
GROUP BY country;\
\
\
-- 5 Write a SQL query to list all the unique product names sold from each year.\
SELECT DISTINCT (EXTRACT(YEAR FROM\
TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) AS Year, productname\
FROM ecommerce\
ORDER BY\
(EXTRACT(YEAR FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')));}
