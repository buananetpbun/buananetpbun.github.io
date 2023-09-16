#####################################
# Created By BuanaNETPBun.Github.io 
#####################################
/ip firewall raw
rem [find comment="Youtube - buananetpbun.github.io"]
add action=add-dst-to-address-list address-list=Mikrotik-Youtube address-list-timeout=1d chain=prerouting comment="Youtube - buananetpbun.github.io" content=.youtube. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Youtube address-list-timeout=1d chain=prerouting comment="Youtube - buananetpbun.github.io" content=.googlevideo. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Youtube address-list-timeout=1d chain=prerouting comment="Youtube - buananetpbun.github.io" content=.youtu. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Youtube address-list-timeout=1d chain=prerouting comment="Youtube - buananetpbun.github.io" content=.ytimg. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Youtube address-list-timeout=1d chain=prerouting comment="Youtube - buananetpbun.github.io" content=yt3.ggpht.com dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Youtube address-list-timeout=1d chain=prerouting comment="Youtube - buananetpbun.github.io" content=youtubei.googleapis.com dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Youtube"]
add address=youtube.com list=Mikrotik-Youtube
add address=nl.youtube.com list=Mikrotik-Youtube
add address=jp.youtube.com list=Mikrotik-Youtube
add address=accounts.youtube.com list=Mikrotik-Youtube
add address=facebook.youtube.com list=Mikrotik-Youtube
add address=admin.youtube.com list=Mikrotik-Youtube
add address=ads.youtube.com list=Mikrotik-Youtube
add address=cms.youtube.com list=Mikrotik-Youtube
add address=p.youtube.com list=Mikrotik-Youtube
add address=rtmp.youtube.com list=Mikrotik-Youtube
add address=contributors.youtube.com list=Mikrotik-Youtube
add address=payments.youtube.com list=Mikrotik-Youtube
add address=fr.youtube.com list=Mikrotik-Youtube
add address=corp.youtube.com list=Mikrotik-Youtube
add address=live.youtube.com list=Mikrotik-Youtube
add address=analytics.youtube.com list=Mikrotik-Youtube
add address=studio.youtube.com list=Mikrotik-Youtube
add address=www.youtube.com list=Mikrotik-Youtube
add address=m.youtube.com list=Mikrotik-Youtube
add address=de.youtube.com list=Mikrotik-Youtube
add address=ca.youtube.com list=Mikrotik-Youtube
add address=help.youtube.com list=Mikrotik-Youtube
add address=parents.youtube.com list=Mikrotik-Youtube
add address=mx.youtube.com list=Mikrotik-Youtube
add address=music.youtube.com list=Mikrotik-Youtube
add address=id.youtube.com list=Mikrotik-Youtube
add address=research.youtube.com list=Mikrotik-Youtube
add address=tv.youtube.com list=Mikrotik-Youtube
add address=tw.youtube.com list=Mikrotik-Youtube
add address=img.youtube.com list=Mikrotik-Youtube
add address=in.youtube.com list=Mikrotik-Youtube
add address=uk.youtube.com list=Mikrotik-Youtube
add address=news.youtube.com list=Mikrotik-Youtube
add address=insight.youtube.com list=Mikrotik-Youtube
add address=ru.youtube.com list=Mikrotik-Youtube
add address=s.youtube.com list=Mikrotik-Youtube
add address=upload.youtube.com list=Mikrotik-Youtube
add address=es.youtube.com list=Mikrotik-Youtube
add address=it.youtube.com list=Mikrotik-Youtube
