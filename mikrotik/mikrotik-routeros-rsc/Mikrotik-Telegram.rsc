#####################################
# Created By BuanaNETPBun.Github.io 
#####################################
/ip firewall raw
rem [find comment="Telegram - buananetpbun.github.io"]
add action=add-dst-to-address-list address-list=Mikrotik-Telegram address-list-timeout=1d chain=prerouting comment="Telegram - buananetpbun.github.io" content=t.me dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Telegram address-list-timeout=1d chain=prerouting comment="Telegram - buananetpbun.github.io" content=.telegram. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Telegram"]
add address=telegram.org list=Mikrotik-Telegram
add address=api.telegram.org list=Mikrotik-Telegram
add address=mx1.telegram.org list=Mikrotik-Telegram
add address=mx2.telegram.org list=Mikrotik-Telegram
add address=mail.telegram.org list=Mikrotik-Telegram
add address=mx10.telegram.org list=Mikrotik-Telegram
add address=149.154.172.0/22 list=Mikrotik-Telegram
add address=149.154.168.0/22 list=Mikrotik-Telegram
add address=149.154.164.0/22 list=Mikrotik-Telegram
add address=91.108.56.0/22 list=Mikrotik-Telegram
add address=91.108.4.0/22 list=Mikrotik-Telegram
