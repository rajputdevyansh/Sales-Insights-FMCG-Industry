/* Joining the date and transactions table */

select aht.*, ahd.*
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date;

/* Joining the date and transactions table and filtering by year */ 

select aht.*, ahd.*
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date where ahd.year="2023";

/* Calculating the total sales amount for the year 2023 */

select sum(aht.sales_amount)
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date where ahd.year="2023";

/* Calculating the total sales amount for year 2022 */

select sum(aht.sales_amount)
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date where ahd.year="2022";

/* Calulating the total sales amount for year 2023 by market code */

select sum(aht.sales_amount)
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date 
where ahd.year="2023" and aht.market_code="Mark001";

/* Calcalating the total sales amount for year 2022 for market code */

select sum(aht.sales_amount)
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date 
where ahd.year="2022" and aht.market_code="Mark001";

/* Joining the date and transactions table and filtering by year and currency */

select aht.*, ahd.*
from sales_atlik_hardware.transactions aht
inner join sales_atlik_hardware.date ahd on aht.order_date = ahd.date where ahd.year="2020" and aht.currency="USD";
/* Result 2 rows */