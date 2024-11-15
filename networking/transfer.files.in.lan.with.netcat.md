# Transfer files in lan withg netcat

Change to the folder where you have your files and:

```
tar -cz . | nc -q 10 -l -p 45454
```

On the receiving computer, change to the folder where you want to put the stuff
and issue:

```
nc -w 10 $REMOTE_HOST_IP 45454 | tar -xz
```
