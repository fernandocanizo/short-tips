-- List current sessions from the "clients" database:

select * from pg_stat_activity;

-- Cancels the backend process where `procpid` is the process id returned from `pg_stat_activity` for the query you want to cancel

select pg_cancel_backend( <procpid> );

-- Cancels the backend process and terminates the user's session where `procpid` is the process id returned from `pg_stat_activity` for the query you want to cancel

select pg_terminate_backend( <procpid> );
