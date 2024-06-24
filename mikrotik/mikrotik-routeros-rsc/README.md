# mikrotik-routeros

## To use

```Ros Shell
## speedtest.rsc
/tool fetch url="https://raw.githubusercontent.com/buananetpbun/mikrotik-routeros/main/mikrotik-speedtest.rsc" dst-path=speedtest.rsc;

## Import Speedest
/import file-name=speedtest.rsc;

## Mangle Speedtest
/ip firewall mangle add action=mark-routing chain=prerouting dst-address-list=speedtest dst-port=80,443 new-routing-mark=speedtest passthrough=no protocol=tcp

## Speedest ROS v6.xx
/ip route add check-gateway=ping distance=1 gateway="{ip gateway}" routing-mark="speedtest"

## Speedest ROS v7.xx
/routing table add name="speedtest" fib
/ip route add check-gateway=ping distance=1 gateway="{ip gateway}" routing-table="speedtest"

```

## Tanks to
