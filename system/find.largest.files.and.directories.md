# Find largest files and directories

```
du -a / | sort -n -r | head -20
```

Another way:

```
find / -type d -size +1G # find directories > 1GB
```
