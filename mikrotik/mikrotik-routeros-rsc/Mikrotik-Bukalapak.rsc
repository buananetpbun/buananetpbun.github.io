##########################
# Created By Buananet.com 
##########################
/ip firewall raw
rem [find comment="Bukalapak - Buananet.com"]
add action=add-dst-to-address-list address-list=Mikrotik-Bukalapak address-list-timeout=1d chain=prerouting comment="Bukalapak - Buananet.com" content=.bukalapak. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Bukalapak"]
add address=bukalapak.com list=Mikrotik-Bukalapak
add address=accounts.bukalapak.com list=Mikrotik-Bukalapak
add address=s1.bukalapak.com list=Mikrotik-Bukalapak
add address=s2.bukalapak.com list=Mikrotik-Bukalapak
add address=s3.bukalapak.com list=Mikrotik-Bukalapak
add address=s4.bukalapak.com list=Mikrotik-Bukalapak
add address=www.bukalapak.com list=Mikrotik-Bukalapak
add address=m.bukalapak.com list=Mikrotik-Bukalapak
add address=assets.bukalapak.com list=Mikrotik-Bukalapak
add address=careers.bukalapak.com list=Mikrotik-Bukalapak
