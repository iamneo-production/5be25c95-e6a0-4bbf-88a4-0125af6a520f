--1.Write a query to display how many products were sold in February 2019.
select count(*) as products_sold
from ecommerce
where purchase_date between '01-02-2019' and '29-02-2019';

--2.Write a sql query to total sales amount in each year?
select purchase_date as year,sum(price*quantity) as totalsale
from ECOMMERCE
group by purchase_date;

--3.Write a sql query to what was the total sales amount of each product month_wise basis in the year 2019?
select productname, sum(price*quantity) as totalsale
from ECOMMERCE
where purchase_date between '01-01-2019' and '30-12-2019'
group by productname
order by productname;

--4.Write a sql query to count the customers from each country?
select country,count(customerno) as No_of_cust
from ECOMMERCE
group by country; 

--Write a sql query to list all the unique productnames sold from each year?
select distinct(PURCHASE_DATE),Productname
from ECOMMERCE
order by purchase_date;
