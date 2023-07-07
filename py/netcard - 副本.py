# -*- coding: cp936 -*-
import psutil,urllib2,socket,sys

try:
      myname = socket.getfqdn(socket.gethostname(  ))
      ip = socket.gethostbyname(myname)
      ipp=(ip[8:11])
      url = ('http://192.168.89.89/p/dingding_ywk_.php?s=shao&h=_%s&f=b&i=%s&d=1'%(myname,ipp))
      file = urllib2.urlopen(url)
      content = file.read()

except:
      sys.exit(0)

