# -*- coding: GBK -*-

import sqlite3,os,MySQLdb,sys,datetime,time,urllib2
try:
    t=datetime.datetime.now()
    t2=(t-datetime.timedelta(days=7)).strftime("%Y-%m-%d %H:%M:%S")
    ts2=time.mktime(time.strptime(t2, '%Y-%m-%d %H:%M:%S'))
    tt=int(ts2)
    os.chdir('D:\\sw')
    conn = sqlite3.connect('barserver.db')
    #my = sqlite3.connect('online.db')
    
    c = conn.cursor()
    ca = conn.cursor()
    sql=("SELECT  CASE WHEN gg = 'a' THEN  '999 ' ELSE  a.ii || ' ' END dd,  CASE WHEN gg = 'a' THEN  Count(*)||'*' ELSE  gg END ww,  '_'||GROUP_CONCAT(a.tt, '_') hh FROM  (   SELECT    substr(Gateway ,- 7, 3) ii,    CASE   WHEN Count(*) < 5 THEN    'a'   ELSE    Count(*)   END gg,   GROUP_CONCAT(ComputerName, '_') tt  FROM   (   SELECT *  FROM   tbl_Computer  WHERE   REPLACE (substr(ip ,- 3), '.', '') NOT BETWEEN '230'  AND '250'  AND ActiveTime < '%s'  AND substr(Gateway ,- 7, 3) NOT LIKE '%s'  AND Gateway NOT LIKE '%s'  AND ComputerName NOT LIKE '%s' ORDER BY ComputerName  ) b  GROUP BY   b.Gateway  ) AS a GROUP BY  dd,gg ORDER BY ww"%(tt,'%.%','17%','TEST%'))
    sql1=("SELECT GROUP_CONCAT(q1||' '||q2,'_'),GROUP_CONCAT(q3||' '||q4,'_') from (SELECT  GROUP_CONCAT(distinct d1)q1,sum(d2)q2 ,GROUP_CONCAT(distinct w1)q3,sum(w2)q4 from (SELECT ff f1,*, CASE WHEN substr(ee ,- 7, 3) not LIKE '%s' THEN ff end d1,CASE WHEN substr(ee ,- 7, 3) not LIKE '%s' THEN dd end d2, CASE WHEN substr(ee ,- 7, 3) LIKE '%s' THEN ff end w1,CASE WHEN substr(ee ,- 7, 3) LIKE '%s' THEN dd end w2 FROM ( SELECT	substr (REPLACE (REPLACE (VideoChip, ' SUPER', ''), ' Ti', ''),-6,4)ff,count(*)dd,Gateway ee FROM tbl_Computer INNER JOIN tbl_CompHardInfoTmp ON tbl_CompHardInfoTmp.ComputerName = tbl_Computer.ComputerName  where Gateway LIKE '192.168%s' and VideoChip LIKE '%s'  and ActiveTime > '%s' GROUP BY ee  ) ww )gg GROUP BY ff ) "%('%.%','%.%','%.%','%.%','%','%RTX%',tt))
    
    c.execute(sql)
    #ca.execute(sql1)
    print tt
    for rowd in ca:
        print ''
    #d = my.cursor()
    #d.execute("UPDATE std SET c=0")
    #my.commit()
    i = 0
    f=open("long.txt","w")
    print '2'
    for row in c:
        i+=1
        #time.sleep(0.3)
        print row[0],row[1],row[2]
        #,rowd[0]
        print '3',i
        f.write(("%s%s%s")%(row[0],row[1],row[2]))
        f.write('\n')
        #url = ('http://192.168.89.89/p/dingding_hwtemp.php?s=shao&d=1&l=1&a=%s%s&b=%s'%(row[0],row[1],row[2]))
        #file = urllib2.urlopen(url)
        #content = file.read()
        #print("insert into std (a,b,c,d) values (%s,%s,%s,%s) on duplicate key update b='%s',c='%s' "%(row[0],row[1],row[2],row[3],row[1],row[2]))
        #d.execute("insert into std (a,b,c,d) values ('%s','%s','%s','%s'); "%(row[0],row[1],row[2],row[3]))
        #        cur.execute("insert into gameswy(id,name,fenlei,click1,click2,click3,click4) values('%s','%s','%s','%s','%s','%s') on duplicate key update id='%s',name='%s',fenlei='%s',click1='%s',click2='%s',click3='%s',click4='%s'"% (row[0],row[1],row[2],row[3],row[4],row[5],row[0],row[1],row[2],row[3],row[4],row[5]))
    #my.commit()
    c.close()
    #ca.close()
    f.close()
    print 'ok'
except:
    print 'err'
    sys.exit(0)
