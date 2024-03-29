-- 1 Write a SQL query to how many products were sold in February 2019.
select count(Productname) as products_sold
from ecommerce
where purchase_date between '2019-02-01' and '2019-02-29';

-- 2 Write a SQL query to Totalsales amount in the each year.
SELECT (EXTRACT(YEAR FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) AS YEAR ,SUM(price*quantity) as totalsale
FROM ecommerce
GROUP BY (EXTRACT(YEAR FROM
TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')));

-- 3 Write a SQL query to what was the total sales amount of each product month-wise basis in year 2019.
SELECT  productname,
(EXTRACT(MONTH FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) AS month , SUM(price*quantity) AS sales
FROM ecommerce
WHERE (EXTRACT(YEAR FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) = 2019
GROUP BY productname,(EXTRACT(MONTH FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')))
ORDER BY productname asc;

-- 4 Write a SQL query to count the customers from each country.
SELECT country,COUNT(customerno) AS No_of_Customers FROM
ecommerce
GROUP BY country;

-- 5 Write a SQL query to list all the unique product names sold from each year.
SELECT DISTINCT (EXTRACT(YEAR FROM
TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) AS Year, productname
FROM ecommerce
ORDER BY year asc;

