-- Deploy forum_demo_run:forum_server_role to pg
-- requires: postgraphql_roles:server_role

BEGIN;

set search_path to public;

do $$
begin
    perform true from pg_roles where rolname='forum_runner';
    if not found then
       create role forum_runner with LOGIN  in role postgraphql_server;
    end if;
end;
$$;
\password forum_runner



COMMIT;
