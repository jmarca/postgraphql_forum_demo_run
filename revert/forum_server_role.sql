-- Revert forum_demo_run:forum_server_role from pg

BEGIN;

set search_path to public;

do $$
begin
    perform true from pg_roles where rolname='forum_runner';
    if found then
       drop role forum_runner;
    end if;
end;
$$;

COMMIT;
