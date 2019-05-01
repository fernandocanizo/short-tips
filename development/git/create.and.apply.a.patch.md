# Create and apply a patch

Usually you'll get a patch for each commit, but if you want to get them all in
a single patch, then create a new branch to make the changes you want in your
patch.

So:

```
git clone <someRepo>

cd <someRepo>

git checkout -b changes.for.patch

# ... make some commits

# build the patch
git format-patch master --stdout > changes.patch

# on the repo to be patched, take a look at what's going to happen
git apply --stat changes.patch

# simulate the application and check if there are errors
git apply --check changes.patch

# finally, apply it
git am < changes.patch
```
