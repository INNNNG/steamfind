# -*- coding: GBK -*-

import sqlite3,os,MySQLdb,sys,datetime,time
try:
    t=datetime.datetime.now()
    t2=(t-datetime.timedelta(days=30)).strftime("%Y-%m-%d %H:%M:%S")
    ts2=time.mktime(time.strptime(t2, '%Y-%m-%d %H:%M:%S'))
    tt=int(ts2)
    print tt
    os.chdir('D:\\sw')
    conn = sqlite3.connect('barserver.db')
    my = sqlite3.connect('online.db')
    
    c = conn.cursor()
    print tt
    sql=("SELECT substr(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Gateway,'.253','.254'),'.251','.254'),'172.29.','172.18.'),'172.27.','172.18.'),'172.19.','172.18.'),'.2.254','.00.254'),'.3.254','.00.254'),'.4.254','.00.254'),'.5.254','.00.254'),'.6.254','.00.254'),'.7.254','.00.254'),'.8.254','.00.254'),'.9.254','.00.254'),'.10.254','.00.254'),'.11.254','.00.254'),'.12.254','.00.254'),'.13.254','.00.254'),'.14.254','.00.254'),'.15.254','.00.254'),'.16.254','.00.254'),'.17.254','.00.254'),'.18.254','.00.254'),'.19.254','.00.254'),'172.18.1','172.18.'),-9,1)yy,REPLACE(REPLACE(REPLACE(REPLACE(Gateway,'.253',''),'.251',''),'.254',''),'.','')gg,sum(CASE WHEN REPLACE(REPLACE(Status,'8','0'),'9','1')='1' THEN REPLACE(REPLACE(Status,'8','0'),'9','1') ELSE 0  end)zx,count(*)d FROM tbl_Computer WHERE substr(ip,-3) not BETWEEN '230' AND '250' and ActiveTime > %s GROUP  BY gg,yy HAVING zx>5 and gg not like '%s' ORDER BY yy,zx DESC"%(tt,'172%'))
    c.execute(sql)
    d = my.cursor()
    d.execute("UPDATE std SET c=0")
    my.commit()
    i = 0
    f=open("d.txt","w")
    print '2'
    for row in c:
        i+=1
        print row[1]
        f.write(("%s %s %s %s")%(row[0],row[1],row[2],row[3]))
        f.write('\n')
        #print '3'
        #print("insert into std (a,b,c,d) values (%s,%s,%s,%s) on duplicate key update b='%s',c='%s' "%(row[0],row[1],row[2],row[3],row[1],row[2]))
        d.execute("insert into std (a,b,c,d) values ('%s','%s','%s','%s'); "%(row[0],row[1],row[2],row[3]))
        #        cur.execute("insert into gameswy(id,name,fenlei,click1,click2,click3,click4) values('%s','%s','%s','%s','%s','%s') on duplicate key update id='%s',name='%s',fenlei='%s',click1='%s',click2='%s',click3='%s',click4='%s'"% (row[0],row[1],row[2],row[3],row[4],row[5],row[0],row[1],row[2],row[3],row[4],row[5]))
    my.commit()
    d.close()
    f.close()
    print 'ok'
except:
    print 'err'
    sys.exit(0)
