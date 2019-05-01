# Clone a big project over an unstable connection

Sometimes you cannot finish a clone because your connection is lost in the
middle of the cloning operation, and you have to re-start it from the
beginning, maybe several times, cause it goes down again, and again.

To overcome that, you can:

```
git clone --depth=1 # shallow clone, se trae sólo el primer commit
git fetch --unshallow # traer el resto
# si con el anterior se sigue cortando, traer de a pedazos:
git fetch --depth=<n>
# finalmente mergear:
git merge origin/<whatever>
```
