#####################################
# Created By BuanaNETPBun.Github.io 
#####################################
/ip firewall raw
rem [find comment="Iflix - buananetpbun.github.io"]
add action=add-dst-to-address-list address-list=Mikrotik-Iflix address-list-timeout=1d chain=prerouting comment="Iflix - buananetpbun.github.io" content=.iflix. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Iflix"]
add address=iflix.com list=Mikrotik-Iflix
add address=cdn.iflix.com list=Mikrotik-Iflix
add address=video.iflix.com	list=Mikrotik-Iflix
add address=site.iflix.com list=Mikrotik-Iflix
add address=faq.iflix.com list=Mikrotik-Iflix
add address=vod.iflix.com list=Mikrotik-Iflix
add address=access.iflix.com list=Mikrotik-Iflix
add address=preprod.iflix.com list=Mikrotik-Iflix
add address=accounts.iflix.com list=Mikrotik-Iflix
add address=partner.iflix.com list=Mikrotik-Iflix
add address=staging.iflix.com list=Mikrotik-Iflix
add address=start.iflix.com list=Mikrotik-Iflix
add address=payments.iflix.com list=Mikrotik-Iflix
add address=wiki.iflix.com list=Mikrotik-Iflix
add address=link.iflix.com list=Mikrotik-Iflix
add address=links.iflix.com	list=Mikrotik-Iflix
add address=source.iflix.com list=Mikrotik-Iflix
add address=sun.iflix.com list=Mikrotik-Iflix
add address=www.iflix.com list=Mikrotik-Iflix
add address=live.iflix.com list=Mikrotik-Iflix
add address=gateway.iflix.com list=Mikrotik-Iflix
add address=analytics.iflix.com	list=Mikrotik-Iflix
add address=m.iflix.com list=Mikrotik-Iflix
add address=mail.iflix.com list=Mikrotik-Iflix
add address=git.iflix.com list=Mikrotik-Iflix
add address=app.iflix.com list=Mikrotik-Iflix
add address=dev.iflix.com list=Mikrotik-Iflix
add address=developer.iflix.com list=Mikrotik-Iflix
add address=test.iflix.com list=Mikrotik-Iflix
add address=docs.iflix.com list=Mikrotik-Iflix
add address=blog.iflix.com list=Mikrotik-Iflix
add address=image.iflix.com list=Mikrotik-Iflix
add address=tv.iflix.com list=Mikrotik-Iflix
add address=upload.iflix.com list=Mikrotik-Iflix
add address=info.iflix.com list=Mikrotik-Iflix
