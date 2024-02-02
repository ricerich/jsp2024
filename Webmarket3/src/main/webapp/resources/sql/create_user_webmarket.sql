DROP USER c##webmarket CASCADE; 

CREATE USER c##webmarket IDENTIFIED BY c##webmarket1234 
DEFAULT TABLESPACE users TEMPORARY TABLESPACE temp PROFILE DEFAULT;
alter user c##webmarket default tablespace users quota unlimited on users;

GRANT CONNECT, RESOURCE TO c##webmarket;

ALTER USER c##webmarket ACCOUNT UNLOCK;

