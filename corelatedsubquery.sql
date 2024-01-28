
create table orde( 
    orderid number(5) primary key, 
    customerid number(5), 
    orderdate date, 
    totalprice number(6) 
)
;

insert into orde values (1,101,'15-mar-2023',1200)
;

create table emp( 
    empid number(5) , 
    empname varchar(10), 
    deptid number(5), 
    salary number(6), 
    hiredate date, 
 
)
;

create table emp( 
    empid number(5) , 
    empname varchar(10), 
    deptid number(5), 
    salary number(6), 
    hiredate date 
) 

;

insert into emp values(1,'alice',101,60000,'15-mar-2022')
;

insert into emp values(2,'bob',102,70000,'20-jun-2021')
;

insert into emp values(3,'charlie',101,55000,'10-jan-2023')
;

insert into emp values(4,'david',103,80000,'5-sep-2022')
;

insert into emp values(5,'eve',102,65000,'12-dec-2021')
;

insert into emp values(6,'frank',101,72000,'18-apr-2023')
;

insert into emp values(7,'grace',103,75000,'25-jul-2022')
;

insert into emp values(8,'harry',102,68000,'30-nov-2021')
;

insert into emp values(9,'irene',101,58000,'28-feb-2023')
;

insert into emp values(10,'jack',103,90000,'8-may-2022')
;

select * from emp
;

select * from emp 
where salary > (select avg(salary) from emp)
;

select * from emp 
where hiredate < (select hiredate from emp where empid =1)
;

select * from emp 
where sal = (select sal from emp where empname like 'frank')
;

select * from emp 
where salary = (select salary from emp where empname like 'frank')
;

select * from emp 
where hiredate between '1-jan-2022' and '31-dec-2022' 
;

select dept , avg(salary) from emp 
group by deptid
;

select deptid , avg(salary) from emp 
group by deptid
;

select deptid from emp 
group by deptid 
having avg(salary) > (Select avg(salary) from emp)
;

select deptid ,avg(salary) from emp 
group by deptid 
having avg(salary) > (Select avg(salary) from emp)
;

Select  deptid, max(salary) from emp)
;

Select  deptid, max(salary) from emp group by deptid
;

Select  deptid, max(salary) from emp group by deptid 
;

select * from emp 
where ( deptid ,salary) in ( Select  deptid, max(salary) from emp group by deptid )
;

Select  deptid, max(salary) from emp group by deptid 
;

select * from emp 
where months_between(sysdate , hiredate) >24
;

select * from emp 
where months_between(sysdate , hiredate) >14
;

select * from emp 
where hiredate > (Select hiredate from emp 
    where empname like 'bob')
;

select * from emp 
where hiredate > (Select hiredate from emp 
    where empname like 'bob')
;

select deptid, sum(salary) from emp 
group by deptid
;

select deptid, sum(salary) from emp 
group by deptid
;

Select max(salary) from emp group by deptid
;

Select ,deptid max(salary) from emp group by deptid
;

Select deptid, max(salary) from emp group by deptid
;

select deptid, sum(salary) from emp 
group by deptid
;

select deptid, sum(salary) from emp  
group by deptid
;

select deptid, sum(salary) as "total_sal" from emp  
group by deptid
;

select deptid, sum(salary) as "total_sal" from emp  
group by deptid
;

select max(total sal) (select deptid, sum(salary) as "total sal" from emp  
group by deptid)
;

select max(total sal) from (select deptid, sum(salary) as "total sal" from emp  
group by deptid)
;

select max(total sal) from (select deptid, sum(salary) as "total sal" from emp  
group by deptid)
;

