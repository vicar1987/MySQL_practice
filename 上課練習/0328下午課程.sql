select empno '編號', ename Name, sal as Salary, sal*12 'Ann Sal'
from emp;

select distinct job
from emp;

select ename, sal, sal+3000
from emp;

select ename, sal, 12*sal+100
from emp;

select ename, sal, 12*(sal+100)
from emp;

select ename, sal, 12*sal+100, 12*(sal+100)
from emp;

select ename, sal, comm, sal+comm
from emp;

select concat(ename, ' job is ', job) jobs
from emp;

select empno, ename, job, deptno
from emp
where deptno = 20;

select empno, ename, job, deptno
from emp
where deptno > 20;

select empno, ename, job, deptno
from emp
where deptno < 20;

select empno, ename, job, deptno
from emp
where deptno >= 20;

select empno, ename, job, deptno
from emp
where deptno <= 20;

select empno, ename, job, deptno
from emp
where deptno <> 20;

select empno, ename, job, sal
from emp
where sal >= 3000;

select empno, ename, job, deptno, hiredate
from emp
where hiredate = 19811203;

select empno, ename, job, deptno, sal, hiredate
from emp
where ename = 'King';

select ename, sal, comm
from emp
where sal <= comm;

select empno, ename, job, sal
from emp
where sal >= 1100 and job = 'clerk';

select empno, ename, job, sal, mgr
from emp
where sal > 2000 and job = 'manager';

select empno, ename, job, sal
from emp
where sal >= 1100 or job = 'clerk';

select empno, ename, job, sal, mgr
from emp
where sal > 2000 or job = 'manager';

select empno, ename, job, sal, mgr
from emp
where not (sal > 2000 and job = 'manager');

select empno, ename, job, sal, mgr
from emp
where not (sal > 2000 or job = 'manager');

select empno, ename, job, sal, mgr
from emp
where sal <= 2000 and job <> 'manager';

select empno, ename, job, sal
from emp
where job = 'manager'
	or job = 'salesman'
    and sal < 1500;
    
select empno, ename, job, sal
from emp
where job = 'manager' or (job = 'salesman' and sal < 1500);

select empno, ename, job, sal
from emp
where job = 'manager' or job = 'salesman' and sal < 1500;

select empno, ename, job, sal
from emp
where (job = 'manager' or job = 'salesman') and sal < 1500;

select empno, ename, job, sal
from emp
where (job = 'manager'
	or job = 'salesman')
    and sal < 1500;
    
select empno, ename, job, sal
from emp
where ename like 'a%';

select empno, ename, job, sal
from emp
where ename like '%n';

select empno, ename, job, sal
from emp
where ename like '%t%';

select empno, ename, job, sal
from emp
where ename like '_a%';

select empno, ename, job, sal
from emp
where ename like '__a%';

create table liquors
(
  id int primary key,
  content varchar(20)
);

select * 
from liquors
where content like '%3%%';

select * 
from liquors
where content like '%3&%%' escape '&';

select * 
from liquors
where content like '%3\%%' escape '\\';

select length('abcd');

select ename, length(ename)
from emp;

select ename, lower(ename)
from emp;

select upper('abcd');

select right('abcd', 2);

select left(ename, 2)
from emp;

select concat('good', 'string');

select substring('string', 1, 3);

select substring('string', 2, 4);

select substring(ename, 1, 3)
from emp;

select ename, substring(ename, 1, 3)
from emp;

select lpad(sal, 10, '*')
from emp;

select lpad('abc', 10, '*');

select rpad('abc', 10, '*');

select trim('s' from 'sssssaaasssssss');

select concat(deptno, dname) department
from dept;

select ename, sal, lpad(sal, 10, '#'), rpad(sal, 10, '#')
from emp;

select ename, sal, concat(job, ' in department ', deptno) Job_dep
from emp
where substr(ename, 1, 1) ='M';

select sal, round(sal/100, 0)
from emp;

select ename, sal, repeat('*', round(sal/100, 0))
from emp
where deptno = 10
);

select ename, sal, sal+floor(round()*1000)
from emp
where deptno = 20;