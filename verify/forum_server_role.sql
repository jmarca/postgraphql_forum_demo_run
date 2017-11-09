-- Verify forum_demo_run:forum_server_role on pg

BEGIN;

select 1/count(*) from pg_roles where rolname='forum_runner';

ROLLBACK;
