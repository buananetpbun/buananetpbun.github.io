##########################
# Created By Buananet.com
##########################
/ip firewall raw
rem [find comment="Lazada - Buananet.com"]
add action=add-dst-to-address-list address-list=Mikrotik-Lazada address-list-timeout=1d chain=prerouting comment="Lazada - Buananet.com" content=.lazada. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Lazada"]
add address=lazada.co.id list=Mikrotik-Lazada
add address=enterpriseenrollment.lazada.co.id list=Mikrotik-Lazada
add address=enterpriseregistration.lazada.co.id list=Mikrotik-Lazada
add address=shop.lazada.co.id list=Mikrotik-Lazada
add address=a.lazada.co.id list=Mikrotik-Lazada
add address=homer.lazada.co.id list=Mikrotik-Lazada
add address=admin.lazada.co.id list=Mikrotik-Lazada
add address=pages.lazada.co.id list=Mikrotik-Lazada
add address=web.lazada.co.id list=Mikrotik-Lazada
add address=affiliate.lazada.co.id list=Mikrotik-Lazada
add address=community.lazada.co.id list=Mikrotik-Lazada
add address=content.lazada.co.id list=Mikrotik-Lazada
add address=lms.lazada.co.id list=Mikrotik-Lazada
add address=m.lazada.co.id list=Mikrotik-Lazada
add address=static.lazada.co.id list=Mikrotik-Lazada
add address=www.lazada.co.id list=Mikrotik-Lazada
add address=store.lazada.co.id list=Mikrotik-Lazada
add address=api.lazada.co.id list=Mikrotik-Lazada
add address=u.lazada.co.id list=Mikrotik-Lazada
add address=media.lazada.co.id list=Mikrotik-Lazada
add address=member.lazada.co.id list=Mikrotik-Lazada
add address=survey.lazada.co.id list=Mikrotik-Lazada
add address=cart.lazada.co.id list=Mikrotik-Lazada
add address=hr.lazada.co.id list=Mikrotik-Lazada
add address=msoid.lazada.co.id list=Mikrotik-Lazada
add address=i.lazada.co.id list=Mikrotik-Lazada
add address=www-dev.lazada.co.id list=Mikrotik-Lazada
add address=my.lazada.co.id list=Mikrotik-Lazada
add address=cs.lazada.co.id list=Mikrotik-Lazada
add address=venus.lazada.co.id list=Mikrotik-Lazada
add address=bob.lazada.co.id list=Mikrotik-Lazada
add address=s.lazada.co.id list=Mikrotik-Lazada
add address=c.lazada.co.id list=Mikrotik-Lazada
