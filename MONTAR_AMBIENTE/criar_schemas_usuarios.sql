/* Ambiente de PRODUÇÃO */
create tablespace prd
logging datafile 'prd.dbf'
size 100m autoextend on next 100m extent management local;

create user prd
identified by <informar senha>
default tablespace prd
quota unlimited on prd;

grant
create session,
alter session,
create table,
create procedure,
create view,
create materialized view,
create trigger,
create sequence,
create any directory,
create type,
create synonym
to
prd;

/* Ambiente de DESENVOVLIMENTO */
create tablespace dev
logging datafile 'dev.dbf'
size 100m autoextend on next 100m extent management local;

create user dev
identified by <informar senha>
default tablespace dev
quota unlimited on dev;

grant
create session,
alter session,
create table,
create procedure,
create view,
create materialized view,
create trigger,
create sequence,
create any directory,
create type,
create synonym
to
dev;

/* Ambiente de TESTES */
create tablespace test
logging datafile 'test.dbf'
size 100m autoextend on next 100m extent management local;

create user test
identified by <informar senha>
default tablespace test
quota unlimited on test;

grant
create session,
alter session,
create table,
create procedure,
create view,
create materialized view,
create trigger,
create sequence,
create any directory,
create type,
create synonym
to
test;
