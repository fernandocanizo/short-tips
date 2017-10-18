# Disable pager

\pset pager off

But that doesn't work on `pgcli`, for it edit `~/.config/pgcli/config` and set `pager = cat` or whatever you want (that works). Also, from the REPL you can `\pager cat`, to disable it temporarily.
