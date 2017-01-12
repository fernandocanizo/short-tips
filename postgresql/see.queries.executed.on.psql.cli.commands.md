# See psql queries for commands

To see what query is `psql` executing when running commands like `\d` use its `-E` switch:

```
psql -E -U postgres <tableName>
```
