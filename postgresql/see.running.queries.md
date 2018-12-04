# See running queries

To be able to see running queries (not for production servers), configure your `postgresql.conf` with:

```
stats_command_string = true
```

Then restart your server and run:

```
select state, query from pg_stat_activity where state = 'active';
```

If you prefer not to restart the database (or cannot), then:

```
sudo su
su postgres
PGDATA=/var/lib/postgres/data pg_ctl reload
```

Where `PGDATA` should point to **your** postgres data folder.
