#####################################
# Created By BuanaNETPBun.Github.io 
#####################################
/ip firewall raw
rem [find comment="Teams - buananetpbun.github.io"]
add action=add-dst-to-address-list address-list=Mikrotik-Teams address-list-timeout=1d chain=prerouting comment="Teams - buananetpbun.github.io" content=*.lync.com dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Teams address-list-timeout=1d chain=prerouting comment="Teams - buananetpbun.github.io" content=.teams. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Teams address-list-timeout=1d chain=prerouting comment="Teams - buananetpbun.github.io" protocol=udp dst-port=3478-3479,3480-3481 dst-address-list=Mikrotik-Teams src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Teams"]
add address=13.107.64.0/18 list=Mikrotik-Teams
add address=52.112.0.0/14 list=Mikrotik-Teams
add address=52.120.0.0/14 list=Mikrotik-Teams
add address=13.70.151.216/32 list=Mikrotik-Teams
add address=13.71.127.197/32 list=Mikrotik-Teams
add address=13.72.245.115/32 list=Mikrotik-Teams
add address=13.73.1.120/32 list=Mikrotik-Teams
add address=13.75.126.169/32 list=Mikrotik-Teams
add address=13.89.240.113/32 list=Mikrotik-Teams
add address=13.107.3.0/24 list=Mikrotik-Teams
add address=13.107.64.0/18 list=Mikrotik-Teams
add address=51.140.155.234/32 list=Mikrotik-Teams
add address=51.140.203.190/32 list=Mikrotik-Teams
add address=51.141.51.76/32 list=Mikrotik-Teams
add address=52.112.0.0/14 list=Mikrotik-Teams
add address=52.163.126.215/32 list=Mikrotik-Teams
add address=52.170.21.67/32 list=Mikrotik-Teams
add address=52.172.185.18/32 list=Mikrotik-Teams
add address=52.178.94.2/32 list=Mikrotik-Teams
add address=52.178.161.139/32 list=Mikrotik-Teams
add address=52.228.25.96/32 list=Mikrotik-Teams
add address=52.238.119.141/32 list=Mikrotik-Teams
add address=52.242.23.189/32 list=Mikrotik-Teams
add address=52.244.160.207/32 list=Mikrotik-Teams
add address=104.215.11.144/32 list=Mikrotik-Teams
add address=104.215.62.195/32 list=Mikrotik-Teams
add address=138.91.237.237/32 list=Mikrotik-Teams
