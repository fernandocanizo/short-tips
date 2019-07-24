# Create read-only users

```
create role <role-you-want-to-create>
  with login password 'changeme!'
  nosuperuser inherit nocreatedb nocreaterole noreplication
  valid until 'infinity';

grant connect on database <your-database-name> to <role-you-want-to-create>;

grant usage on schema public to <role-you-want-to-create>;

grant select on all tables in schema public to <role-you-want-to-create>;

-- next one may not be necessary
grant select on all sequences in schema public to <role-you-want-to-create>;

```
