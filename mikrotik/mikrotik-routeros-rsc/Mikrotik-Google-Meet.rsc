##########################
# Created By Buananet.com
##########################
/ip firewall raw
rem [find comment="Google Meet - buananetpbun.github.io"]
add action=add-dst-to-address-list address-list=Mikrotik-Mikrotik-Google-Meet address-list-timeout=1d chain=prerouting comment="Google Meet - Buananet.com" content=meet.google.com dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Mikrotik-Google-Meet address-list-timeout=1d chain=prerouting comment="Google Meet - Buananet.com" content=workspace.turns.goog dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Mikrotik-Google-Meet address-list-timeout=1d chain=prerouting comment="Google Meet - Buananet.com" content=meet.turns.goog dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Google-Meet"]
add address=74.125.250.0/24 list=Mikrotik-Google-Meet
add address=142.250.82.0/24 list=Mikrotik-Google-Meet