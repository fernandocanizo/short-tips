# NFS mounting

See what's available to be mounted:

```
showmount -e <serverNameOrIp>
```

Caveat: you may see stuff that you don't have permission to mount.

Mount something:

```
mount -t nfs -o vers=4 <serverNameOrIp>:/<someExportedFolder> </local/mount/point>
```
