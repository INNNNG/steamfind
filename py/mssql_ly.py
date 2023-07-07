# -*- coding: utf8 -*-

import pymssql,sys,urllib2
from HTMLParser import HTMLParser
try:
    conn=pymssql.connect(host='192.168.89.242:55504',user='shao',password='shao',database='njqcfywk')
    c = conn.cursor()
    c.execute("SELECT top 1 REPLACE(REPLACE(REPLACE(Content,'&lt;br/&gt;',''),'&lt;p&gt;',''),'&lt;/p&gt;',''),InternetName,REPLACE(ip,'192.168.',''),UserName,Title FROM dbo.vw_GuestBook ORDER BY dbo.vw_GuestBook.ID DESC  ")
    for row in c:
        d= ("%s %s"%(row[1],row[4]))  
        a3= ("%s"%(row[0]))        
        a1= ("%s:%s"%(row[1],row[2]))
        a2= ("%s:%s"%(row[3],row[4]))
    c.close()
    a1= a1.encode('UTF-8')  
    a2= a2.encode('UTF-8')  
    a3= HTMLParser().unescape(a3)
    a3= a3.encode('UTF-8')
    
    print a3
    url = ("http://192.168.89.89/p/wx_ly.php?a=%s&b=%s"%(a1,a3))
    print url
    file=urllib2.urlopen(url)
    content = file.read()
       #cur.execute("insert into sw(lanid,jiqihao,speed) values('%s','%s','B') on duplicate key update lanid='%s',jiqihao='%s',Speed='B'"% (kkk,row[0],kkk,row[0]))
    #conn1.commit()
except:
    sys.exit(0)
