# Configuration Tips

## Set up cronjobs to do stuff automatically on your repo

`git maintenance start`

Will setup a series of cronjobs that do several things on a range of different times. Things like fetching changes to the repo every hour and other things that make git faster.

## Apply the same change on merge conflicts

Sometimes when you get into a merge conflict, the same fixes need to be applied several times through each commit, by using `rerere` we can tell git to apply the changes we did once every time the same conflict appears. So yo got to only fix once the code.

`git config --global rerere.enabled true`
