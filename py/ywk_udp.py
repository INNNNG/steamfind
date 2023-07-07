# -*- coding: cp936 -*-
import psutil,urllib2,socket,sys


try:
      host = sys.argv[1]
      nn = sys.argv[2]
      oo = sys.argv[3]
      d=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
      print host,nn,oo
      if oo == 'off':      
            nn = ("call_%s_off" %(nn))
      if oo == 'a': 
            nn = ("call_%s_apress" %(nn))
      if oo == 'on':
            nn = ("call_%s_on" %(nn))
      print (nn.encode(),(host,7201))
      d.sendto(nn.encode(),(host,7201))
except:
      print 'err'
      sys.exit(0)
