# Migrate from SVN

## Map users

Create a file to map from SVN user names to git, let's call it `users.txt`:

```
user1=First Last Name <email1@address.com>
user2=First Last Name <email2@address.com>
...
```

You can use this one-liner to build a template from your existing SVN repository:

```
svn log -q | awk -F '|' '/^r/ {gsub(/ /, "", $2); sub(" $", "", $2); print $2" = "$2" <"$2">"}' | sort -u > users.txt
```

## Get SVN data

```
git svn clone --stdlayout --authors-file=users.txt <svn://hostname/path> <dest_dir-tmp>
```

`--stdlayout` flag implies you have the common "trunk/, branches/, tags/" SVN layout. If your layout differs, become familiar with --tags, --branches, --trunk options (in general git svn help).

All common protocols are allowed: svn://, http://, https://. The URL should target the base repository, something like http://svn.mycompany.com/myrepo/repository. The URL string must not include `/trunk`, `/tag` or `/branches`.

Also, if you add the `--no-metadata` flag, Git will not append information about the corresponding SVN revision to the commit message (i.e. git-svn-id: svn://svn.mycompany.com/myrepo/<branchname/trunk>@<RevisionNumber> <Repository UUID>)

## Missing users?

If a user name is not found, update your `users.txt` file and then:
```
cd <dest_dir-tmp>
git svn fetch
```

You might have to repeat that last command several times, if you have a large project, until all of the Subversion commits have been fetched.

## Branches?

If you want to preserve branches, go read the [full answer](https://stackoverflow.com/questions/79165/how-do-i-migrate-an-svn-repository-with-history-to-a-new-git-repository)

## Finally

Clone your GIT-SVN repository into a clean Git repository, this way you get ride of all the SVN stuff:

```
git clone <dest_dir-tmp> <dest_dir>
rm -rf <dest_dir-tmp>
cd <dest_dir>
git remote rm origin  # points to dest_dir-tmp
git remove add origin <new-repo>
```
