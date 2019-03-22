# Find out video duration

```
ffmpeg -i myvideo 2>&1 | grep Duration | cut -d ' ' -f 4 | sed s/,//
```
