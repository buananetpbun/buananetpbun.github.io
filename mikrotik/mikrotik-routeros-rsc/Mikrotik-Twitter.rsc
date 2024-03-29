#########################
# Created By Buananet.com
#########################
/ip firewall raw
rem [find comment="Twitter - buananetpbun.github.io"]
add action=add-dst-to-address-list address-list=Mikrotik-Twitter address-list-timeout=1d chain=prerouting comment="Twitter - Buananet.com" content=.twitter. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Twitter address-list-timeout=1d chain=prerouting comment="Twitter - Buananet.com" content=twitter-alternate. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Twitter address-list-timeout=1d chain=prerouting comment="Twitter - Buananet.com" content=.twimg. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Twitter"]
add address=69.195.160.0/24 list=Mikrotik-Twitter
add address=69.195.162.0/24 list=Mikrotik-Twitter
add address=69.195.163.0/24 list=Mikrotik-Twitter
add address=69.195.164.0/24 list=Mikrotik-Twitter
add address=69.195.165.0/24 list=Mikrotik-Twitter
add address=69.195.166.0/24 list=Mikrotik-Twitter
add address=69.195.168.0/24 list=Mikrotik-Twitter
add address=69.195.169.0/24 list=Mikrotik-Twitter
add address=69.195.171.0/24 list=Mikrotik-Twitter
add address=69.195.172.0/24 list=Mikrotik-Twitter
add address=69.195.173.0/24 list=Mikrotik-Twitter
add address=69.195.175.0/24 list=Mikrotik-Twitter
add address=69.195.176.0/24 list=Mikrotik-Twitter
add address=69.195.177.0/24 list=Mikrotik-Twitter
add address=69.195.178.0/24 list=Mikrotik-Twitter
add address=69.195.179.0/24 list=Mikrotik-Twitter
add address=69.195.180.0/24 list=Mikrotik-Twitter
add address=69.195.181.0/24 list=Mikrotik-Twitter
add address=69.195.182.0/24 list=Mikrotik-Twitter
add address=69.195.184.0/24 list=Mikrotik-Twitter
add address=69.195.185.0/24 list=Mikrotik-Twitter
add address=69.195.186.0/24 list=Mikrotik-Twitter
add address=69.195.187.0/24 list=Mikrotik-Twitter
add address=69.195.188.0/24 list=Mikrotik-Twitter
add address=69.195.189.0/24 list=Mikrotik-Twitter
add address=69.195.190.0/24 list=Mikrotik-Twitter
add address=69.195.191.0/24 list=Mikrotik-Twitter
add address=104.244.40.0/24 list=Mikrotik-Twitter
add address=104.244.41.0/24 list=Mikrotik-Twitter
add address=104.244.42.0/24 list=Mikrotik-Twitter
add address=104.244.43.0/24 list=Mikrotik-Twitter
add address=104.244.44.0/24 list=Mikrotik-Twitter
add address=104.244.45.0/24 list=Mikrotik-Twitter
add address=104.244.46.0/24 list=Mikrotik-Twitter
add address=104.244.47.0/24 list=Mikrotik-Twitter
add address=185.45.5.0/24 list=Mikrotik-Twitter
add address=185.45.6.0/23 list=Mikrotik-Twitter
add address=192.133.76.0/22 list=Mikrotik-Twitter
add address=192.133.76.0/23 list=Mikrotik-Twitter
add address=199.16.156.0/22 list=Mikrotik-Twitter
add address=199.16.156.0/23 list=Mikrotik-Twitter
add address=199.59.148.0/22 list=Mikrotik-Twitter
add address=199.96.56.0/23 list=Mikrotik-Twitter
add address=199.96.56.0/24 list=Mikrotik-Twitter
add address=199.96.57.0/24 list=Mikrotik-Twitter
add address=199.96.58.0/23 list=Mikrotik-Twitter
add address=199.96.60.0/23 list=Mikrotik-Twitter
add address=199.96.60.0/24 list=Mikrotik-Twitter
add address=199.96.61.0/24 list=Mikrotik-Twitter
add address=199.96.62.0/23 list=Mikrotik-Twitter
add address=202.160.128.0/24 list=Mikrotik-Twitter
add address=202.160.129.0/24 list=Mikrotik-Twitter
add address=202.160.130.0/24 list=Mikrotik-Twitter
add address=202.160.131.0/24 list=Mikrotik-Twitter
add address=209.237.192.0/24 list=Mikrotik-Twitter
add address=209.237.193.0/24 list=Mikrotik-Twitter
add address=209.237.194.0/24 list=Mikrotik-Twitter
add address=209.237.195.0/24 list=Mikrotik-Twitter
add address=209.237.196.0/24 list=Mikrotik-Twitter
add address=209.237.197.0/24 list=Mikrotik-Twitter
add address=209.237.198.0/24 list=Mikrotik-Twitter
add address=209.237.199.0/24 list=Mikrotik-Twitter
add address=209.237.200.0/24 list=Mikrotik-Twitter
add address=209.237.201.0/24 list=Mikrotik-Twitter
add address=209.237.204.0/24 list=Mikrotik-Twitter
add address=209.237.205.0/24 list=Mikrotik-Twitter
add address=209.237.206.0/24 list=Mikrotik-Twitter
add address=209.237.207.0/24 list=Mikrotik-Twitter
add address=209.237.208.0/24 list=Mikrotik-Twitter
add address=209.237.209.0/24 list=Mikrotik-Twitter
add address=209.237.210.0/24 list=Mikrotik-Twitter
add address=209.237.211.0/24 list=Mikrotik-Twitter
add address=209.237.212.0/24 list=Mikrotik-Twitter
add address=209.237.213.0/24 list=Mikrotik-Twitter
add address=209.237.214.0/24 list=Mikrotik-Twitter
add address=209.237.215.0/24 list=Mikrotik-Twitter
add address=209.237.216.0/24 list=Mikrotik-Twitter
add address=209.237.217.0/24 list=Mikrotik-Twitter
add address=209.237.218.0/24 list=Mikrotik-Twitter
add address=209.237.219.0/24 list=Mikrotik-Twitter
add address=209.237.220.0/24 list=Mikrotik-Twitter
add address=209.237.221.0/24 list=Mikrotik-Twitter
add address=209.237.222.0/24 list=Mikrotik-Twitter
add address=209.237.223.0/24 list=Mikrotik-Twitter
add address=twitter.com list=Mikrotik-Twitter
add address=sa.twitter.com list=Mikrotik-Twitter
add address=event.twitter.com list=Mikrotik-Twitter
add address=events.twitter.com list=Mikrotik-Twitter
add address=aa.twitter.com list=Mikrotik-Twitter
add address=about.twitter.com list=Mikrotik-Twitter
add address=video.twitter.com list=Mikrotik-Twitter
add address=jobs.twitter.com list=Mikrotik-Twitter
add address=ss.twitter.com list=Mikrotik-Twitter
add address=shopping.twitter.com list=Mikrotik-Twitter
add address=facebook.twitter.com list=Mikrotik-Twitter
add address=ads.twitter.com list=Mikrotik-Twitter
add address=sites.twitter.com list=Mikrotik-Twitter
add address=assets4.twitter.com list=Mikrotik-Twitter
add address=sms.twitter.com list=Mikrotik-Twitter
add address=assets1.twitter.com list=Mikrotik-Twitter
add address=ms1.twitter.com list=Mikrotik-Twitter
add address=legal.twitter.com list=Mikrotik-Twitter
add address=content.twitter.com list=Mikrotik-Twitter
add address=partners.twitter.com list=Mikrotik-Twitter
add address=pay.twitter.com list=Mikrotik-Twitter
add address=payments.twitter.com list=Mikrotik-Twitter
add address=start.twitter.com list=Mikrotik-Twitter
add address=analytics.twitter.com list=Mikrotik-Twitter
add address=static.twitter.com list=Mikrotik-Twitter
add address=create.twitter.com list=Mikrotik-Twitter
add address=api.twitter.com list=Mikrotik-Twitter
add address=studio.twitter.com list=Mikrotik-Twitter
add address=apple.twitter.com list=Mikrotik-Twitter
add address=status.twitter.com list=Mikrotik-Twitter
add address=apps.twitter.com list=Mikrotik-Twitter
add address=www.twitter.com list=Mikrotik-Twitter
add address=stream.twitter.com list=Mikrotik-Twitter
add address=www2.twitter.com list=Mikrotik-Twitter
add address=live.twitter.com list=Mikrotik-Twitter
add address=livenation.twitter.com list=Mikrotik-Twitter
add address=assets2.twitter.com list=Mikrotik-Twitter
add address=mx4.twitter.com list=Mikrotik-Twitter
add address=dashboard.twitter.com list=Mikrotik-Twitter
add address=support.twitter.com list=Mikrotik-Twitter
add address=data.twitter.com list=Mikrotik-Twitter
add address=policy.twitter.com list=Mikrotik-Twitter
add address=m.twitter.com list=Mikrotik-Twitter
add address=postmaster.twitter.com list=Mikrotik-Twitter
add address=mail.twitter.com list=Mikrotik-Twitter
add address=train.twitter.com list=Mikrotik-Twitter
add address=design.twitter.com list=Mikrotik-Twitter
add address=awards.twitter.com list=Mikrotik-Twitter
add address=privacy.twitter.com list=Mikrotik-Twitter
add address=dev.twitter.com list=Mikrotik-Twitter
add address=developer.twitter.com list=Mikrotik-Twitter
add address=developers.twitter.com list=Mikrotik-Twitter
add address=gov.twitter.com list=Mikrotik-Twitter
add address=marketing.twitter.com list=Mikrotik-Twitter
add address=groups.twitter.com list=Mikrotik-Twitter
add address=media.twitter.com list=Mikrotik-Twitter
add address=diversity.twitter.com list=Mikrotik-Twitter
add address=neptune.twitter.com list=Mikrotik-Twitter
add address=help.twitter.com list=Mikrotik-Twitter
add address=blog.twitter.com list=Mikrotik-Twitter
add address=mobile.twitter.com list=Mikrotik-Twitter
add address=download.twitter.com list=Mikrotik-Twitter
add address=assets3.twitter.com list=Mikrotik-Twitter
add address=ms.twitter.com list=Mikrotik-Twitter
add address=2012.twitter.com list=Mikrotik-Twitter
add address=research.twitter.com list=Mikrotik-Twitter
add address=mx.twitter.com list=Mikrotik-Twitter
add address=business.twitter.com list=Mikrotik-Twitter
add address=mx1.twitter.com list=Mikrotik-Twitter
add address=mx2.twitter.com list=Mikrotik-Twitter
add address=mx3.twitter.com list=Mikrotik-Twitter
add address=calendar.twitter.com list=Mikrotik-Twitter
add address=www4.twitter.com list=Mikrotik-Twitter
add address=eng.twitter.com list=Mikrotik-Twitter
add address=careers.twitter.com list=Mikrotik-Twitter
add address=s.twitter.com list=Mikrotik-Twitter
add address=nike.twitter.com list=Mikrotik-Twitter
add address=search.twitter.com list=Mikrotik-Twitter
add address=upload.twitter.com list=Mikrotik-Twitter
