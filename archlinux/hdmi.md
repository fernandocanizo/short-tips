# HDMI

When no HDMI output, check `xrandr` shows a connected HDMI output:

```
$ xrandr
Screen 0: minimum 320 x 200, current 1920 x 1080, maximum 8192 x 8192
eDP-1 connected primary 1920x1080+0+0 (normal left inverted right x axis y axis) 309mm x 173mm
   1920x1080     60.05*+
   1400x1050     59.98
   1280x1024     60.02
   1280x960      60.00
   1024x768      60.04    60.00
   960x720       60.00
   928x696       60.05
   896x672       60.01
   800x600       60.00    60.32    56.25
   700x525       59.98
   640x512       60.02
   640x480       60.00    59.94
   512x384       60.00
   400x300       60.32    56.34
   320x240       60.05
DP-1 disconnected (normal left inverted right x axis y axis)
HDMI-1 disconnected (normal left inverted right x axis y axis)
DP-2 disconnected (normal left inverted right x axis y axis)
HDMI-2 connected 1920x1080+0+0 (normal left inverted right x axis y axis) 887mm x 500mm
   1920x1080     60.00*+  50.00    59.94    30.00    25.00    24.00    29.97    23.98
   1920x1080i    60.00    50.00    59.94
   1680x1050     59.88
   1600x900      60.00
   1280x1024     75.02    60.02
   1440x900      59.90
   1366x768      59.79
   1280x800      59.91
   1152x864      75.00
   1280x720      60.00    50.00    59.94
   1024x768      75.03    70.07    60.00
   832x624       74.55
   800x600       72.19    75.00    60.32
   720x576       50.00
   720x576i      50.00
   720x480       60.00    59.94
   720x480i      60.00    59.94
   640x480       75.00    72.81    66.67    60.00    59.94
   720x400       70.08
```

A shorter one:

```
$ xrandr --listmonitors
Monitors: 2
 0: +*HDMI-2 1920/887x1080/500+0+0  HDMI-2
 1: +eDP-1 1920/309x1080/173+0+0  eDP-1
```

Also this one will tell you if HDMI output is not active:

```
$ xrandr --listactivemonitors
Monitors: 2
 0: +*HDMI-2 1920/887x1080/500+0+0  HDMI-2
 1: +eDP-1 1920/309x1080/173+0+0  eDP-1
```

Then just tell it to show it with:

`xrandr --output HDMI-2 --auto`
