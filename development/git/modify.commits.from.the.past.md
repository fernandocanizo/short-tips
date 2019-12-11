# Modify commits from the past

You can use `git commit --amend` to modify the last commit, but what if
your commit is beyond that one?

```
git add .

git commit --fixup HEAD~1
# or replace HEAD~1 by the commit hash

git rebase -i HEAD~3 --autosquash
# save&quit the file (:wq in VI)
```

The example uses `HEAD~3` because that's where `master` is (or it could be
the original branch from where we branched).
