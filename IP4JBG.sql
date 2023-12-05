use `premier_products`;
-- 1
show Tables;
select * from customer;
select * from order_line;
select * from orders;
select * from part;
select * from sales_rep;


-- 2
select s.first_name, s.last_name, s.sales_rep_num, s.city
from sales_rep s;


-- 3
select o.order_num, o.customer_num
from orders o;

-- 4
select * from orders
limit 2;

-- 5

select * from customer
where sales_rep_num = 20;
-- 6
select c.customer_name, balance, credit_limit
from customer c
where sales_rep_num = 20;

-- 7
select l.part_num, l.num_ordered, l.quoted_price, l.num_ordered*l.quoted_price
as "Total Price"
from order_line l 
where num_ordered = 1 and order_num = 21617;


-- 8
select * from orders 
where order_date between "2010-10-20" and "2010-10-22" ;

-- 9
select * from part
where part_description like 'D%'
and part_description like '%er';

-- 10
select sum(c.balance) as "Total Balance" 
from customer c;

-- 11
select min(c.balance) as "Minimum Balance"
from customer c;

-- 12
select count(c.customer_num)
from customer c;
-- 13
select order_num from order_line where quoted_price>500 and quoted_price<1000;

-- 14
select c.customer_name, s.first_name, s.last_name
from customer c
join sales_rep s on s.sales_rep_num=c.sales_rep_num;