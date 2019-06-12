# Swap file

## Create a swap file

Use one of two options:

- fallocate
- dd

As root use fallocate to create a swap file the size of your choosing (M = Megabytes, G = Gigabytes). For example, creating a 512 MB swap file:

```
fallocate -l 512M /swap
```

Note: fallocate may cause problems with some file systems such as F2FS or XFS.[1] As an alternative, using dd is more reliable, but slower:

```
dd if=/dev/zero of=/swap bs=1M count=512
```

Set the right permissions (a world-readable swap file is a huge local vulnerability)

```
chmod 600 /swap
```

After creating the correctly sized file, format it to swap:

```
mkswap /swap
```

Activate the swap file:

```
swapon /swap
```

Finally, edit `/etc/fstab` to add an entry for the swap file:

```
/swap none swap defaults 0 0
```

## To remove swap file

Turn it off and then delete it:

```
swapoff -a
rm -f /swap
```

Finally remove the relevant entry from `/etc/fstab`.

## All in one swoop for a cool script

```
sudo dd if=/dev/zero of=/swap bs=1M count=512 # cambiá el count para definir la cantidad de swap
sudo chmod 600 /swap
sudo mkswap /swap
sudo swapon /swap
sudo echo '/swap none swap defaults 0 0' >> /etc/fstab
```
