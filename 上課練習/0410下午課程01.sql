select my_db;

select ename, sal ,job
from my_db.emp;

select ename, sal ,job
from my_db.emp
limit 5;

select ename, sal ,job
from my_db.emp
limit 3,5;

select ename, sal ,job
from my_db.emp
order by sal desc
limit 5;

select ename, sal ,job
from emp
order by sal asc
limit 5;

select *
from emp
where deptno=10;

select count(*)
from emp
where deptno=10;

select comm
from emp
where deptno = 30;

select count(comm)
from emp
where deptno = 30;

select distinct comm
from emp
where deptno = 30;

select count(distinct comm)
from emp
where deptno = 30;

select sal 
from emp
where deptno = 30;

select max(sal) 
from emp
where deptno = 30;

select min(sal) 
from emp
where deptno = 30;

select sum(sal) 
from emp
where deptno = 30;

select avg(sal) 
from emp
where deptno = 30;

select sum(comm)/count(*)
from emp
where deptno = 30;

select avg(ifnull(comm,0))
from emp
where deptno = 30;

select deptno, sal
from emp;

select deptno, sal
from emp
group by deptno;

select deptno, avg(sal)
from emp
group by deptno;

select comm, count(*)
from emp
group by comm;

select deptno, sum(sal)
from emp
group by deptno
order by sum(sal);

select deptno, sum(sal)
from emp
group by deptno
order by 2;

select deptno, sum(sal)
from emp
group by deptno
order by 2 desc;

select deptno, job, count(*)
from emp
group by deptno, job
order by deptno;

select job, count(*) cnt
from emp
group by job
order by cnt;

select job, count(*) cnt
from emp
group by job
having count(*) > 3;

select job, count(*) cnt
from emp
where deptno = 30
group by job;

select job, count(*) cnt
from emp
where deptno = 30
group by job
having count(*) > 3;

select deptno, job
from emp;

select deptno, job
from emp
group by deptno;

select deptno, group_concat(job separator ',') Jobs
from emp
group by deptno;

select deptno, group_concat(distinct job separator ',') Jobs
from emp
group by deptno;

select deptno, group_concat(distinct job order by job separator ',') Jobs
from emp
group by deptno;

