#####################################
# Created By BuanaNETPBun.Github.io 
#####################################
/ip firewall raw
rem [find comment="Threads - buananetpbun.github.io"]
add action=add-dst-to-address-list address-list=Mikrotik-Threads address-list-timeout=1d chain=prerouting comment="Threads - buananetpbun.github.io" content=.threads. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Threads"]
add address=threads.net list=Mikrotik-Threads
add address=www.threads.net list=Mikrotik-Threads
add address=gateway.threads.net list=Mikrotik-Threads
