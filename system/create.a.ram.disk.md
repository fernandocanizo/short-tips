# Create a RAM disk

Since you probably want the disk to be mounted on start, the best method is to edit `/etc/fstab`:

```
sudo mkdir /ramdisk
sudo echo 'tmpfs /ramdisk tmpfs nodev,nosuid,noexec,nodiratime,size=1024M 0 0' >> /etc/fstab
```

If you just want a temporary disk, then use `mount -t [TYPE] -o size=[SIZE] [FSTYPE] [MOUNTPOINT]`

Substitute the following attributes for your own values:

- [TYPE] is the type of RAM disk to use; either `tmpfs` or `ramfs`. `tmpfs` is the newer and recommended.
- [SIZE] is the size to use for the file system. Remember that ramfs does not have a physical limit and is specified as a starting size.
- [FSTYPE] is the type of RAM disk to use; either `tmpfs`, `ramfs`, `ext4`, etc.

```
mount -t tmpfs -o size=512m tmpfs /mnt/ramdisk
```
