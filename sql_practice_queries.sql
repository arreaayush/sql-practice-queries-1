-- 1. Retrieve all columns from the customers table.

Select * from customers;


-- 2. Get the names and emails of customers from the customers table whose country is 'USA'.

select concat(first_name,' ',last_name) as names, email from customers where country = 'USA';


-- 3. List all employees from employees table, ordered by their hire_date in descending order.

select * from employees order by hire_date desc;


-- 4. Find all unique countries from the customers table.

select distinct(country) from customers;


-- 5. Get the first 5 products from the products table sorted by price from highest to lowest.

select product_name, price from products order by price desc limit 5;


-- 6. Get all orders from orders table where order_status is 'Shipped' and the order_date is after '2023-01-01'.

select * from orders where order_status = 'Shipped' and order_date > '2023-01-01';


-- 7. Find the total number of customers from the customers table.

select * from customers;
select count(customer_id) as total_customers from customers;


-- 8. Get the number of customers from each country from the customers table.

select country, count(customer_id) as number_of_customers from customers group by country;


-- 9. List all orders with the customer name who placed them. (Tables: orders and customers, join on customer_id)

select o.order_id, o.order_date, o.order_status, concat(c.first_name,' ', c.last_name) as customer_name from orders o left join customers c on o.customer_id = c.customer_id;


-- 10. Find countries from the customers table that have more than 5 customers.

select country, count(customer_id) as customers from customers group by country having customers > 5;