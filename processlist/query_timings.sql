select pid as PID,datname as Database,usename as Ueer,client_addr as Host,now() - query_start as Duration,state as State,query as Query from pg_stat_activity where state='active' order by duration desc;
