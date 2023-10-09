# Using SVN through git

Taken from [git docs](https://git-scm.com/docs/git-svn)

## Clone a repo (like git clone):

```
git svn clone http://svn.example.com/project/trunk
cd trunk
git branch # should be on master branch
```

Do some work and commit **locally** to Git:
```
git commit ...
```

Something is committed to SVN, rebase your local changes against the latest changes in SVN:
```
git svn rebase
```

Now commit your changes (that were committed previously using Git) to SVN, as well as automatically updating your working HEAD:
```
git svn dcommit
```

Append svn:ignore settings to the default Git exclude file:
```
git svn show-ignore >> .git/info/exclude
```
