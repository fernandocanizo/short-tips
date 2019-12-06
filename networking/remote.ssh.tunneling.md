# Remote ssh tunneling

**Scenario:** you're developing a web page and you need to show it to your
client, but you have a private IP. So you use a machine that is reachable
via internet and tunnel through it to you machine.

Example:

```
ssh -nNT -R 5432:localhost:30000 ubuntu@homepage.cswlabs.cl
```

Explanation:

`-nNT`
to avoid ssh-ing into the machine, we just want the tunel

`-R`
remote port forwarding

`5432:localhost:30000`
Let's use variables:
`<remotePort>:<yourMachine aka localhost>:<localPort>

`remotePort` is the port you'll open on the machine that's reachable via
internet.

`localPort` a port on your machine where your app is visible.

## Preconditions

- SSH server on remote machine must have `GatewayPorts yes` and
  `AllowTcpForwarding yes`

- `remotePort` must be accesible on your remote machine. For example: AWS
  machines by default doesn't open ports, so you have to ensure the port is
  open.
