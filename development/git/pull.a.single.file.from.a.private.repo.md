# Pull a single file from a private repository

```
git archive --format=tar --remote=$SSH_REPO master -- $FILE_NAME | tar xf -
```
