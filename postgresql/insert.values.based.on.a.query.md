# Insert values based on a query

Given table `users` defined as:
- id serial
- name text
- email text

You can create a new row based on a query from this table:

```
insert into users (name, email) (select name, email from users where id = <someId>)
```

If you don't want to provide all fields in the first parenthesis, you must provide an `id`:

```
insert into users  (select nextval('users_id_seq'), name, email from users where id = 1)
```
