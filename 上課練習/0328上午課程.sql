select ename, job, sal
from emp
;

select *
from emp
;

select empno, ename, sal
from emp
;

select deptno, DNAME
from dept
;

select deptno, dname
from dept
;

select empno, ename, hiredate, sal, job
from emp
where hiredate = '19811203'
;

desc dept;

create table emp10
( 
  empno int(11) not null,
  ename varchar(10),
  job varchar(9),
  sal decimal(7,2)
);

desc emp10;

alter table emp10
add column mgr smallint ;

desc emp10;

alter table emp10
add column hiredate date after job;

desc emp10;

alter table emp10
add phone varchar(12) default '03-4660257' first;

alter table emp10
add column(comm int, deptno smallint, email varchar(200));

alter table emp10
alter phone drop default;

alter table emp10
modify column mgr int after job;

alter table emp10
modify ename varchar(20) not null;

alter table emp10
change sal salary smallint;

alter table emp10
add locate varchar(100);

alter table emp10
drop locate;

alter table emp10
drop email;

alter table emp10
rename emp10a;

alter table emp10a
comment 'for department number 10';

show table status;