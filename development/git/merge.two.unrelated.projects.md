# Merge two unrelated projects

```
git remote add unrelated-repo <url|path>
git fetch unrelated-repo
git merge --no-ff unrelated-repo/<branch> -s recursive --allow-unrelated-histories
git remote remove unrelated-repo
```
