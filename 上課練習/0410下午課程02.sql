select *
from emp e1 cross join dept d1;

select *
from emp e1, dept d1;
#上面兩種寫法所得之結果相同

select e.empno, e.ename, e.job, e.sal, e. deptno, d.dname, d.loc
from emp e natural join dept d;

select e.empno, e.ename, e.job, e.sal, e. deptno, d.dname, d.loc
from emp e natural join dept d
where e.deptno = 10;

select e.empno, e.ename, e.job, e.sal, e. deptno, d.dname, d.loc
from emp e join dept d using(deptno)
where e.deptno = 10;

select e.empno, e.ename, e.job, e.sal, e. deptno, d.dname, d.loc
from emp e join dept d on(e.deptno = d.deptno);

select e.empno, e.ename, e.job, e.sal, e. deptno, d.dname, d.loc
from emp e, dept d
where e.deptno = d.deptno;

select e.empno, e.ename, e.job, e.sal, e. deptno, d.dname, d.loc
from emp e join dept d on(e.deptno = d.deptno)
where e.deptno = 20;

select e.empno, e.ename, e.job, e.sal, e. deptno, d.dname, d.loc
from emp e, dept d
where e.deptno = d.deptno and e.deptno = 20;

select e.empno, e.ename, e.job, e.sal, e. deptno, d.dname, d.loc
from emp e join dept d on(e.deptno = d.deptno)
where e.ename = 'King';

select e.empno, e.ename, e.job, e.sal, e. deptno, d.dname, d.loc
from emp e, dept d
where e.deptno = d.deptno and e.ename = 'King';

select c.name, c.custid, o.ordid
from customer c, ord o
where c.custid = o.custid;

select c.name, c.custid, o.ordid, i.itemid, i.prodid
from customer c join ord o on(c.custid = o.custid)
				join item i on(o.ordid = i.ordid);

select c.name, c.custid, o.ordid, i.itemid, i.prodid
from customer c, ord o, item i
where c.custid = o.custid and o.ordid = i.ordid;

select e.empno, e.ename, e.job, c.name, c.custid, o.ordid, i.itemid, i.prodid
from emp e, customer c, ord o, item i
where e.empno = c.repid and c.custid = o.custid and o.ordid = i.ordid;

select e.empno, e.ename, sum(o.total)
from emp e, customer c, ord o
where e.empno = c.repid and c.custid = o.custid
group by e.empno, e.ename;

select  e.empno, e.ENAME, sum(o.TOTAL) total
from emp e join customer c  on( e.EMPNO = c.repid )
           join ord o on( c.custid = o.custid )
group by e.ENAME
order by total
;
