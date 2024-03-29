#####################################
# Created By Buananet.com 
#####################################
/ip firewall raw
rem [find comment="Zoom - Buananet.com"]
add action=add-dst-to-address-list address-list=Mikrotik-Zoom address-list-timeout=1d chain=prerouting comment="Zoom - Buananet.com" content=.zoom. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Zoom address-list-timeout=1d chain=prerouting comment="Zoom - Buananet.com" content=.zoomus. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Zoom address-list-timeout=1d chain=prerouting comment="Zoom - Buananet.com" content=.meetzoom. dst-address-list=!LOCAL-IP src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Zoom address-list-timeout=1d chain=prerouting comment="Zoom - Buananet.com" protocol=tcp dst-port=3478,3479,5090,5091,8801-8810 dst-address-list=Mikrotik-Zoom src-address-list=LOCAL-IP
add action=add-dst-to-address-list address-list=Mikrotik-Zoom address-list-timeout=1d chain=prerouting comment="Zoom - Buananet.com" protocol=udp dst-port=3478,3479,5090,5091,8801-8810 dst-address-list=Mikrotik-Zoom src-address-list=LOCAL-IP

/ip firewall address-list
rem [find list="Mikrotik-Zoom"]
add address=3.7.35.0/25 list=Mikrotik-Zoom
add address=3.21.137.128/25 list=Mikrotik-Zoom
add address=3.22.11.0/24 list=Mikrotik-Zoom
add address=3.23.93.0/24 list=Mikrotik-Zoom
add address=3.25.41.128/25 list=Mikrotik-Zoom
add address=3.25.42.0/25 list=Mikrotik-Zoom
add address=3.25.49.0/24 list=Mikrotik-Zoom
add address=3.80.20.128/25 list=Mikrotik-Zoom
add address=3.96.19.0/24 list=Mikrotik-Zoom
add address=3.101.32.128/25 list=Mikrotik-Zoom
add address=3.101.52.0/25 list=Mikrotik-Zoom
add address=3.104.34.128/25 list=Mikrotik-Zoom
add address=3.120.121.0/25 list=Mikrotik-Zoom
add address=3.127.194.128/25 list=Mikrotik-Zoom
add address=3.208.72.0/25 list=Mikrotik-Zoom
add address=3.211.241.0/25 list=Mikrotik-Zoom
add address=3.235.69.0/25 list=Mikrotik-Zoom
add address=3.235.82.0/23 list=Mikrotik-Zoom
add address=3.235.71.128/25 list=Mikrotik-Zoom
add address=3.235.72.128/25 list=Mikrotik-Zoom
add address=3.235.73.0/25 list=Mikrotik-Zoom
add address=3.235.96.0/23 list=Mikrotik-Zoom
add address=4.34.125.128/25 list=Mikrotik-Zoom
add address=4.35.64.128/25 list=Mikrotik-Zoom
add address=8.5.128.0/23 list=Mikrotik-Zoom
add address=13.52.6.128/25 list=Mikrotik-Zoom
add address=13.52.146.0/25 list=Mikrotik-Zoom
add address=13.114.106.166 list=Mikrotik-Zoom
add address=18.157.88.0/24 list=Mikrotik-Zoom
add address=18.205.93.128/25 list=Mikrotik-Zoom
add address=50.239.202.0/23 list=Mikrotik-Zoom
add address=50.239.204.0/24 list=Mikrotik-Zoom
add address=52.61.100.128/25 list=Mikrotik-Zoom
add address=52.81.151.128/25 list=Mikrotik-Zoom
add address=52.81.215.0/24 list=Mikrotik-Zoom
add address=52.197.97.21 list=Mikrotik-Zoom
add address=52.202.62.192/26 list=Mikrotik-Zoom
add address=52.215.168.0/25 list=Mikrotik-Zoom
add address=64.69.74.0/24 list=Mikrotik-Zoom
add address=64.125.62.0/24 list=Mikrotik-Zoom
add address=64.211.144.0/24 list=Mikrotik-Zoom
add address=65.39.152.0/24 list=Mikrotik-Zoom
add address=69.174.57.0/24 list=Mikrotik-Zoom
add address=69.174.108.0/22 list=Mikrotik-Zoom
add address=99.79.20.0/25 list=Mikrotik-Zoom
add address=103.122.166.0/23 list=Mikrotik-Zoom
add address=109.94.160.0/22 list=Mikrotik-Zoom
add address=109.244.18.0/25 list=Mikrotik-Zoom
add address=109.244.19.0/24 list=Mikrotik-Zoom
add address=111.33.181.0/25 list=Mikrotik-Zoom
add address=115.110.154.192/26 list=Mikrotik-Zoom
add address=115.114.56.192/26 list=Mikrotik-Zoom
add address=115.114.115.0/26 list=Mikrotik-Zoom
add address=115.114.131.0/26 list=Mikrotik-Zoom
add address=120.29.148.0/24 list=Mikrotik-Zoom
add address=140.238.128.0/24 list=Mikrotik-Zoom
add address=147.124.96.0/19 list=Mikrotik-Zoom
add address=149.137.0.0/17 list=Mikrotik-Zoom
add address=152.67.20.0/24 list=Mikrotik-Zoom
add address=152.67.118.0/24 list=Mikrotik-Zoom
add address=152.67.180.0/24 list=Mikrotik-Zoom
add address=158.101.64.0/24 list=Mikrotik-Zoom
add address=160.1.56.128/25 list=Mikrotik-Zoom
add address=161.189.199.0/25 list=Mikrotik-Zoom
add address=161.199.136.0/22 list=Mikrotik-Zoom
add address=162.12.232.0/22 list=Mikrotik-Zoom
add address=162.255.36.0/22 list=Mikrotik-Zoom
add address=165.254.88.0/23 list=Mikrotik-Zoom
add address=168.138.16.0/24 list=Mikrotik-Zoom
add address=168.138.48.0/24 list=Mikrotik-Zoom
add address=168.138.72.0/24 list=Mikrotik-Zoom
add address=168.138.244.0/24 list=Mikrotik-Zoom
add address=173.231.80.0/20 list=Mikrotik-Zoom
add address=192.204.12.0/22 list=Mikrotik-Zoom
add address=193.122.32.0/22 list=Mikrotik-Zoom
add address=193.123.0.0/19 list=Mikrotik-Zoom
add address=193.123.40.0/22 list=Mikrotik-Zoom
add address=193.123.128.0/19 list=Mikrotik-Zoom
add address=198.251.128.0/17 list=Mikrotik-Zoom
add address=202.177.207.128/27 list=Mikrotik-Zoom
add address=202.177.213.96/27 list=Mikrotik-Zoom
add address=204.80.104.0/21 list=Mikrotik-Zoom
add address=204.141.28.0/22 list=Mikrotik-Zoom
add address=207.226.132.0/24 list=Mikrotik-Zoom
add address=209.9.211.0/24 list=Mikrotik-Zoom
add address=209.9.215.0/24 list=Mikrotik-Zoom
add address=210.57.55.0/24 list=Mikrotik-Zoom
add address=213.19.144.0/24 list=Mikrotik-Zoom
add address=213.19.153.0/24 list=Mikrotik-Zoom
add address=213.244.140.0/24 list=Mikrotik-Zoom
add address=221.122.88.64/27 list=Mikrotik-Zoom
add address=221.122.88.128/25 list=Mikrotik-Zoom
add address=221.122.89.128/25 list=Mikrotik-Zoom
add address=221.123.139.192/27 list=Mikrotik-Zoom
add address=8.5.128.0/24 list=Mikrotik-Zoom
add address=zoom.us list=Mikrotik-Zoom
add address=zoom.com list=Mikrotik-Zoom
add address=zoom.com.cn list=Mikrotik-Zoom
add address=meetzoom.net list=Mikrotik-Zoom
add address=21cf.zoom.us list=Mikrotik-Zoom
add address=cdn.zoom.us list=Mikrotik-Zoom
add address=nl.zoom.us list=Mikrotik-Zoom
add address=mcp.zoom.us list=Mikrotik-Zoom
add address=cdw.zoom.us list=Mikrotik-Zoom
add address=jarden.zoom.us list=Mikrotik-Zoom
add address=future.zoom.us list=Mikrotik-Zoom
add address=celanese.zoom.us list=Mikrotik-Zoom
add address=nordstrom.zoom.us list=Mikrotik-Zoom
add address=usfoods.zoom.us list=Mikrotik-Zoom
add address=events.zoom.us list=Mikrotik-Zoom
add address=ussteel.zoom.us list=Mikrotik-Zoom
add address=northwesternmutual.zoom.us list=Mikrotik-Zoom
add address=centene.zoom.us list=Mikrotik-Zoom
add address=sc.zoom.us list=Mikrotik-Zoom
add address=utc.zoom.us list=Mikrotik-Zoom
add address=service.zoom.us list=Mikrotik-Zoom
add address=view.zoom.us list=Mikrotik-Zoom
add address=jetblue.zoom.us list=Mikrotik-Zoom
add address=valero.zoom.us list=Mikrotik-Zoom
add address=abbott.zoom.us list=Mikrotik-Zoom
add address=dcp.zoom.us list=Mikrotik-Zoom
add address=jenkins.zoom.us list=Mikrotik-Zoom
add address=abbvie.zoom.us list=Mikrotik-Zoom
add address=jll.zoom.us list=Mikrotik-Zoom
add address=abm.zoom.us list=Mikrotik-Zoom
add address=charter.zoom.us list=Mikrotik-Zoom
add address=verizon.zoom.us list=Mikrotik-Zoom
add address=extend.zoom.us list=Mikrotik-Zoom
add address=vfc.zoom.us list=Mikrotik-Zoom
add address=shell.zoom.us list=Mikrotik-Zoom
add address=viacom.zoom.us list=Mikrotik-Zoom
add address=sftp.zoom.us list=Mikrotik-Zoom
add address=expeditors.zoom.us list=Mikrotik-Zoom
add address=share.zoom.us list=Mikrotik-Zoom
add address=explore.zoom.us list=Mikrotik-Zoom
add address=johndeere.zoom.us list=Mikrotik-Zoom
add address=nvrinc.zoom.us list=Mikrotik-Zoom
add address=sit.zoom.us list=Mikrotik-Zoom
add address=johnsoncontrols.zoom.us list=Mikrotik-Zoom
add address=eclipse.zoom.us list=Mikrotik-Zoom
add address=mta.zoom.us list=Mikrotik-Zoom
add address=visa.zoom.us list=Mikrotik-Zoom
add address=chs.zoom.us list=Mikrotik-Zoom
add address=exxonmobil.zoom.us list=Mikrotik-Zoom
add address=cigna.zoom.us list=Mikrotik-Zoom
add address=cinfin.zoom.us list=Mikrotik-Zoom
add address=facebook.zoom.us list=Mikrotik-Zoom
add address=cisco.zoom.us list=Mikrotik-Zoom
add address=pma.zoom.us list=Mikrotik-Zoom
add address=adm.zoom.us list=Mikrotik-Zoom
add address=sip.zoom.us list=Mikrotik-Zoom
add address=admin.zoom.us list=Mikrotik-Zoom
add address=box.zoom.us list=Mikrotik-Zoom
add address=voya.zoom.us list=Mikrotik-Zoom
add address=portfolio.zoom.us list=Mikrotik-Zoom
add address=adp.zoom.us list=Mikrotik-Zoom
add address=sites.zoom.us list=Mikrotik-Zoom
add address=farmers.zoom.us list=Mikrotik-Zoom
add address=postman.zoom.us list=Mikrotik-Zoom
add address=oldrepublic.zoom.us list=Mikrotik-Zoom
add address=kindredhealthcare.zoom.us list=Mikrotik-Zoom
add address=kkr.zoom.us list=Mikrotik-Zoom
add address=walmart.zoom.us list=Mikrotik-Zoom
add address=fb.zoom.us list=Mikrotik-Zoom
add address=aep.zoom.us list=Mikrotik-Zoom
add address=fcx.zoom.us list=Mikrotik-Zoom
add address=cms.zoom.us list=Mikrotik-Zoom
add address=web.zoom.us list=Mikrotik-Zoom
add address=fedex.zoom.us list=Mikrotik-Zoom
add address=cmsenergy.zoom.us list=Mikrotik-Zoom
add address=oracle.zoom.us list=Mikrotik-Zoom
add address=aetna.zoom.us list=Mikrotik-Zoom
add address=sonicautomotive.zoom.us list=Mikrotik-Zoom
add address=cn.zoom.us list=Mikrotik-Zoom
add address=oreillyauto.zoom.us list=Mikrotik-Zoom
add address=owncloud.zoom.us list=Mikrotik-Zoom
add address=origin.zoom.us list=Mikrotik-Zoom
add address=webmail.zoom.us list=Mikrotik-Zoom
add address=code.zoom.us list=Mikrotik-Zoom
add address=core.zoom.us list=Mikrotik-Zoom
add address=cognizant.zoom.us list=Mikrotik-Zoom
add address=wellcare.zoom.us list=Mikrotik-Zoom
add address=wellsfargo.zoom.us list=Mikrotik-Zoom
add address=file.zoom.us list=Mikrotik-Zoom
add address=lamresearch.zoom.us list=Mikrotik-Zoom
add address=hermes.zoom.us list=Mikrotik-Zoom
add address=spglobal.zoom.us list=Mikrotik-Zoom
add address=westernunion.zoom.us list=Mikrotik-Zoom
add address=firstam.zoom.us list=Mikrotik-Zoom
add address=radius.zoom.us list=Mikrotik-Zoom
add address=firstdata.zoom.us list=Mikrotik-Zoom
add address=hcp.zoom.us list=Mikrotik-Zoom
add address=airproducts.zoom.us list=Mikrotik-Zoom
add address=pacificlife.zoom.us list=Mikrotik-Zoom
add address=community.zoom.us list=Mikrotik-Zoom
add address=lear.zoom.us list=Mikrotik-Zoom
add address=fisglobal.zoom.us list=Mikrotik-Zoom
add address=wfscorp.zoom.us list=Mikrotik-Zoom
add address=legacy.zoom.us list=Mikrotik-Zoom
add address=alaskaair.zoom.us list=Mikrotik-Zoom
add address=connect.zoom.us list=Mikrotik-Zoom
add address=alliancedata.zoom.us list=Mikrotik-Zoom
add address=parker.zoom.us list=Mikrotik-Zoom
add address=allstate.zoom.us list=Mikrotik-Zoom
add address=partner.zoom.us list=Mikrotik-Zoom
add address=repo.zoom.us list=Mikrotik-Zoom
add address=ally.zoom.us list=Mikrotik-Zoom
add address=alpha.zoom.us list=Mikrotik-Zoom
add address=lfg.zoom.us list=Mikrotik-Zoom
add address=partners.zoom.us list=Mikrotik-Zoom
add address=altria.zoom.us list=Mikrotik-Zoom
add address=ford.zoom.us list=Mikrotik-Zoom
add address=williams.zoom.us list=Mikrotik-Zoom
add address=libertymutual.zoom.us list=Mikrotik-Zoom
add address=robinhood.zoom.us list=Mikrotik-Zoom
add address=paypal.zoom.us list=Mikrotik-Zoom
add address=library.zoom.us list=Mikrotik-Zoom
add address=source.zoom.us list=Mikrotik-Zoom
add address=stanleyblackanddecker.zoom.us list=Mikrotik-Zoom
add address=copyright.zoom.us list=Mikrotik-Zoom
add address=core-mark.zoom.us list=Mikrotik-Zoom
add address=sbs.zoom.us list=Mikrotik-Zoom
add address=amfam.zoom.us list=Mikrotik-Zoom
add address=freddiemac.zoom.us list=Mikrotik-Zoom
add address=starbucks.zoom.us list=Mikrotik-Zoom
add address=amgen.zoom.us list=Mikrotik-Zoom
add address=costco.zoom.us list=Mikrotik-Zoom
add address=amphenol.zoom.us list=Mikrotik-Zoom
add address=free.zoom.us list=Mikrotik-Zoom
add address=penskeautomotive.zoom.us list=Mikrotik-Zoom
add address=pepsico.zoom.us list=Mikrotik-Zoom
add address=ws.zoom.us list=Mikrotik-Zoom
add address=frontier.zoom.us list=Mikrotik-Zoom
add address=statefarm.zoom.us list=Mikrotik-Zoom
add address=pfizer.zoom.us list=Mikrotik-Zoom
add address=create.zoom.us list=Mikrotik-Zoom
add address=statestreet.zoom.us list=Mikrotik-Zoom
add address=transfer.zoom.us list=Mikrotik-Zoom
add address=static.zoom.us list=Mikrotik-Zoom
add address=live.zoom.us list=Mikrotik-Zoom
add address=orange.zoom.us list=Mikrotik-Zoom
add address=livenation.zoom.us list=Mikrotik-Zoom
add address=smtp1.zoom.us list=Mikrotik-Zoom
add address=api.zoom.us list=Mikrotik-Zoom
add address=csc.zoom.us list=Mikrotik-Zoom
add address=lms.zoom.us list=Mikrotik-Zoom
add address=app.zoom.us list=Mikrotik-Zoom
add address=css.zoom.us list=Mikrotik-Zoom
add address=phillips66.zoom.us list=Mikrotik-Zoom
add address=apple.zoom.us list=Mikrotik-Zoom
add address=status.zoom.us list=Mikrotik-Zoom
add address=www.zoom.us list=Mikrotik-Zoom
add address=steeldynamics.zoom.us list=Mikrotik-Zoom
add address=apps.zoom.us list=Mikrotik-Zoom
add address=aramark.zoom.us list=Mikrotik-Zoom
add address=csx.zoom.us list=Mikrotik-Zoom
add address=archive.zoom.us list=Mikrotik-Zoom
add address=www2.zoom.us list=Mikrotik-Zoom
add address=loews.zoom.us list=Mikrotik-Zoom
add address=cummins.zoom.us list=Mikrotik-Zoom
add address=arrow.zoom.us list=Mikrotik-Zoom
add address=andromeda.zoom.us list=Mikrotik-Zoom
add address=xcelenergy.zoom.us list=Mikrotik-Zoom
add address=streaming.zoom.us list=Mikrotik-Zoom
add address=gapinc.zoom.us list=Mikrotik-Zoom
add address=cvshealth.zoom.us list=Mikrotik-Zoom
add address=stryker.zoom.us list=Mikrotik-Zoom
add address=asset.zoom.us list=Mikrotik-Zoom
add address=assets.zoom.us list=Mikrotik-Zoom
add address=lowes.zoom.us list=Mikrotik-Zoom
add address=xmpp.zoom.us list=Mikrotik-Zoom
add address=assurant.zoom.us list=Mikrotik-Zoom
add address=m.zoom.us list=Mikrotik-Zoom
add address=static1.zoom.us list=Mikrotik-Zoom
add address=omega.zoom.us list=Mikrotik-Zoom
add address=ge.zoom.us list=Mikrotik-Zoom
add address=danaher.zoom.us list=Mikrotik-Zoom
add address=mail.zoom.us list=Mikrotik-Zoom
add address=pmi.zoom.us list=Mikrotik-Zoom
add address=yum.zoom.us list=Mikrotik-Zoom
add address=pnc.zoom.us list=Mikrotik-Zoom
add address=tom.zoom.us list=Mikrotik-Zoom
add address=perseus.zoom.us list=Mikrotik-Zoom
add address=support.zoom.us list=Mikrotik-Zoom
add address=genesishcc.zoom.us list=Mikrotik-Zoom
add address=auto-owners.zoom.us list=Mikrotik-Zoom
add address=davita.zoom.us list=Mikrotik-Zoom
add address=genworth.zoom.us list=Mikrotik-Zoom
add address=alumni.zoom.us list=Mikrotik-Zoom
add address=svn.zoom.us list=Mikrotik-Zoom
add address=apollo.zoom.us list=Mikrotik-Zoom
add address=autonation.zoom.us list=Mikrotik-Zoom
add address=autozone.zoom.us list=Mikrotik-Zoom
add address=averydennison.zoom.us list=Mikrotik-Zoom
add address=gilead.zoom.us list=Mikrotik-Zoom
add address=jira.zoom.us list=Mikrotik-Zoom
add address=art.zoom.us list=Mikrotik-Zoom
add address=jupiter.zoom.us list=Mikrotik-Zoom
add address=atlas.zoom.us list=Mikrotik-Zoom
add address=git.zoom.us list=Mikrotik-Zoom
add address=avnet.zoom.us list=Mikrotik-Zoom
add address=manpowergroup.zoom.us list=Mikrotik-Zoom
add address=globalp.zoom.us list=Mikrotik-Zoom
add address=pplweb.zoom.us list=Mikrotik-Zoom
add address=gm.zoom.us list=Mikrotik-Zoom
add address=synnex.zoom.us list=Mikrotik-Zoom
add address=gmail.zoom.us list=Mikrotik-Zoom
add address=red.zoom.us list=Mikrotik-Zoom
add address=sysco.zoom.us list=Mikrotik-Zoom
add address=go.zoom.us list=Mikrotik-Zoom
add address=google.zoom.us list=Mikrotik-Zoom
add address=barracuda.zoom.us list=Mikrotik-Zoom
add address=delta.zoom.us list=Mikrotik-Zoom
add address=exposure.zoom.us list=Mikrotik-Zoom
add address=demo.zoom.us list=Mikrotik-Zoom
add address=blackboard.zoom.us list=Mikrotik-Zoom
add address=b.zoom.us list=Mikrotik-Zoom
add address=graybar.zoom.us list=Mikrotik-Zoom
add address=booking.zoom.us list=Mikrotik-Zoom
add address=marketing.zoom.us list=Mikrotik-Zoom
add address=group1auto.zoom.us list=Mikrotik-Zoom
add address=marriott.zoom.us list=Mikrotik-Zoom
add address=principal.zoom.us list=Mikrotik-Zoom
add address=promedia.zoom.us list=Mikrotik-Zoom
add address=targaresources.zoom.us list=Mikrotik-Zoom
add address=usb.zoom.us list=Mikrotik-Zoom
add address=bt.zoom.us list=Mikrotik-Zoom
add address=target.zoom.us list=Mikrotik-Zoom
add address=wwp.zoom.us list=Mikrotik-Zoom
add address=massmutual.zoom.us list=Mikrotik-Zoom
add address=ca.zoom.us list=Mikrotik-Zoom
add address=log.zoom.us list=Mikrotik-Zoom
add address=develop.zoom.us list=Mikrotik-Zoom
add address=developer.zoom.us list=Mikrotik-Zoom
add address=team.zoom.us list=Mikrotik-Zoom
add address=prod.zoom.us list=Mikrotik-Zoom
add address=mastercard.zoom.us list=Mikrotik-Zoom
add address=mattel.zoom.us list=Mikrotik-Zoom
add address=cart.zoom.us list=Mikrotik-Zoom
add address=developers.zoom.us list=Mikrotik-Zoom
add address=virtual.zoom.us list=Mikrotik-Zoom
add address=tech.zoom.us list=Mikrotik-Zoom
add address=vista.zoom.us list=Mikrotik-Zoom
add address=halliburton.zoom.us list=Mikrotik-Zoom
add address=techdata.zoom.us list=Mikrotik-Zoom
add address=uni.zoom.us list=Mikrotik-Zoom
add address=devonenergy.zoom.us list=Mikrotik-Zoom
add address=baxter.zoom.us list=Mikrotik-Zoom
add address=dillards.zoom.us list=Mikrotik-Zoom
add address=harman.zoom.us list=Mikrotik-Zoom
add address=profile.zoom.us list=Mikrotik-Zoom
add address=bbs.zoom.us list=Mikrotik-Zoom
add address=progressive.zoom.us list=Mikrotik-Zoom
add address=vmware.zoom.us list=Mikrotik-Zoom
add address=slb.zoom.us list=Mikrotik-Zoom
add address=blue.zoom.us list=Mikrotik-Zoom
add address=hdsupply.zoom.us list=Mikrotik-Zoom
add address=learn.zoom.us list=Mikrotik-Zoom
add address=metlife.zoom.us list=Mikrotik-Zoom
add address=magento.zoom.us list=Mikrotik-Zoom
add address=dish.zoom.us list=Mikrotik-Zoom
add address=proxy.zoom.us list=Mikrotik-Zoom
add address=micron.zoom.us list=Mikrotik-Zoom
add address=disney.zoom.us list=Mikrotik-Zoom
add address=prudential.zoom.us list=Mikrotik-Zoom
add address=microsoft.zoom.us list=Mikrotik-Zoom
add address=diversity.zoom.us list=Mikrotik-Zoom
add address=pseg.zoom.us list=Mikrotik-Zoom
add address=beta.zoom.us list=Mikrotik-Zoom
add address=public.zoom.us list=Mikrotik-Zoom
add address=mmc.zoom.us list=Mikrotik-Zoom
add address=publix.zoom.us list=Mikrotik-Zoom
add address=billing.zoom.us list=Mikrotik-Zoom
add address=biogen.zoom.us list=Mikrotik-Zoom
add address=thehartford.zoom.us list=Mikrotik-Zoom
add address=blackrock.zoom.us list=Mikrotik-Zoom
add address=docs.zoom.us list=Mikrotik-Zoom
add address=blog.zoom.us list=Mikrotik-Zoom
add address=dollargeneral.zoom.us list=Mikrotik-Zoom
add address=honeywell.zoom.us list=Mikrotik-Zoom
add address=dom.zoom.us list=Mikrotik-Zoom
add address=monitor.zoom.us list=Mikrotik-Zoom
add address=bnymellon.zoom.us list=Mikrotik-Zoom
add address=thrivent.zoom.us list=Mikrotik-Zoom
add address=monitoring.zoom.us list=Mikrotik-Zoom
add address=qualcomm.zoom.us list=Mikrotik-Zoom
add address=config.zoom.us list=Mikrotik-Zoom
add address=hosthotels.zoom.us list=Mikrotik-Zoom
add address=questdiagnostics.zoom.us list=Mikrotik-Zoom
add address=moodle.zoom.us list=Mikrotik-Zoom
add address=hosting.zoom.us list=Mikrotik-Zoom
add address=morganstanley.zoom.us list=Mikrotik-Zoom
add address=tiaa.zoom.us list=Mikrotik-Zoom
add address=ralphlauren.zoom.us list=Mikrotik-Zoom
add address=hp.zoom.us list=Mikrotik-Zoom
add address=dms.zoom.us list=Mikrotik-Zoom
add address=raymondjames.zoom.us list=Mikrotik-Zoom
add address=motorolasolutions.zoom.us list=Mikrotik-Zoom
add address=tickets.zoom.us list=Mikrotik-Zoom
add address=raytheon.zoom.us list=Mikrotik-Zoom
add address=time.zoom.us list=Mikrotik-Zoom
add address=wave.zoom.us list=Mikrotik-Zoom
add address=redirect.zoom.us list=Mikrotik-Zoom
add address=learning.zoom.us list=Mikrotik-Zoom
add address=mdm.zoom.us list=Mikrotik-Zoom
add address=humana.zoom.us list=Mikrotik-Zoom
add address=borgwarner.zoom.us list=Mikrotik-Zoom
add address=mercury.zoom.us list=Mikrotik-Zoom
add address=mutualofomaha.zoom.us list=Mikrotik-Zoom
add address=meta.zoom.us list=Mikrotik-Zoom
add address=bot.zoom.us list=Mikrotik-Zoom
add address=relay.zoom.us list=Mikrotik-Zoom
add address=remote.zoom.us list=Mikrotik-Zoom
add address=trade.zoom.us list=Mikrotik-Zoom
add address=duke-energy.zoom.us list=Mikrotik-Zoom
add address=dupont.zoom.us list=Mikrotik-Zoom
add address=icon.zoom.us list=Mikrotik-Zoom
add address=broadcom.zoom.us list=Mikrotik-Zoom
add address=nationwide.zoom.us list=Mikrotik-Zoom
add address=track.zoom.us list=Mikrotik-Zoom
add address=oma.zoom.us list=Mikrotik-Zoom
add address=idp.zoom.us list=Mikrotik-Zoom
add address=dbs.zoom.us list=Mikrotik-Zoom
add address=ielp.zoom.us list=Mikrotik-Zoom
add address=iheartmedia.zoom.us list=Mikrotik-Zoom
add address=business.zoom.us list=Mikrotik-Zoom
add address=ncr.zoom.us list=Mikrotik-Zoom
add address=im.zoom.us list=Mikrotik-Zoom
add address=demon.zoom.us list=Mikrotik-Zoom
add address=tractorsupply.zoom.us list=Mikrotik-Zoom
add address=rgare.zoom.us list=Mikrotik-Zoom
add address=puppet.zoom.us list=Mikrotik-Zoom
add address=polaris.zoom.us list=Mikrotik-Zoom
add address=e.zoom.us list=Mikrotik-Zoom
add address=netapp.zoom.us list=Mikrotik-Zoom
add address=riteaid.zoom.us list=Mikrotik-Zoom
add address=cablevision.zoom.us list=Mikrotik-Zoom
add address=netflix.zoom.us list=Mikrotik-Zoom
add address=rockwellautomation.zoom.us list=Mikrotik-Zoom
add address=venus.zoom.us list=Mikrotik-Zoom
add address=images.zoom.us list=Mikrotik-Zoom
add address=travelers.zoom.us list=Mikrotik-Zoom
add address=root.zoom.us list=Mikrotik-Zoom
add address=act.zoom.us list=Mikrotik-Zoom
add address=ebay.zoom.us list=Mikrotik-Zoom
add address=campaign.zoom.us list=Mikrotik-Zoom
add address=news.zoom.us list=Mikrotik-Zoom
add address=calendar.zoom.us list=Mikrotik-Zoom
add address=newscorp.zoom.us list=Mikrotik-Zoom
add address=index.zoom.us list=Mikrotik-Zoom
add address=ingrammicro.zoom.us list=Mikrotik-Zoom
add address=twc.zoom.us list=Mikrotik-Zoom
add address=edwardjones.zoom.us list=Mikrotik-Zoom
add address=music.zoom.us list=Mikrotik-Zoom
add address=capitalone.zoom.us list=Mikrotik-Zoom
add address=insight.zoom.us list=Mikrotik-Zoom
add address=elcompanies.zoom.us list=Mikrotik-Zoom
add address=cardinal.zoom.us list=Mikrotik-Zoom
add address=intel.zoom.us list=Mikrotik-Zoom
add address=ugicorp.zoom.us list=Mikrotik-Zoom
add address=uhsinc.zoom.us list=Mikrotik-Zoom
add address=careers.zoom.us list=Mikrotik-Zoom
add address=email.zoom.us list=Mikrotik-Zoom
add address=nike.zoom.us list=Mikrotik-Zoom
add address=s.zoom.us list=Mikrotik-Zoom
add address=caterpillar.zoom.us list=Mikrotik-Zoom
add address=sales.zoom.us list=Mikrotik-Zoom
add address=salesforce.zoom.us list=Mikrotik-Zoom
add address=intranet.zoom.us list=Mikrotik-Zoom
add address=cbre.zoom.us list=Mikrotik-Zoom
add address=www3.zoom.us list=Mikrotik-Zoom
add address=emerson.zoom.us list=Mikrotik-Zoom
add address=sands.zoom.us list=Mikrotik-Zoom
add address=sanmina.zoom.us list=Mikrotik-Zoom
add address=ams.zoom.us list=Mikrotik-Zoom
add address=eng.zoom.us list=Mikrotik-Zoom
add address=echo.zoom.us list=Mikrotik-Zoom
add address=upgrade.zoom.us list=Mikrotik-Zoom
add address=itw.zoom.us list=Mikrotik-Zoom
add address=nat.zoom.us list=Mikrotik-Zoom
add address=eogresources.zoom.us list=Mikrotik-Zoom
add address=john.zoom.us list=Mikrotik-Zoom
add address=ups.zoom.us list=Mikrotik-Zoom
add address=zabbix.zoom.us list=Mikrotik-Zoom
add address=jabil.zoom.us list=Mikrotik-Zoom
add address=engage.zoom.us list=Mikrotik-Zoom
add address=usaa.zoom.us list=Mikrotik-Zoom
add address=power.zoom.us list=Mikrotik-Zoom
add address=usbank.zoom.us list=Mikrotik-Zoom
add address=global.zoom.us list=Mikrotik-Zoom
add address=cambridge.zoom.us list=Mikrotik-Zoom
add address=sage.zoom.us list=Mikrotik-Zoom
add address=ns1.zoom.us list=Mikrotik-Zoom
add address=rdc.zoom.us list=Mikrotik-Zoom
add address=pilot.zoom.us list=Mikrotik-Zoom
add address=ns8.zoom.us list=Mikrotik-Zoom
add address=on.zoom.us list=Mikrotik-Zoom
add address=op.zoom.us list=Mikrotik-Zoom
add address=orion.zoom.us list=Mikrotik-Zoom
