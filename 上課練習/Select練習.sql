select * from dept;

select empno, ename, job, hiredate
from emp;

select distinct job
from emp;

select empno 'Emp#', ename Name, job as Job, hiredate 'Hire Date'
from emp;

select concat(ename, ' , ', job) 'Employee and Title'
from emp;