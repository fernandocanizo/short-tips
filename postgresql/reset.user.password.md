# Reset Postgresql user password

```
# you may need to `sudo su` first
sudo -u <user_name> psql <db_name>
```

Then in `psql` console change the password:

```
alter user "<user_name>" with password 'new_password';
```
