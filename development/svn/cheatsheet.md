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

## Configuration

See configuration

```
svn proplist
```
