# Swap file

## Create a swap file

Use one of two options:

- fallocate
- dd

As root use fallocate to create a swap file the size of your choosing (M = Megabytes, G = Gigabytes). For example, creating a 512 MB swap file:

```
fallocate -l 512M /swapfile
```

Note: fallocate may cause problems with some file systems such as F2FS or XFS.[1] As an alternative, using dd is more reliable, but slower:

```
dd if=/dev/zero of=/swapfile bs=1M count=512
```

Set the right permissions (a world-readable swap file is a huge local vulnerability)

```
chmod 600 /swapfile
```

After creating the correctly sized file, format it to swap:

```
mkswap /swapfile
```

Activate the swap file:

```
swapon /swapfile
```

Finally, edit `/etc/fstab` to add an entry for the swap file:

```
/swapfile none swap defaults 0 0
```

## To remove swap file

Turn it off and then delete it:

```
swapoff -a
rm -f /swapfile
```

Finally remove the relevant entry from `/etc/fstab`.
