# See commit differences between branches

```
git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset' --abbrev-commit --date=relative branch-1..branch-2
```

A shorter and more readable one:

```
git log --oneline --graph --all --decorate branch-1..branch-2
```

Even shorter:

```
git log --oneline --decorate branch-1..branch-2
```

Make last default:

```
git config --global log.decorate true
git config --global log.abbrevCommit true
```

Another one:

```
git cherry -v --abbrev branch-to-compare-this-one-to
```

Diff between two branches from common ancestor commit

```
git diff branch-1...branch-2
```

Compare files between branches

```
git diff branch-1:file branch-2:file
```
