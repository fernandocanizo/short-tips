# Varnish

Find out if Varnish is taking stuff from memory because it needs more:

```
varnishstat -1 -f n_lru_nuked
```
