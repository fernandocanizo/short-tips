# On netwrok connection loss

Bring down interface:

```
sudo netctl stop wlp4s0-csw
sudo ip link set wlp4s0 down
```

Re-start

```
sudo netctl start wlp4s0-csw
```
