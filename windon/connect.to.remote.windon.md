# Connect to remote Windows machine

On the package `freerdp` comes the utility `xfreerdp`:

```
xfreerdp \
  /u:"The User"\
  /p:'The Password'\
  /v:<The IP o Domain>:<The port, by default is 3389>\
  -toggle-fullscreen\
  /window-position:0x0\
  /w:1800\
  /h:1000\
  +compression\
  /a:drive,<Path on remote machine>,<Local path to export>
```


