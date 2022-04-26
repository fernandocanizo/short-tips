# `pnpm`

## Setup

```
corepack enable
```

Probably won't activate latest `pnmp` version, so check which it is and issue:
```
corepack prepare pnpm@<version> --activate
```

## Upgrade

```
pnpm add -g pnpm
```

## Managing Nodejs version or environment

```
pnpm env use --global 16
```
