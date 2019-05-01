# Change git history beyond last commit

```
git rebase -i HEAD^^^
```

Use as many `^` as commits you want to go back or use an SHA commit descriptor
to mark to which point in history you want to change.

Now mark the ones you want to amend with `edit` or `e` (replace `pick`). Save
and exit.

Now make your changes, then:

```
git add -A # or git add <file1> <file2> ...
git commit --amend
git rebase --continue # continues to the next commit
```
