

create table course(

id varchar2(5) not null,
name varchar2(40),
credit number(6),
lecturer varchar2(10),
week number(2),
start_hour number(4),
end_end number(4),
primary key (id)

);

--중요  sequence        
create sequence courser_seq
     start with 40002
     increment by 1
     minvalue 40002
     maxvalue 400002;
     
  insert into course values('10001', '프로그래밍', 2, '1', 1, 0900, 1100);   
  
    insert into course values('10002', '객체지향 프로그래밍', 2, '2', 2, 0900, 1200);   
      insert into course values('10003', '자료구조', 3, '4', 3, 0900, 1200);   
        insert into course values('10004', '알고리즘', 3, '4', 4, 0900, 1200);   
        
          insert into course values('20001', '시스템 프로그래밍', 2, '5', 1, 1300, 1600);   
            insert into course values('20002', '운영체제', 3, '5', 2, 1500, 1800);   
              insert into course values('20003', '오토마타와 컴파일러', 3, '5', 3, 1330, 1630);   
              
                insert into course values('30001', '소프트웨어 공학', 2, '3', 4, 1330, 1530);   
                  insert into course values('30002', '시스템 분석 및 설계', 3, '3', 5, 0900, 1200);   
                  
                    insert into course values('40001', '데이터베이스', 3, '2', 5, 1300, 1600);
                
                    select * from course;
                    select id, name, credit, lecturer, week, start_hour, end_end from course order by id asc;
                    
          
                    