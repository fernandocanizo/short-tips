# Remove a branch from remote

```
git remote show origin
git gc # garbage collector
git push origin :<remote-branch-name-to-be-deleted>
git fetch origin --prune
```
