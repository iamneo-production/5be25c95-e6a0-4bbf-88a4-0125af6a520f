-- 1 Write a SQL query to how many products were sold in February 2019.--

SELECT COUNT(Productname) AS products_sold
FROM ecommerce
WHERE SUBSTR(purchase_date, 1, 7) = '2019-02';

--2.Write a sql query to total sales amount in each year?--

SELECT
    SUBSTR("PURCHASE_DATE", 1, 4) AS YEAR,
    SUM(price * quantity) AS totalsale 
FROM ecommerce
GROUP BY SUBSTR("PURCHASE_DATE", 1, 4);

--3.Write a sql query to what was the total sales amount of each product month_wise basis in the year 2019?--

SELECT productname, (EXTRACT(MONTH FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) AS month ,SUM(price*quantity) AS sales
FROM ecommerce
WHERE (EXTRACT(YEAR FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD'))) = 2019
GROUP BY productname,(EXTRACT(MONTH FROM TO_DATE("PURCHASE_DATE",'YYYY-MM-DD')))
ORDER BY productname asc;

--4.Write a sql query to count the customers from each country?--

SELECT country,
       COUNT(*) AS No_of_cust 
FROM ECOMMERCE
GROUP BY country;

--5.Write a sql query to list all the unique productnames sold from each year?--

SELECT DISTINCT 
    SUBSTR(PURCHASE_DATE, 1, 4) AS year,
    productname
FROM ecommerce
ORDER BY SUBSTR(PURCHASE_DATE, 1, 4);
