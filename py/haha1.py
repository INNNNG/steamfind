# -*- coding: GBK -*-

import sqlite3,os,MySQLdb,sys,datetime,time,urllib2
try:
    aa=int(sys.argv[1])
    #aa = 44
    t=datetime.datetime.now()
    ta=datetime.datetime.now().strftime('%m-%d%%20%H:%M')
    #print ta
    t2=(t-datetime.timedelta(days=30)).strftime("%Y-%m-%d %H:%M:%S")
    ts2=time.mktime(time.strptime(t2, '%Y-%m-%d %H:%M:%S'))
    tt=int(ts2)
    print tt
    os.chdir('d:\sw')
    conn = sqlite3.connect('barserver.db')
    c = conn.cursor()
    sql=("SELECT  count(CASE WHEN substr(Gateway, 12, 1) = '.' THEN  CASE WHEN REPLACE (  REPLACE (Status, '0', '1'),  '9',  '1' )!='8' THEN '1' END    END),  count(CASE WHEN substr(Gateway, 12, 1) = '.' THEN  '1'   END),  count(CASE WHEN substr(Gateway, 12, 1) != '.' THEN  CASE WHEN REPLACE (  REPLACE (Status, '0', '1'),  '9',  '1' )!='8' THEN '1'END    END),  count(CASE WHEN substr(Gateway, 12, 1) != '.' THEN  '1'   END) FROM tbl_Computer WHERE  substr(ip ,- 3) NOT BETWEEN '230' AND '254' AND NOT substr(Gateway, 1, 2) = '17' AND ActiveTime > '%s'"%(tt))
    ca = conn.cursor()
    sql1=("SELECT  GROUP_CONCAT(q1 || 'x' || q2, '_'),  GROUP_CONCAT(q3 || 'x' || q4, '_') FROM  (   SELECT    GROUP_CONCAT(DISTINCT d1) q1,    sum(d2) q2,    GROUP_CONCAT(DISTINCT w1) q3,    sum(w2) q4   FROM    (     SELECT      ff f1 ,*, CASE     WHEN substr(ee ,- 7, 3) NOT LIKE '%s' THEN      ff     END d1,     CASE    WHEN substr(ee ,- 7, 3) NOT LIKE '%s' THEN     dd    END d2,    CASE   WHEN substr(ee ,- 7, 3) LIKE '%s' THEN    ff   END w1,   CASE  WHEN substr(ee ,- 7, 3) LIKE '%s' THEN   dd  END w2  FROM   (    SELECT     substr(      REPLACE (       REPLACE (        REPLACE (         REPLACE (          REPLACE (           REPLACE (            REPLACE (             REPLACE (DeviceId, '_2504', '3060'),             '_2503',             '3060'            ),            '_2489',            '3061'           ),           '_2488',           '3070'          ),          '_2487',          '3060'         ),         '_2216',         '3080'        ),        '_2208',        '3081'       ),       '_2206',       '3080'      ),      13,      4     ) ff,     count(*) dd,     Gateway ee    FROM     tbl_Computer    INNER JOIN tbl_GraphicsCardDevice ON tbl_GraphicsCardDevice.ComputerName = tbl_Computer.ComputerName    WHERE     DeviceId LIKE '%s'    AND ActiveTime > '%s'    AND Gateway LIKE '%s'    AND DeviceId NOT LIKE '%s'    GROUP BY     ee,     ff   ) ww    ) gg   GROUP BY    ff    ) "%('%.%','%.%','%.%','%.%','VEN_10DE&DEV_2%',tt,'192.168.%','%2184%'))
    c.execute(sql)
    ca.execute(sql1)
    for rowd in ca:
        print ''
    c.execute(sql)
    print '2'
    for row in c:
        #print rowd[0],rowd[1]
        #hhd=sum(hh)
        aaa='(%s)'%(aa/(row[0]/100))
        #print aaa
        aaaa='%s%s'%(aa,aaa)
        print aaaa
        kkk=(";B:%s%%20(%s)%%20%s%%%%20;*%s*%%20__%%20;T:%s%%20(%s)%%20%s%%%%20;*%s*"%(row[0],row[1],row[0]/(row[1]/100),rowd[0],row[2],row[3],row[2]/(row[3]/100),rowd[1]))
        print kkk
        #cur.execute("insert into std (a,b,c,d) values (%s,%s,%s,%s) on duplicate key update b='%s',c='%s',d='%s' "%(row[0],row[1],row[2],row[3],row[1],row[2],row[3]))
        #        cur.execute("insert into gameswy(id,name,fenlei,click1,click2,click3,click4) values('%s','%s','%s','%s','%s','%s') on duplicate key update id='%s',name='%s',fenlei='%s',click1='%s',click2='%s',click3='%s',click4='%s'"% (row[0],row[1],row[2],row[3],row[4],row[5],row[0],row[1],row[2],row[3],row[4],row[5]))
    #my.commit()
    #sys.exit(0)
    c.close()
    url = ('http://192.168.89.89/p/dingding_hwtemp.php?s=shao&d=1&l=1&b=%s&a=%s'%(kkk,aaaa))
    file = urllib2.urlopen(url)
    content = file.read()
    print 'ok'
except:
    print 'err'
    sys.exit(0)
