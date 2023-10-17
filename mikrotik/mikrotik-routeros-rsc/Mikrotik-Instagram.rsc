##########################
# Created By Buananet.com
##########################
/ip firewall raw
rem [find comment="Instagram - Buananet.com"]
add action=add-dst-to-address-list address-list=Mikrotik-Instagram address-list-timeout=1d chain=prerouting comment="Instagram - Buananet.com" content=.instagram. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Instagram address-list-timeout=1d chain=prerouting comment="Instagram - Buananet.com" content=.ig.me dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Instagram"]
add address=instagram.com list=Mikrotik-Instagram
add address=secure.instagram.com list=Mikrotik-Instagram
add address=about.instagram.com list=Mikrotik-Instagram
add address=admin.instagram.com list=Mikrotik-Instagram
add address=preprod.instagram.com list=Mikrotik-Instagram
add address=community.instagram.com list=Mikrotik-Instagram
add address=api.instagram.com list=Mikrotik-Instagram
add address=l.instagram.com list=Mikrotik-Instagram
add address=gateway.instagram.com list=Mikrotik-Instagram
add address=www.instagram.com list=Mikrotik-Instagram
add address=survey.instagram.com list=Mikrotik-Instagram
add address=m.instagram.com list=Mikrotik-Instagram
add address=auth.instagram.com list=Mikrotik-Instagram
add address=autodiscover.instagram.com list=Mikrotik-Instagram
add address=maps.instagram.com list=Mikrotik-Instagram
add address=privacy.instagram.com list=Mikrotik-Instagram
add address=prod.instagram.com list=Mikrotik-Instagram
add address=developers.instagram.com list=Mikrotik-Instagram
add address=parents.instagram.com list=Mikrotik-Instagram
add address=help.instagram.com list=Mikrotik-Instagram
add address=blog.instagram.com list=Mikrotik-Instagram
add address=i.instagram.com list=Mikrotik-Instagram
add address=business.instagram.com list=Mikrotik-Instagram
add address=upload.instagram.com list=Mikrotik-Instagram
