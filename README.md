# running the forum demo

This package contains the necessary bits and bobs to run the
Postgraphql forum demo.  It depends on two other packages, and
requires that you have `sqitch` and `pg_tap`/`pg_prove` installed.

I'm working on setting things up so that install and run is mostly
automated, but I'm not there yet.

First, you need to have sqitch installed locally.

The Dockerfile and docker-compose.yml will let you run
postgresql with pg_tap installed in a container.  It is not yet set up
to run docker for the server as well.

Run this Dockerfile to fire up postgresql 10 (or whatever
postgresql:latest is at the moment), or run postgresql as usual, then
set a bunch of environment variables in order to have things install
properly.


```
SQITCH_DB_USER # default is postgres
SQITCH_DB_HOST # default is 127.0.0.1
SQITCH_DB_PORT # default is 5432, but if you run my container
               # it should be  6543
SQITCH_DB      # default is sqitch
SECRET         # really, don't accept the default here
               # (backwared_bayball_kap), rather set this yourself


## and you probably don't need to change these:
SQITCH_DB_URI  # default is
           # db:pg://$SQITCH_DB_USER@$SQITCH_DB_HOST:$SQITCH_DB_PORT/$SQITCH_DB}
FORUM_DB # default is
           # forum_runner@$SQITCH_DB_HOST:$SQITCH_DB_PORT/$SQITCH_DB}
```

Once these variables are set, you should be able to install the sqitch
packages by running

```
npm install
```

Then to run the postgraphql server, run

```
npm start
```
