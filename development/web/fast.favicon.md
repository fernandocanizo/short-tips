# Fast favicons

From Lea Verou's twit:
https://twitter.com/LeaVerou/status/1241619866475474946

```
<svg xmlns="http://w3.org/2000/svg" viewBox="0 0 100 100">
<text y=".9em" font-size="90">Pile of poo</text>
</svg>
```

Then Martin Kleppe did:
https://twitter.com/aemkei/status/1242211870448259072

```
<link rel=icon id=i>
<body onload="setInterval(_=>i.href=`data:image/svg+xml,<svg xmlns=%27http://www.w3.org/2000/svg' viewBox='0 0 16 16'><text y='16'>${[...'￼￼￼￼￼￼'][++x%6]}</text></svg>`,x=9)">
```

A version of Lea's with base64 encoding:

```
<link rel="icon" href="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxMDAgMTAwIj48dGV4dCB5PSIuOWVtIiBmb250LXNpemU9IjkwIj7wn5KpPC90ZXh0Pjwvc3ZnPgo=">
```
