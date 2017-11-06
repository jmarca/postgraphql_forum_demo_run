psql -d forum_test -c "create user forum_runner password '${FORUM_SERVER_PASS} in role postgraphql_server"
