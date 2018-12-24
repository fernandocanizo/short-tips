# Create and apply patches with Git

Create patch with last commit. Use a different range to specify more:

```
git format-patch HEAD~
```

Apply all patches found in folder:

```
git am *.patch
```
