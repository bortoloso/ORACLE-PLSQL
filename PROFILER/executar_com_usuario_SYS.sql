/*
Este script irá habilitar as rotinas do profiler na base

Informar a senha e o serviço(base) para conexão com o usuário SYS em
sys/password@service

Informar o usuário a que serão liberadas as tabelas do profiler em
<user>

Caminho com Oracle XE
/u01/app/oracle/product/11.2.0/xe/rdbms/admin/profload.sql
/u01/app/oracle/product/11.2.0/xe/rdbms/admin/proftab.sql
*/
connect sys/password@service as sysdba
@$oracle_home/rdbms/admin/profload.sql
@$oracle_home/rdbms/admin/proftab.sql

create public synonym plsql_profiler_runs for sys.plsql_profiler_runs;
create public synonym plsql_profiler_units for sys.plsql_profiler_units;
create public synonym plsql_profiler_data for sys.plsql_profiler_data;
create public synonym plsql_profiler_runnumber for sys.plsql_profiler_runnumber;

grant select on plsql_profiler_runnumber to <user>;
grant select, insert, update, delete on plsql_profiler_data to <user>;
grant select, insert, update, delete on plsql_profiler_units to <user>;
grant select, insert, update, delete on plsql_profiler_runs to <user>;
