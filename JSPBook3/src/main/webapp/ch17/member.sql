drop table member;

CREATE TABLE  member2(
   id VARCHAR2(40) NOT NULL,
   passwd  VARCHAR2(40),
   name VARCHAR2(60),    
   PRIMARY KEY (id)
);
INSERT INTO member2 VALUES('1', '1234', '홍길순');
INSERT INTO member2 VALUES('2', '1235', '홍길동');


select * from member2;
