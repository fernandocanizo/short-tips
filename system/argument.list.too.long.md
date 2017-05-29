# Argument list too long error message

If you encounter this error message:

```
$ rm -f *
-bash: /bin/rm: Argument list too long
```

Then you can circumvent that with something like:

```
find . -type f -delete
```
