# SVN Cheatsheet

Start by login in:

```
svn auth
```

Checkout a working copy:

```
svn co <url>
```

Informational:

```
svnversion
svn info
svn status
svn log | bat
```

See logs including commits from merged in branches (when you merge a branch into `trunk`, your commits get squashed and aren't shown in a normal `svn log`)

```
svn log --use-merge-history
```

`--use-merge-history` can also be used with `svn blame`

List all files:

```
svn ls -R
```

Diffing

```
svn diff [file]
```

Discard changes to a file

```
svn revert <file>
```

See who did what:

```
svn blame <file>
```

## Branching

Create a branch:

```
svn copy <base-url>/(trunk|whatever) <base-url>/branches/<branch-name> -m 'Branch ...'
```

Switch your current working copy to the new branch:

```
svn switch <branch-url>
```

After some work, integrate changes other collaborators may have done:

```
svn merge <trunk-url>
```

Switch to trunk and merge your branch:

```
svn switch <trunk-url>
svn merge --reintegrate <branch-url>
```

List all branches:

```
svn ls <url-to-branches>
```

Remove a branch:

```
svn delete <branch-url>
```

### Merging a branch sequence

Assuming you are currently on your branch:

```
# bring in possible changes from other people
svn merge <trunk-url>
# won't commit anything if there were no changes
svn commit
svn switch <trunk-url>
# bring into trunk changes made on the branch
svn merge --reintegrate <branch-url>
svn commit
svn delete <branch-url>

```
## Configuration

See configuration

```
svn proplist
```
