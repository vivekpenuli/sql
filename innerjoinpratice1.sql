

create table orders( 
    orderid number(5) primary key, 
    orderdate date, 
    customerid number(5) 
)
;

insert into orders values(1,'15-jan-2022',101)
;

insert into orders values(2,'20-feb-2022',102)
;

insert into orders values(3,'25-mar-2022',103)
;

insert into orders values(4,'30-apr-2022',101)
;

select * from orders
;


/*Product table */

create table purchase( 
    purchaseid number(5) primary key, 
    orderid number(5) references orders(orderid) 
   productname varchar(5), 
    quantity number(5), 
    price number(6,2), 
    purchasedate date 
    ) 

;

create table purchase( 
    purchaseid number(5) primary key, 
    orderid number(5) references orders(orderid), 
   productname varchar(5), 
    quantity number(5), 
    price number(6,2), 
    purchasedate date 
    )
;

insert into purchase values(101,1,'A',2,20.0,'15-FEB-2022')
;

DELETE FROM PURCHASE
;

insert into purchase values(101,1,'A',2,20.0,'15-JAN-2022')
;

insert into purchase values(102,1,'B',1,15.0,'15-JAN-2022')
;

insert into purchase values(103,2,'C',3,25.0,'20-FEB-2022')
;

insert into purchase values(104,3,'A',1,10.0,'25-MAR-2022')
;

select * from purchase
;

insert into purchase values(105,4,'B',2,30.0,'30-APR-2022')
;

select * from purchase
;

select * from orders o 
inner join purchase p 
on o.orderid = p.orderid
;

create table orders( 
    orderid number(5) primary key, 
    orderdate date, 
    customerid number(5) 
) 
insert into orders values(1,'15-jan-2022',101)
;

insert into orders values(2,'20-feb-2022',102)
;

insert into orders values(3,'25-mar-2022',103)
;

insert into orders values(4,'30-apr-2022',101)
;

select * from orders
;

create table purchase( 
    purchaseid number(5) primary key, 
    orderid number(5) references orders(orderid), 
   productname varchar(5), 
    quantity number(5), 
    price number(6,2), 
    purchasedate date 
    ) 
 
insert into purchase values(101,1,'A',2,20.0,'15-JAN-2022')
;

insert into purchase values(102,1,'B',1,15.0,'15-JAN-2022')
;

insert into purchase values(103,2,'C',3,25.0,'20-FEB-2022')
;

insert into purchase values(104,3,'A',1,10.0,'25-MAR-2022')
;

insert into purchase values(105,4,'B',2,30.0,'30-APR-2022')
;

select * from purchase
;

select * from orders o 
inner join purchase p 
on o.orderid = p.orderid 
    order by o.orderid
;

    ; 



select * from orders o 
inner join purchase p 
on o.orderid = p.orderid 
    order by p.orderid
;

    ;



select * from orders o 
inner join purchase p 
on o.orderid = p.orderid 
    order by o.orderid
;

    ; 



select * from purchase
;

select * from orders o 
inner join purchase p 
on o.orderid = p.orderid 
    order by o.orderid
;

    ; 



select * from purchase
;

select productname, sum(quantity) 
from purchase  
group by productname
;

select productname, sum(quantity) 
from purchase  
group by productname 
order by productname
;

select productname, sum(quantity) as "total quantity" 
from purchase  
group by productname 
order by productname
;

select * from orders o 
inner join purchase p 
on o.orderid = p.orderid 
    WHERE productname like 'A' 
    order by o.orderid
;

select * from orders o 
inner join purchase p 
on o.orderid = p.orderid 
    order by purchasedate
;

    ; 



select * from purchase
;

select * from orders o 
inner join purchase p 
on o.orderid = p.orderid 
    order by purchasedate
;

    ;



select o.customerid,sum(p.price) as 'Total spending' from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.customerid 
;

select o.customerid,sum(p.price) as 'Total spending' 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.customerid 
;

select o.customerid,sum(p.price) as 'Total spending' 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.customerid
;

select o.customerid  
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.customerid
;

select o.customerid,sum(p.price)  
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.customerid
;

select o.customerid,sum(p.price) as"total spending" 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.customerid
;

select o.customerid,sum(p.price) as 'total spending' 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.customerid
;

select o.customerid,sum(p.price) as "total spending" 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.customerid
;

select o.customerid,sum(p.price * p.quantity) as "total spending" 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.customerid
;

select o.orderid, o.orderdate , sum(p.price*p.quantity) as "total expenditure" 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.orderid
;

select * from orders
;

select * from orders
;

select o.orderid, o.orderdate , sum(p.price*p.quantity) as "total expenditure" 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.orderid
;

select o.orderid, o.orderdate , sum(p.price*p.quantity) as "total expenditure" 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.orderid,o.orderdate
;

select orderdate , count(*) as "total order" 
from orders 
group by orderdate
;

select orderdate , count(*), orderid as "total order" 
from orders 
group by orderdate
;

select orderdate , orderid,count(*) as "total order" 
from orders 
group by orderdate
;

select orderdate , orderid 
from orders 
group by orderdate
;

select orderdate  
from orders 
group by orderdate
;

select orderid  
from orders 
group by orderdate
;

select o.orderid, o.orderdate , sum(p.price*p.quantity) as "total expenditure" 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.orderid,o.orderdate
;

select * from purchase
;

select orderid, AVG(quantity) as "average quantity" 
from purchase 
group by orders
;

select orderid, AVG(quantity) as "average quantity" 
from purchase 
group by orderid
;

select AVG(quantity) as "average quantity" 
from purchase
;

select * from purchase
;

select 0.customerid,o.orderid, p.purchasedate 
from orders o 
inner join purchase p 
on o.orderid = p.orderid
;

select o.customerid,o.orderid, p.purchasedate 
from orders o 
inner join purchase p 
on o.orderid = p.orderid
;

select o.customerid,o.orderid, p.purchasedate 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
where p.purchasedate >= '01-MAR-2022'
;

select * from purchase
;

select productname , COUNT(DISTINCT(orderid)) 
from purchase 
group by productname
;

select productname , COUNT(DISTINCT(orderid)) as "distinct order" 
from purchase 
group by productname
;

select * from purchase
;

select * 
from orders o 
inner join purchase p 
on o.orderid = p.orderid
;

select o.orderid, sum(p.price*p.quantity) as "total expend" 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.orderid
;

select o.customerid, sum(p.price*p.quantity) as "total expend" 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.order
;

select o.customerid, sum(p.price*p.quantity) as "total expend" 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.customerid
;

select o.customerid, sum(p.price*p.quantity) as "total expend" 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.customerid 
    fetch top 2 row only 
;

select o.customerid, sum(p.price*p.quantity) as "total expend" 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.customerid 
    fetch top 2 rows only 
;

select o.customerid, sum(p.price*p.quantity) as "total expend" 
from orders o 
inner join purchase p 
on o.orderid = p.orderid 
group by o.customerid 
    fetch first 2 rows only 
;

