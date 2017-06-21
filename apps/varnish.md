# Varnish

Find out if Varnish is taking stuff from memory because it needs more:

```
varnishstat -1 -f n_lru_nuked
```

Each time `n_lru_nuked` counter increases, Varnish throws something out of the
cache because it is running low on storage.
