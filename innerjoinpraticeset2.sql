/*Product table*/
create table products
(
    productid number(5) primary key,
    productname varchar(10) ,
    price number(5)
)

insert into products values(101,'laptop',800);
insert into products values(102,'smartphone',500);
insert into products values(103,'headphone',50);
insert into products values(104,'tablet',300);
insert into products values(105,'TV',600);


select * from products;




/*orders*/

create table orders(
    orderid number(5) primary key,
    productid number(5) References products(productid),
    quantity number(5),
    orderdate date,
    customerid number(5)
)

insert into orders values (1,101,3,'1-jan-2024',1);
insert into orders values (2,102,2,'2-jan-2024',2);
insert into orders values (3,101,1,'3-jan-2024',3);
insert into orders values (4,103,4,'4-jan-2024',1);
insert into orders values (5,102,2,'5-jan-2024',4);
insert into orders values (6,101,3,'6-jan-2024',2);
insert into orders values (7,104,1,'7-jan-2024',3);
insert into orders values (8,103,2,'8-jan-2024',1);
insert into orders values (9,104,3,'9-jan-2024',2);
insert into orders values (10,101,2,'10-jan-2024',4);

select * from orders;


/*question */
/*ques 1: List all orders with details including product name and price*/
select * from orders o
inner join products p
on o.productid = p.productid ;

/*ques 2: find the total number of orders placed by each customer */
select * from orders;
select customerid, sum(quantity)
from orders
group by customerid
/*quest 3: Identitfy the product that have not been order yet*/
select * from products

select * from products p
left outer join orders o
on p.productid = o.productid
where o.productid IS NULL;

/*ques 4: list orders with a quantity greater then 2 and include product details */
select * from products p
 join orders o
on p.productid = o.productid
where o.quantity>2;
/*ques 5: find the total sale amount for each product */

select p.productid, NVL(SUM(o.quantity*p.price),0) as "total product spend", p.productname
from products p
left outer join orders o
on p.productid = o.productid
group by p.productid,p.productname;
/*VERY IMPORATNAT
in our product table we have one item 105 which do not have any relation in order table .
so if we use inner join here then only those product will be shown which have any realtion ,
but what about those who do not have any realtion in order table .
Therfore we use left outer join : which return all matching item as well as not prsent item in order.
*/


/*ques 6: find total amount spend by each customer*/
select o.customerid, sum(p.price*o.quantity) as "total spend"
from products p
join  orders o
on o.productid = p.productid
group by o.customerid;


/*ques 7: poruct details on or after '5-jan-2024'*/
select * from orders o
join products p
on p.productid = o.productid
where o.orderdate > '5-jan-2024';

/*quest 8: customer who order all item */
/*
solution : all item list present in product table and in order table list of order product is present
if product item count = cutomerorder item count then we can say that the customer order all item*/
select customerid from orders
    having count(Distinct(orders.productid)) = count(Distinct(products.productid))
    group by customerid
    ;

/*quest 9: identify the customer who order most distinct product*/
select customerid, COUNT(distinct(productid)) as "count"
from orders
group by customerid
order by "count" ;
/*quest 10:*/
/*quest 11:*/
