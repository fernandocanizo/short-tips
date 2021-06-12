# Renaming `master` to `main`

1. Rename the branch `master` on github under **Settings > Options > Branches**

Then, if you've already cloned it, do these on your local copy:
```
git branch -m master main
git fetch origin
git branch -u origin/main main
git remote set-head origin -a
```
