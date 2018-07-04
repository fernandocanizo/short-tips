# Recover from git disaster

If you ever mess up things using git, for example you want to look code status
on a previous commit but instead of doing `git checkout <commit>` you issue
`git reset <commit>`, or even `git reset <commit> --hard`, then you must resort
to `git reflog`:

```
git reflog # to check which one is the state you want to restore then...
git reset <reflog reference>
```

For example `git reset HEAD@{1}`.
