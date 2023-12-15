# Mergin a repo which already has local commits

Taken from an [mpj](https://twitter.com/mpj) video [Weekend Kubernetes
Shenanigans](https://youtube.com/NRrgtUJnkIo).

Say you have already created a repository and now you also already created a
github (or whatever) repository with initial commits, for example if you added
a README.md an or a LICENSE.

Then, how do you merge both into one?

Easy!

```
git remote add origin <https://github.com/your-new-repo>
git pull --rebase origin main
```

Voilá!