(select max(total sal) from (select deptid, sum(salary) as "total sal" from emp  
group by deptid)
;

(select max(total sal) from (select deptid, sum(salary) as "total sal" from emp  
group by deptid)
;

select max(total sal) from (select deptid, sum(salary) as "total sal" from emp  
group by deptid)
;

select max(total_sal) from (select deptid, sum(salary) as "total_sal" from emp  
group by deptid)
;

select max(total_sal) from (select deptid, sum(salary) as "total_sal" from emp  
group by deptid)
;

select max("total_sal") from (select deptid, sum(salary) as "total_sal" from emp  
group by deptid)
;

select deptid, sum(salary) as "total_sal
;

select deptid, sum(salary) as "total_sal" from emp  
group by deptid
;

select max("total_sal") from (select deptid, sum(salary) as "total_sal" from emp  
group by deptid)
;

select max("total_sal") from (select deptid, sum(salary) as "total_sal" from emp  
group by deptid)
;

select deptid, sum(salary) from emp 
group by deptid 
having sum(salary) = select max("final sal") from (Select sum(salary) as "final sal" from emp group by deptid)
;

select deptid, sum(salary) from emp 
group by deptid 
having sum(salary) = (select max("final sal") from (Select sum(salary) as "final sal" 
    from emp group by deptid))
;

Select deptid , (max(salary)/100)*10 as "10 percent" from emp group by deptid
;

Select deptid ,max(salary), (max(salary)/100)*10 as "10 percent" from emp group by deptid 
;

select * from emp 
where sal <= (Select deptid  
    (max(salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by deptid ) 
;

select * from emp 
where sal <= (Select deptid  
    (max(salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by deptid ) 
;

select * from emp 
where sal <= (Select deptid  
    (max(salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by deptid ) 
;

select * from emp 
where salary <= (Select deptid  
    (max(salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by deptid ) 
;

select * from emp e1 
where salary <= (Select deptid  
    (max(salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by deptid ) 
;

select * from emp e1 
where salary <= (Select deptid  
    (max(salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid ) 
;

select * from emp e1 
where salary <= (Select e2.deptid  
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid ) 
;

Select e2.deptid  
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    group by e2.deptid
;

Select e2.deptid  
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    group by e2.deptid
;

Select e2.deptid  
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    group by e2.deptid
;

Select e2.deptid  
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    group by e2.deptid
;

Select deptid , 
    (max(salary)/100)*10 as "10 percent" from emp e2 
    group by deptid
;

Select deptid  
    (max(salary)/100)*10 as "10 percent" from emp e2 
    group by deptid
;

Select deptid  
    (max(salary)/100)*10 as "10 percent" from emp e2 
    group by deptid
;

Select deptid  
    (max(salary)/100)*10 as "10 percent" from emp e2 
    group by deptid
;

Select deptid  
    (max(salary)/100)*10 as "10 percent" from emp e2 
    group by deptid
;

Select deptid , 
    (max(salary)/100)*10 as "10 percent" from emp e2 
    group by deptid
;

Select e2.deptid , 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    group by e2.deptid
;

Select e2.deptid , 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    group by e2.deptid
;

select * from emp e1 
where salary <= (Select e2.deptid , 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    group by e2.deptid ) 
;

select * from emp e1 
where salary < (Select e2.deptid , 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    group by e2.deptid ) 
;

select * from emp e1 
where e1.salary < (Select e2.deptid , 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid ) 
;

select * from emp e1 
where e1.salary < (Select e2.deptid , 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid ) 
;

select * from emp e1 
where e1.salary < (Select e2.deptid , 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid ) 
;

select * from emp e1 
where e1.salary < (Select e2.deptid , 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid ) 
;

Select e2.deptid , 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid 
;

select * from emp e1 
where e1.salary < (Select e2.deptid , 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid ) 
;

select * from emp e1 
where e1.salary < (Select 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid ) 
;

select * from emp e1 
where e1.salary < (Select 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid ) 
;

select * from emp e1 
where e1.salary <= (Select 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid ) 
;

select * from emp e1 
where e1.salary > (Select 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid ) 
;

select * from emp
;

Select e2.deptid 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    group by e2.deptid
;

Select e2.deptid 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    group by e2.deptid 
;

Select e2.deptid 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    group by e2.deptid
;

Select e2.deptid, 
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    group by e2.deptid 
;

select * from emp
;

select * from emp e1 
where e1.salary > (Select  
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid ) 
;

select * from emp
;

select * from emp e1 
where e1.salary > (Select  
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid ) 
;

select * from emp e1 
where e1.salary > (Select  
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid )  
 
order by e1.deptid
;

insert into emp values(11,'rack',101,6200,'12-may-2022')
;

insert into emp values(12,'kack',101,5700,'18-may-2022')
;

select * from emp
;

select * from emp e1 
where e1.salary <= (Select  
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid ) 
;

select * from emp e1 
where e1.salary <= (Select  
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid 
    group by e2.deptid ) 
;

select * from emp e1 
where e1.salary <= (Select  
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid )
;

Select  
    (max(e2.salary)/100)*10 as "10 percent" from emp e2
;

select * from emp e1 
where e1.salary <= (Select  
    (max(e2.salary)/100)*10 as "10 percent" from emp e2 
    where e1.deptid = e2.deptid )
;

select * from emp 
where (deptid) =(select deptid from emp 
    where empname like 'harry')
;

select max(salary) from emp 

;

select * from emp where salary = select max(salary) from emp 

;

select hiredate from emp where salary = (select max(salary) from emp) 

;

select * from emp where salary = (select max(salary) from emp) 

;

select hiredate from emp where salary = (select max(salary) from emp) 

;

select * from emp where hiredate =( 
select hiredate from emp where salary = (select max(salary) from emp))
;

insert into emp values(13,'aack',101,40000,'8-may-2022')
;

select * from emp where hiredate =( 
select hiredate from emp where salary = (select max(salary) from emp))
;

select * from emp  
where hiredate between (select hiredate from emp where empname like 'grace') and  
(select hiredate from emp where empname like 'jack')
;

select * from emp  
where hiredate >(select hiredate from emp where empname like 'grace') and  
hiredate < (select hiredate from emp where empname like 'jack')
;


