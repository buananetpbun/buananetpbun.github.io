#####################################
# Created By Buananet.com
#####################################
/ip firewall raw
rem [find comment="Tiktok - Buananet.com"]
add action=add-dst-to-address-list address-list=Mikrotik-Tiktok address-list-timeout=1d chain=prerouting comment="Tiktok - Buananet.com" content=.tiktok. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Tiktok address-list-timeout=1d chain=prerouting comment="Tiktok - Buananet.com" content=.tiktoktv. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Tiktok address-list-timeout=1d chain=prerouting comment="Tiktok - Buananet.com" content=.e.tiktok. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Tiktok address-list-timeout=1d chain=prerouting comment="Tiktok - Buananet.com" content=.tiktokcdn. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Tiktok address-list-timeout=1d chain=prerouting comment="Tiktok - Buananet.com" content=.musical. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Tiktok"]
add address=147.160.176.0/24 list=Mikrotik-Tiktok
add address=147.160.177.0/24 list=Mikrotik-Tiktok
add address=147.160.178.0/24 list=Mikrotik-Tiktok
add address=147.160.179.0/24 list=Mikrotik-Tiktok
add address=147.160.180.0/24 list=Mikrotik-Tiktok
add address=147.160.181.0/24 list=Mikrotik-Tiktok
add address=147.160.182.0/24 list=Mikrotik-Tiktok
add address=147.160.183.0/24 list=Mikrotik-Tiktok
add address=147.160.184.0/24 list=Mikrotik-Tiktok
add address=147.160.185.0/24 list=Mikrotik-Tiktok
add address=147.160.187.0/24 list=Mikrotik-Tiktok
add address=147.160.188.0/24 list=Mikrotik-Tiktok
add address=147.160.189.0/24 list=Mikrotik-Tiktok
add address=147.160.190.0/24 list=Mikrotik-Tiktok
add address=147.160.191.0/24 list=Mikrotik-Tiktok
add address=103.136.221.0/24 list=Mikrotik-Tiktok
add address=103.136.220.0/24 list=Mikrotik-Tiktok
add address=103.136.220.0/23 list=Mikrotik-Tiktok
add address=192.64.14.0/24 list=Mikrotik-Tiktok
add address=199.103.24.0/24 list=Mikrotik-Tiktok
add address=199.103.25.0/24 list=Mikrotik-Tiktok
add address=130.44.212.0/24 list=Mikrotik-Tiktok
add address=130.44.213.0/24 list=Mikrotik-Tiktok
add address=130.44.214.0/24 list=Mikrotik-Tiktok
add address=130.44.215.0/24 list=Mikrotik-Tiktok
add address=139.177.224.0/24 list=Mikrotik-Tiktok
add address=139.177.225.0/24 list=Mikrotik-Tiktok
add address=139.177.226.0/24 list=Mikrotik-Tiktok
add address=139.177.254.0/24 list=Mikrotik-Tiktok
add address=139.177.255.0/24 list=Mikrotik-Tiktok
add address=tiktok.com list=Mikrotik-Tiktok
add address=service.tiktok.com list=Mikrotik-Tiktok
add address=account.tiktok.com list=Mikrotik-Tiktok
add address=shop.tiktok.com list=Mikrotik-Tiktok
add address=ads.tiktok.com list=Mikrotik-Tiktok
add address=affiliate.tiktok.com list=Mikrotik-Tiktok
add address=partners.tiktok.com list=Mikrotik-Tiktok
add address=library.tiktok.com list=Mikrotik-Tiktok
add address=analytics.tiktok.com list=Mikrotik-Tiktok
add address=live.tiktok.com list=Mikrotik-Tiktok
add address=api.tiktok.com list=Mikrotik-Tiktok
add address=www.tiktok.com list=Mikrotik-Tiktok
add address=login.tiktok.com list=Mikrotik-Tiktok
add address=m.tiktok.com list=Mikrotik-Tiktok
add address=support.tiktok.com list=Mikrotik-Tiktok
add address=survey.tiktok.com list=Mikrotik-Tiktok
add address=autodiscover.tiktok.com list=Mikrotik-Tiktok
add address=lp.tiktok.com list=Mikrotik-Tiktok
add address=t.tiktok.com list=Mikrotik-Tiktok
add address=dev.tiktok.com list=Mikrotik-Tiktok
add address=vm.tiktok.com list=Mikrotik-Tiktok
add address=developer.tiktok.com list=Mikrotik-Tiktok
add address=developers.tiktok.com list=Mikrotik-Tiktok
add address=test.tiktok.com list=Mikrotik-Tiktok
add address=music.tiktok.com list=Mikrotik-Tiktok
add address=mx1.tiktok.com list=Mikrotik-Tiktok
add address=mx2.tiktok.com list=Mikrotik-Tiktok
add address=mx3.tiktok.com list=Mikrotik-Tiktok
add address=business.tiktok.com list=Mikrotik-Tiktok
add address=in.tiktok.com list=Mikrotik-Tiktok
add address=tv.tiktok.com list=Mikrotik-Tiktok
add address=careers.tiktok.com list=Mikrotik-Tiktok
add address=us.tiktok.com list=Mikrotik-Tiktok
