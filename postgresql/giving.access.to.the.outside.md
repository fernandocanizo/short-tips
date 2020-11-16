# Giving access to the outside

If you need to access a database from a remote host, you need to give permission
at the firewall level, in AWS that's managed via _Security Groups_, ensure to
open the default port or the one where your database is running.

Also you need to create a user with access to the database or databases you want
and then configure Postgresql to allow conections from the outside:

On `postgresql.conf` uncomment `listen_addresses = 'ip from remote machine'` and
fill it with the remote machine IP (the machine you would use to connect. Or use
an asterisk `*` to accept conections from everywhere.

Then on `pg_hba.conf` allow access for that user. If you want local access too,
then:

```
#local <database> <role> <method>
# example:
local my_db read_only_user md5
```

To give remote access use this other scheme:

```
# host <database> <role> <address> <method>
# use 'all' for address if you want to allow connections from anywhere
# example:
host my_db read_only_user all md5
```

