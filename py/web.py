import urllib2,socket,sys
kkk = sys.argv[1]
myname = socket.getfqdn(socket.gethostname(  ))
ip = socket.gethostbyname(myname)
ipp=(ip[8:11])
print(ipp)
url = ('http://192.168.89.89/p/dingding_ywk_.php?s=shao&h=%s&f=%s&i=%s&d=1'%(myname,kkk,ipp))
try:
      file = urllib2.urlopen(url)
      content = file.read()
except:
    sys.exit(0)

