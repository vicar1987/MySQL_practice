select ename, sal
from emp
where sal > 2850;

select empno, ename, job
from emp
where empno = 7566;

select ename, sal
from emp
where sal < 1500 or sal > 2850;

select ename, job, hiredate
from emp
where hiredate between '19810220' and '19810501'
order by hiredate;

select ename, deptno
from emp
where deptno = 10 or deptno = 30
order by ename;

select ename 'Employee', deptno, sal 'Monthly Salary'
from emp
where deptno = 10 or deptno = 30
and sal > 1500;

select ename, job, hiredate
from emp
where hiredate like '1982%';

select ename, job
from emp
where job not in ('president');

select ename, sal, comm, sal+comm
from emp
where comm is not null
order by sal+comm desc;

select ename, job
from emp
where ename like '__a%';

select ename, job, mgr, deptno
from emp 
where ename like '%ll%'
and (deptno = 30 or mgr = 7782);

select ename, job, sal
from emp
where (job = 'clerk' or job = 'analyst') 
and (sal <> 1000 and sal <> 3000 and sal <> 5000);

select ename, sal, comm
from emp
where comm > sal*1.1;