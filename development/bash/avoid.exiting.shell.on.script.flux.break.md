# Avoid exiting the shell when trying to get out from script

If you write `exit` in your shell scripts, it will probably exit your
current shell. Instead use this, which is like hitting CTRL-C:

```
kill -INT $$
```
