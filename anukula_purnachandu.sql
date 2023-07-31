-- 1 Write a SQL query to how many products were sold in February 2019.
SELECT COUNT(*) AS
products_sold FROM ecommerce
WHERE (EXTRACT(MONTH FROM
TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')))  = 2 and (EXTRACT(YEAR FROM
TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')))  = 2019;

-- 2 Write a SQL query to Total sales amount in each year.
SELECT (EXTRACT(YEAR FROM
TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) AS YEAR ,SUM(price*quantity) as totalsale
FROM ecommerce
GROUP BY (EXTRACT(YEAR FROM
TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')));

-- 3 Write a SQL query to what was the total sales amount of each product month-wise basis in the year 2019.
SELECT  productname,
(EXTRACT(MONTH FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) AS month ,
SUM(price*quantity) AS sales
FROM ecommerce
WHERE (EXTRACT(YEAR FROM
TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) = 2019
GROUP BY productname,(EXTRACT(MONTH
FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')))
ORDER BY productname, (EXTRACT(MONTH
FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')));

-- 4 Write a SQL query to count the customers from each country.
SELECT country,COUNT(customerno) AS No_of_Customers FROM
ecommerce
GROUP BY country;


-- 5 Write a SQL query to list all the unique product names sold from each year.
SELECT DISTINCT (EXTRACT(YEAR FROM
TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) AS Year, productname
FROM ecommerce
ORDER BY
(EXTRACT(YEAR FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')));}
