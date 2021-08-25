#Moudle 17. 資料連結2 
select e.empno, e.ename, e.sal, s.grade
from emp e join salgrade s on(e.sal between s.losal and s.HISAL);

select e.empno, e.ename, e.sal, s.grade from emp e, salgrade s 
where e.sal between s.losal and s.HISAL;

select d.deptno, d.dname, e.empno, e.ename 
from dept d left outer join emp e on(d.deptno = e.deptno);

select e.ename, e.empno, d.deptno, d.dname
from emp e right outer join dept d on(d.deptno = e.deptno);

#加入篩選條件
select e.ename, e.empno, d.deptno, d.dname
from emp e right outer join dept d on(d.deptno = e.deptno)
where e.empno is null;

select a.empno, a.ename, a.mgr, b.ename from emp a, emp b
where a.mgr = b.empno 
order by a.mgr;


#Moudle 18. 資料連結3 Subquery子查詢
select sal from emp
where empno = 7566;

select empno, ename, sal from emp 
where sal > (select sal from emp where empno = 7566);
             
select empno, ename, sal, job from emp 
where job = (select job from emp where empno = 7499)
and sal > (select sal from emp where empno = 7934); 

select empno, ename, sal, job
from emp where sal > (select avg(sal) from emp);

select deptno, min(sal) from emp
group by deptno
having min(sal) > (select min(sal) from emp where deptno = 20);


#Moudle 19. 資料連結4
select empno, ename from emp
where empno in (select mgr from emp);

select empno, ename from emp
where empno not in (select mgr from emp);
# not無法與null做運算,要再加一句如下

select empno, ename from emp
where empno not in (select mgr from emp
                    where mgr is not null);
             
select empno, ename, job, sal from emp
where sal < any (select sal from emp where job = 'clerk');

select empno, ename, job, sal from emp
where sal > all (select sal from emp where job = 'salesman');


#Moudle 20. 資料連結5
select o1.ordid, o1.custid, o1.orderdate from ord o1
where orderdate = (select max(orderdate) from ord o2
                   where o2.custid = o1.custid)
order by 2;

select custid, max(orderdate) from ord
group by custid;

select ordid, custid, orderdate from ord
where orderdate in (select max(orderdate) from ord
                    group by custid)
order by 2;

select e2.ename, e2.sal, e2.deptno from emp e2
where sal = (select max(sal) from emp e1 where e1.deptno = e2.deptno)
order by deptno;

select empno, ename, job, sal from emp
where deptno = 10;

create table emp10 as
select empno, ename, job, sal from emp
where deptno = 10;

create table emp1 like emp;


#Moudul 21. 
insert into dept(deptno, dname, loc)
value (50, 'development', 'Detorit');