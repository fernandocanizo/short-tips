# Remove a package and all its dependencies

```
sudo pacman -Rs <package>
```

Also remove configuration files:

```
sudo pacman -Rns <package>
```

Find all orphan packages:

```
pacman -Qtdq
```

Remove all orphan packages:

```
sudo pacman -Rns $(pacman -Qtdq)
```
