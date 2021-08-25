create view salvu20 (employee_no, employee, annual_sal)
as
 select empno, ename, sal*12 from emp
 where deptno = 20;
 
create view salvu30
as
 select empno employee_number, ename name, sal SALARY from emp
 where deptno = 30;
 
create view dept_sum_vu(name, minsal, maxsal, avgsal)
 as
   select d.dname, min(e.sal), max(e.sal), avg(e.sal)
   from emp e join dept d on(e.deptno = d.deptno)
   group by d.dname;
   
select a.ename, a.sal, a.deptno, b. avgsal
from emp a join (select deptno, avg(sal) avgsal
                 from emp
                 group by deptno) b
			on(a.deptno = b.deptno)
where a.sal <b.avgsal;

insert into salvu20
values (9800, 'Jackson', 24000);

delete from empvu10
where empno = 9700;







