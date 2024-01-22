

create table emp( 
    eid number(5) PRIMARY KEY, 
    ename VARCHAR(6), 
    AGE NUMBER(5) 
)
;

CRAETE TABLE COURSE( 



    COURSE VARCHAR(5), 



    EID NUMBER(5) FOREIGN KEY emp(eid) 



)



CREATE TABLE COURSE( 
    COURSE VARCHAR(5), 
    EID NUMBER(5) REFERENCES emp(eid) 
)
;

INSERT INTO emp 
values(101,'vivek', 34)
;

INSERT INTO emp 
values(101,'sivek', 34)
;

INSERT INTO emp 
values(102,'sivek', 34)
;

INSERT INTO emp 
values(104,'sivek', 34)
;

INSERT INTO emp 
values(103,'sivek', 34)
;

INSERT INTO emp 
values(105,'sivek', 34)
;

INSERT INTO emp 
values(104,'sivek', 34)
;

select * from emp
;

INSERT INTO COURSE 
values('C101',101)
;

INSERT INTO COURSE 
values('C102',102)
;

INSERT INTO COURSE 
values('C103',102)
;

INSERT INTO COURSE 
values('C104',102)
;

select * from course
;

create table emp1( 
    eid number(5), 
    ename VARCHAR(6), 
    AGE NUMBER(5) 
)
;

CREATE TABLE COURSE1( 
    COURSE VARCHAR(5), 
    EID NUMBER(5) REFERENCES emp(eid) 
)
;

insert into emp1 values(1,'vivek',34)
;

insert into emp1 values(1,'svivek',24)
;

insert into emp1 values(1,'bvivek',4)
;

insert into emp1 values(2,'bvivek',4)
;

insert into COURSE1 values('c101',1)
;

select * from emp1
;

insert into COURSE1 values('c101',1)
;

CREATE TABLE COURSE2( 
    COURSE VARCHAR(5), 
    EID NUMBER(5) REFERENCES emp1(eid) 
)
;

CREATE TABLE COURSE3( 
    COURSE VARCHAR(5), 
    EID NUMBER(5) )
;

alter table COURSE3 
    ADD CONSTRAINT  
    FK FOREIGN KEY(EID) REFERENCES EMP1(eid)
;

