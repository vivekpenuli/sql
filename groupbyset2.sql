

create table store( 
    storeid number(5) primary key, 
    storename varchar(10), 
    productname varchar(10), 
    qunatity number(5), 
    price number(10) 
)
;

insert into store values(1,'apple store 1','iphone12',1,1000)
;

insert into store values(1,'store 1','iphone12',1,1000)
;

insert into store values(5,'store 3','iphone13',3,2000)
;

insert into store values(6,'store 3','iphone14',6,2000)
;

insert into store values(7,'store 3','iphone12',3,1000)
;

insert into store values(2,'store 1','iphone11',4,2000)
;

insert into store values(3,'store 2','iphone11',5,3000)
;

insert into store values(4,'store 2','iphone12',2,4000)
;

select * from store
;

select storename , AVG(price) from store group by storename
;

insert into store values(8,'store 4','iphone12',1,4000)
;

insert into store values(9,'store 5','iphone12',3,1000)
;

select storename , AVG(price) from store group by storename
;

select storename , AVG(price) , quantity * price as "sales " from store group by storename
;

select storename , AVG(price) , quantity * price as "sales " from store group by storename
;

select storename , AVG(price) , quantity * price as "sales " from store group by storename
;

select * from store
;

select storename , AVG(price) from store group by storename
;

select storename , AVG(price) , quantity * price as "sales " from store group by storename
;

select storename , AVG(price) , qunatity * price as "sales " from store group by storename,qunatity
;

select storename , AVG(price) , qunatity * price as "sales " from store group by storename
;

select storename , AVG(price) , qunatity * price as "sales " from store group by storename,qunatity
;

select storename , AVG(price) , qunatity * price as "sales " from store group by storename,qunatity,price
;

select storename , AVG(price) , qunatity * price as "sales " from store group by storename,qunatity,price
;

select storename , AVG(price) , qunatity * price as "sales " from store group by storename,qunatity,price
;

select storename , AVG(price) , qunatity * price as "sales " from store group by storename,qunatity,price
;

select storename , AVG(price) , qunatity * price as "sales " from store group by storename,qunatity,price
;

select storename , AVG(price) , qunatity * price as "sales " from store group by storename,qunatity
;

select storename , qunatity * price as "sales " , AVG(qunatity * price) from store group by storename,qunatity,price
;

select storename , AVG(price) , qunatity * price as "sales " from store group by storename,qunatity,price
;

select storename , qunatity * price as "sales " , AVG("sales") ,from store group by storename,qunatity,price
;

select storename , qunatity * price as "sales " , AVG(qunatity * price) ,from store group by storename,qunatity,price
;

select storename , qunatity * price as "sales " , AVG(qunatity * price) ,from store group by storename,qunatity,price
;

select storename , qunatity * price as "sales " , AVG(qunatity * price) from store group by storename,qunatity,price
;

select storename , qunatity * price as "sales " , AVG("sales") from store group by storename,qunatity,price
;

select storename , qunatity * price as "sales " , AVG("sales") from store group by storename,qunatity,price
;

select storename , qunatity * price as "sales " , AVG(qunatity * price) from store group by storename,qunatity,price
;

select storename , qunatity * price as "sales " , AVG(qunatity * price) from store group by storename,qunatity,price
;

select storename ,avg(quantity*price) 
    from store 
    group by storename, quantity, price
;

select storename ,avg(quantity*price) 
    from store 
    group by storename, quantity, price
;

select storename ,avg(quantity*price) 
    from store 
    group by storename, quantity, price
;

select storename ,avg(quantity*price) 
    from store 
    group by storename, quantity, price
;

select storename, avg(price)  
    from store 
    group by storename
;

select storename ,avg(quantity*price) 
    from store 
    group by storename, quantity, price
;

select storename ,avg(qunatity*price) 
    from store 
    group by storename, qunatity, price
;

select * from store
;

select storename ,avg(qunatity*price) 
    from store 
    group by storename, qunatity, price
;

select storename ,avg(qunatity*price) 
    from store 
    group by storename;  /*not working*/
;

select storename , sum(qunatity*price) 
    from store 
    group by storename ,qunatity , price
;

select storename , sum(qunatity*price) 
    from store 
    group by storename 
;

select storename , sum(qunatity*price) 
    from store 
    group by storename 
;

select storename ,avg(qunatity*price) 
    from store 
    group by storename
;

select storename , qunatity * price as "sales " , AVG(qunatity * price) from store group by storename
;

select storename ,avg(qunatity*price) 
    from store 
    group by storename;  /*not working*/
;

select storename ,avg(qunatity*price) 
    from store 
    group by storename;  /*not working*/
;

select storename ,avg(qunatity*price) 
    from store 
    group by storename
;


