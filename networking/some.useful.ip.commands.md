# Some useful `ip` commands

Assign an IP to an interface

```
sudo ip addr add <someIp> dev <networkDevice>
```

Check configuration

```
ip addr show
```

Remove an IP address

```
sudo ip addr del <ip>/24 dev <networkDevice>
```

Disable an interface

```
sudo ip link set <networkDevice> down
```

Enable an interface

```
sudo ip link set <networkDevice> up
```

Check routing table

```
ip route show
```

Add a static route

```
sudo ip route add <ip>/24 via <gatewayIp> dev <networkDevice>
```

Remove a static route

```
sudo ip route del <ip>/24
```

Add default gateway

```
sudo ip route add default via <gatewayIp>
```
