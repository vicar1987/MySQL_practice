create table tx
(
   id int primary key,
   ts datetime);


#start transaction;
set autocommit = 0;
	insert into tx values(null,now());
    insert into tx values(null,now());
    insert into tx values(null,now());
    select * from tx;
#commit;
rollback;
    select * from tx;
set autocommit = 1;


start transaction;
    insert into tx values(null,now());
    insert into tx values(null,now());
savepoint tx1;
    insert into tx values(null,now());
    insert into tx values(null,now());
savepoint tx2;
    insert into tx values(null,now());
    insert into tx values(null,now());
savepoint tx3;
    insert into tx values(null,now());
    insert into tx values(null,now());
select * from tx;    
    
 rollback to tx3;
     select * from tx;
     
 rollback to tx2;
     select * from tx;
     
 rollback to tx1;
     select * from tx;
     
rollback;
    select * from tx;


use mysql;
create user vic@localhost identified by '1234';


show tables; 
 
grant all on my_db.* to vic@localhost; 
 

create view empvu10
as
  select * from emp where deptno = 10;