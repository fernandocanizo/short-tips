# Managing Multiple GitHub Accounts

Requires git >= v2.13 to use [conditional includes](https://git-scm.com/docs/git-config#_conditional_includes)

## Git Configuration

Main config
```
[user]
  name = Your Name
  email = <your-personal-email@example.com>

[github]
  user = "your-personal-github-user"

[core]
  sshCommand = "ssh -i ~/.ssh/your-personal-key"

# overriding stuff for any repository under `work` folder
[includeIf "gitdir:~/work/"]
    path = gitconfig-work
```

And on `gitconfig-work` overriding settings for work account:
```
[user]
  mail = <your-work-email@some-company.com>

[github]
  user = "your-work-github-user"

[core]
  sshCommand = "ssh -i ~/.ssh/your-work-key"
```

## `ssh` Configuration

On `~/.ssh/config`:
```
# personal SSH identity (default)
Host github.com
  HostName github.com
  User git
  IdentityFile ~/.ssh/your-personal-key

# work SSH identity
Host github.com
  HostName work.github.com
  User git
  IdentityFile ~/.ssh/your-work-key
```

## Finally: repository setting

Now, for personal work you can use everything as always, but for work-related projects living under folder `~/work`, you need to modify the remotes on **each** repository:

```
git remote set-url origin git@work.github.com:your-work-github-user/some-repo.git
```
