# Delete a remote tag

```
# remove local tag
git tag -d v1.0.0
# now push to to remote, `origin` can be any other remote
git push origin :refs/tags/v1.0.0
```
