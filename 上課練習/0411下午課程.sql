insert into dept(deptno, dname)
value(60, 'MIS');

insert into dept(deptno, dname)
value(70, 'HR', null);

insert into emp values (8001, 'James', 'Analyst', 7839, current_date(), 2500, NULL, 20);
insert into emp values (8002, 'John', 'Salesman', 7839, '1983-03-25', 1400, 500, 30);

insert into emp1 
select * from emp where deptno = 10;

update emp set deptno = 20 where empno = 7782;
update emp set sal = 1000 where empno = 7900;
update emp set sal = 2000 where empno > 8000;

update emp set job = 'Salesman', deptno = 30 where empno = 7369;

select deptno from dept where dname = 'HR';
update emp set deptno = (select deptno from dept where dname = 'HR')
where empno = 7900;

update emp set sal = sal+500
where deptno = (select deptno from dept where dname = 'sales');

delete from dept where deptno = 50;

update emp set deptno = 30
where empno = 7900;
delete from dept where deptno = 70;
#無法刪除資料時,有可能是因為該資料列還有再被使用,因此要先排除使用後才能刪除


update emp set deptno = 55
where deptno = 10;
#deptno = 55不存在,因此無法直接套改,要先建立部門編號55的資料表格之後才可以使用

insert into emp(empno, ename, job, deptno)
values (9001, 'Sandy', 'Clerk', NULL);
#deptno有設定為Not Null,因此不可輸入null,要輸入數值

create table dept122
( deptno smallint(4) primary key not null,
  dname  varchar(14) not null,
  loc    varchar(13));
  
  
create table T1
(
  PK       int not null primary key,
  Fk       int,

constraint FK_T1_FK foreign key(FK) references T1(PK)
) engine = innodb;

create table T2
(
  Fk       int,

constraint FK_T2_FK foreign key(FK) references T1(PK)
) engine = innodb;


drop table T2;
drop table T1;
create table T1
( PK   smallint not null primary key
) engine = innodb;

create table T2
( FK   smallint,
  C2   char(2),
  foreign key(FK) references T1(PK) on delete cascade
) engine = innodb;

insert into T1 values(1),(2),(3);
insert into T2 values(1,'A1'),(2,'A2'),(2,'A2'),(3,'A3');


drop table T2;
drop table T1;
create table T1
( PK   smallint not null primary key
) engine = innodb;

create table T2
( FK   smallint,
  C2   char(2),
  foreign key(FK) references T1(PK) on delete set null
) engine = innodb;

insert into T1 values(1),(2),(3);
insert into T2 values(1,'A1'),(2,'A2'),(2,'A2'),(3,'A3');


drop table T2;
drop table T1;
create table T1
( PK   smallint not null primary key
) engine = innodb;

create table T2
( FK   smallint,
  C2   char(2),
  foreign key(FK) references T1(PK) on delete restrict
) engine = innodb;

insert into T1 values(1),(2),(3);
insert into T2 values(1,'A1'),(2,'A2'),(2,'A2'),(3,'A3');


drop table T2;
drop table T1;
create table T1
( PK   smallint not null primary key
) engine = innodb;

create table T2
( FK   smallint,
  C2   char(2),
  foreign key(FK) references T1(PK) on update set null
) engine = innodb;

insert into T1 values(1),(2),(3);
insert into T2 values(1,'A1'),(2,'A2'),(2,'A2'),(3,'A3');