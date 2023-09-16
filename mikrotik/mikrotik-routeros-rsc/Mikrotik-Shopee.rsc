#####################################
# Created By BuanaNETPBun.Github.io 
#####################################
/ip firewall raw
rem [find comment="Shopee - buananetpbun.github.io"]
add action=add-dst-to-address-list address-list=Mikrotik-Shopee address-list-timeout=1d chain=prerouting comment="Shopee - buananetpbun.github.io" content=.shopee. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Shopee address-list-timeout=1d chain=prerouting comment="Shopee - buananetpbun.github.io" content=.shopeemobile. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Shopee"]
add address=shopee.co.id list=Mikrotik-Shopee
add address=cdn.shopee.co.id list=Mikrotik-Shopee
add address=v.shopee.co.id list=Mikrotik-Shopee
add address=chat.shopee.co.id list=Mikrotik-Shopee
add address=webdav.shopee.co.id list=Mikrotik-Shopee
add address=share.shopee.co.id list=Mikrotik-Shopee
add address=video.shopee.co.id list=Mikrotik-Shopee
add address=f.shopee.co.id list=Mikrotik-Shopee
add address=accounts.shopee.co.id list=Mikrotik-Shopee
add address=admin.shopee.co.id list=Mikrotik-Shopee
add address=sitemap.shopee.co.id list=Mikrotik-Shopee
add address=feeds.shopee.co.id list=Mikrotik-Shopee
add address=file.shopee.co.id list=Mikrotik-Shopee
add address=affiliate.shopee.co.id list=Mikrotik-Shopee
add address=partner.shopee.co.id list=Mikrotik-Shopee
add address=staging.shopee.co.id list=Mikrotik-Shopee
add address=pay.shopee.co.id list=Mikrotik-Shopee
add address=sts.shopee.co.id list=Mikrotik-Shopee
add address=crm.shopee.co.id list=Mikrotik-Shopee
add address=live.shopee.co.id list=Mikrotik-Shopee
add address=games.shopee.co.id list=Mikrotik-Shopee
add address=gateway.shopee.co.id list=Mikrotik-Shopee
add address=local.shopee.co.id list=Mikrotik-Shopee
add address=www.shopee.co.id list=Mikrotik-Shopee
add address=api.shopee.co.id list=Mikrotik-Shopee
add address=sv.shopee.co.id list=Mikrotik-Shopee
add address=uat.shopee.co.id list=Mikrotik-Shopee
add address=help.shopee.co.id list=Mikrotik-Shopee
add address=test.shopee.co.id list=Mikrotik-Shopee
add address=promo.shopee.co.id list=Mikrotik-Shopee
add address=proxy.shopee.co.id list=Mikrotik-Shopee
add address=tickets.shopee.co.id list=Mikrotik-Shopee
add address=cs.shopee.co.id list=Mikrotik-Shopee
add address=tracking.shopee.co.id list=Mikrotik-Shopee
add address=cv.shopee.co.id list=Mikrotik-Shopee
add address=email.shopee.co.id list=Mikrotik-Shopee
add address=intranet.shopee.co.id list=Mikrotik-Shopee
add address=sandbox.shopee.co.id list=Mikrotik-Shopee
add address=careers.shopee.co.id list=Mikrotik-Shopee
