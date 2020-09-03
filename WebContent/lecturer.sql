

create table lecturer(

idx number(6) not null,
name varchar2(10),
major varchar2(30),
field varchar2(30),
primary key(idx)
);


insert into lecturer values(1, '김교수', '소프트웨어공학', '알고리즘');
insert into lecturer values(2, '이교수', '소프트웨어공학', '소프트웨어공학');
insert into lecturer values(3, '박교수', '소프트웨어공학', '소프트웨어공학');
insert into lecturer values(4, '우교수', '소프트웨어공학', '알고리즘');
insert into lecturer values(5, '최교수', '응용컴퓨터웨어공학', '임베디드 시스템');
insert into lecturer values(6, '강교수', '응용컴퓨터웨어공학', '멀티미디어');
insert into lecturer values(7, '황교수', '모바일시스템공학', '네트워크');

select * from lecturer;