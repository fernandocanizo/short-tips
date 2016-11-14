# Tips for `npm`


## Add shell completion

```
npm completion >> ~/.bashrc
```


## Define defaults for `npm init`

```
npm config set init.author.name <name>
npm config set init.author.email <email>
```


## Lockdown dependencies

Pin to major version (default):
```
npm config set save-prefix="^"
```

Pin to minor version:
```
npm config set save-prefix="~"
```

Pin to exact version:
```
npm config set save-exact true
```

Or use:

```
npm shrinkwrap
```


## List outdated packages

```
npm outdated
```
