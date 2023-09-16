#####################################
# Created By BuanaNETPBun.Github.io 
#####################################
/ip firewall raw
rem [find comment="WhatsApp - buananetpbun.github.io"]
add action=add-dst-to-address-list address-list=Mikrotik-WhatsApp address-list-timeout=1d chain=prerouting comment="WhatsApp - buananetpbun.github.io" content=wa.me dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-WhatsApp address-list-timeout=1d chain=prerouting comment="WhatsApp - buananetpbun.github.io" content=.whatsapp. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-WhatsApp"]
add address=whatsapp.com list=Mikrotik-WhatsApp
add address=v.whatsapp.com list=Mikrotik-WhatsApp
add address=account.whatsapp.com list=Mikrotik-WhatsApp
add address=chat.whatsapp.com list=Mikrotik-WhatsApp
add address=faq.whatsapp.com list=Mikrotik-WhatsApp
add address=web.whatsapp.com list=Mikrotik-WhatsApp
add address=www.whatsapp.com list=Mikrotik-WhatsApp
add address=api.whatsapp.com list=Mikrotik-WhatsApp
add address=autodiscover.whatsapp.com list=Mikrotik-WhatsApp
add address=b.whatsapp.com list=Mikrotik-WhatsApp
add address=blog.whatsapp.com list=Mikrotik-WhatsApp
add address=business.whatsapp.com list=Mikrotik-WhatsApp
add address=wa.me list=Mikrotik-WhatsApp
