# Find largest files and directories

```
du -a / | sort -n -r | head -20
```

Another way:

```
find / -type d -size +1G # find directories > 1GB
```

Scan whole system, omiting uninsteresting files and directories:

```
sudo find / -size +100M -not -path "/dev/*" -not -path "/run/*" -not -path "/sys/*" -not -path "/tiles/*" -not -path "/tmp/*" -not -path "/boot/*" -not -path "/home/*" -not -path "/proc/*" -not -path '/swapfile'
```
