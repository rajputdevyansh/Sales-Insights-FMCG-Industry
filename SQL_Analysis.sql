/* Viewing all records in customers, date, market, product and transactions table */

select * from sales_atlik_hardware.customers;
select * from sales_atlik_hardware.date;
select * from sales_atlik_hardware.markets;
select * from sales_atlik_hardware.products;
select * from sales_atlik_hardware.transactions;

/* Counting the number of records in customers, market, product and transactions table */

SELECT count(*) FROM sales_atlik_hardware.customers; /* 38 */
SELECT count(*) FROM sales_atlik_hardware.markets; /* 17 */
SELECT count(*) FROM sales_atlik_hardware.products; /* 279 */
SELECT count(*) FROM sales_atlik_hardware.transactions; /* 148394 */

/* Counting garbage values in the transactions table */

SELECT count(*) FROM sales_atlik_hardware.transactions where sales_amount<=0; /* 0 */

/* Counting for unwanted records in the transactions table prodcuts with product code higher than Prod279 */

SELECT count(distinct(product_code)) FROM sales_atlik_hardware.transactions where product_code>"Prod279"; /* 59 */

/* Checking for unwanted records in the transactions table prodcuts with product code higher than Prod279 */

SELECT distinct(product_code) FROM sales_atlik_hardware.transactions where product_code>"Prod279";

/* Counting for transactions with currency other than INR */

SELECT count(*) FROM sales_atlik_hardware.transactions where currency<>"INR"; /* 2 */

/* Checking for transactions with market code Mark097. Mark999 */

SELECT count(*) FROM sales_atlik_hardware.transactions where market_code="Mark097" or market_code="Mark999"; /* 0 */

/* Joining the date and transactions table */

select aht.*, ahd.*
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date;

/* Joining the date and transactions table and filtering by year */ 

select aht.*, ahd.*
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date 
where ahd.year="2023";

/* Joining the date and transactions table and filtering by year and market code */

select aht.*, ahd.*
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date 
where ahd.year="2023" and aht.market_code="Mark001";

/* Joining the date and transactions table and filtering by year and currency */

select aht.*, ahd.*
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date 
where ahd.year="2020" and aht.currency="USD";

/* Joining the date and transactions table and filtering by year, market code and currency */

select aht.*, ahd.*
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date 
where ahd.year="2023" and aht.market_code="Mark001" and aht.currency="INR";

/* Calculating the total sales amount by year */

select sum(aht.sales_amount)
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date 
where ahd.year="2023"; /* 142185656 */

/* Calculating the total sales amount by year and market code */

select sum(aht.sales_amount)
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date 
where ahd.year="2023" and aht.market_code="Mark001"; /* 2463024 */

/* Calculating the total sales amount by year and currency */

select sum(aht.sales_amount)
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date 
where ahd.year="2020" and aht.currency="INR"; /* 92881903 */

select sum(aht.sales_amount)
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date 
where ahd.year="2020" and aht.currency="USD"; /* 750 */

/* Calculating the total sales amount by year, market code and currency */

select sum(aht.sales_amount)
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date 
where ahd.year="2020" and aht.market_code="Mark002" and aht.currency="INR"; /* 14874446 */