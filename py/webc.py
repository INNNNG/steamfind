import urllib2,sys
kkk = sys.argv[1]
try:
      file = urllib2.urlopen(kkk)
      content = file.read()
except:
    sys.exit(0)

