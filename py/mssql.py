# -*- coding: GBK -*-

import pymssql,sys,urllib2,datetime
try:
    ttt=datetime.datetime.now()-datetime.timedelta(days=7)
    conn=pymssql.connect(host='192.168.170.244',user='sa',password='Qq379111866',database='WXOL4')
    c = conn.cursor()
    #kkk = sys.argv[1]
    c.execute("SELECT 	COUNT (*) FROM 	tStat WHERE 	sCardType IS NOT NULL ")
    #print (c.fetchall())
    for row in c:
        a= ("%s"%(row[0]))
    c.execute("SELECT 	COUNT (*) FROM 	tStat")
    for row in c:
        b= ("%s"%(row[0]))
    c.execute("SELECT sum(datediff(n,dtStart,GETDATE()))/COUNT(*)  FROM [dbo].[tStat] WHERE dbo.tStat.dtStart IS NOT NULL ")
    for row in c:
        d= ("%s"%(row[0]))
    c.execute("SELECT SUM(cAmountFrom)  FROM tThirdReCharge WHERE dtTime > '%s'"%(ttt.strftime('%Y/%m/%d')))
    for row in c:
        g= ("%s"%(row[0]))
    c.execute("SELECT  sum(cRemainBefore)-sum(cRemainAfter) FROM tLogs WHERE dtTime2 > '%s'"%(ttt.strftime('%Y/%m/%d')))
    for row in c:
        y= ("%s"%(row[0]))
    c.close()
    url = ("http://192.168.89.89/p/dingding_ywk.php?s=shao&h=%s&f=%s&t=%s&g=%s&y=%s"%(a,b,d,g,y))
    file=urllib2.urlopen(url)
    content = file.read()
    print a ,'/', b
       #cur.execute("insert into sw(lanid,jiqihao,speed) values('%s','%s','B') on duplicate key update lanid='%s',jiqihao='%s',Speed='B'"% (kkk,row[0],kkk,row[0]))
    #conn1.commit()
except:
    sys.exit(0)
