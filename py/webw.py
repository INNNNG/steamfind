import urllib2,socket,sys
kkk = sys.argv[1]
myname = socket.getfqdn(socket.gethostname(  ))
ip = socket.gethostbyname(myname)
ipp=(ip[8:11])
print(ipp)
url = ('http://ywk.jsqcfy.com/client_hwtemp.php?s=shao&h=%s&f=%s&i=%s&d=1'%(myname,kkk,ipp))
try:
      file = urllib2.urlopen(url)
      content = file.read()
except:
    sys.exit(0)

