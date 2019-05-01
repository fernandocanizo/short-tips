# Choose which side to use when haveing merge conflicts

Taken from
http://gitready.com/advanced/2009/02/25/keep-either-file-in-merge-conflicts.html


The scenario is: you’re in the middle of a merge, and you want to keep one file
or the other.

```
git checkout --ours file.with.merge.conflicts
git add file.with.merge.conflicts
git checkout --theirs _another.file.with.merge.conflicts
git add _another.file.with.merge.conflicts
```

Then whatever command to continue your merge, it can be a `git commit` if you
were doing a simple `git merge ...` or if you were rebasing, then `git rebase
--continue`.
