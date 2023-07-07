# -*- coding: GBK -*-

import sqlite3,os,MySQLdb,sys,datetime,time
try:
    t=datetime.datetime.now()
    t2=(t-datetime.timedelta(days=30)).strftime("%Y-%m-%d %H:%M:%S")
    ts2=time.mktime(time.strptime(t2, '%Y-%m-%d %H:%M:%S'))
    tt=int(ts2)
    print t2
    my = MySQLdb.connect(
	host='192.168.89.89',
	port=3306,
	user='py',
	passwd='py',
	db='bar',
	charset='utf8'
	)
    cur = my.cursor()
    cur.execute("delete from stgpu ")
    my.commit()
    os.chdir('D:\\sw')
    conn = sqlite3.connect('barserver.db')
    c = conn.cursor()
    print '%s'% (tt)
    sql=("SELECT REPLACE (REPLACE (REPLACE (tbl_Computer.Gateway, '.253', '.254'), '.251', '.254'), '.254', '')yy, Count(*)dd,substr(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(VideoChip,'NVIDIA',''),'GeForce',''),'RTX',''),'GTX',''),' ',''),0,5) as gg FROM tbl_Computer INNER JOIN tbl_CompHardInfoTmp ON tbl_CompHardInfoTmp.ComputerName = tbl_Computer.ComputerName GROUP BY Gateway,VideoChip HAVING VideoChip like '%s' and tbl_Computer.ActiveTime > %s "%('%0%',tt))
    c.execute(sql)
        #c.execute("SELECT ComputerName, LogoutTime,ip FROM tbl_Computer WHERE LogoutTime < '1597222672' AND Ip LIKE '192.168.134%' OR ComputerName LIKE 'ZLST%' AND LogoutTime < '1597222672' ")
    print '2'
    #i = 0
    for row in c:
        #i+=1         print i,row[0]
        #print row[0],row[1] pkgid,localclass,
        #a3=a3.encode('latin-1').decode('gbk')
        #nn='s'+row[0]+row[1]
        #tt3=t.strftime("%d%H")
        print row[0],row[1],row[2]
        cur.execute("insert into stgpu (a,b,c) values ('%s','%s','%s')"%(row[0],row[1],row[2]))
        #        cur.execute("insert into gameswy(id,name,fenlei,click1,click2,click3,click4) values('%s','%s','%s','%s','%s','%s') on duplicate key update id='%s',name='%s',fenlei='%s',click1='%s',click2='%s',click3='%s',click4='%s'"% (row[0],row[1],row[2],row[3],row[4],row[5],row[0],row[1],row[2],row[3],row[4],row[5]))
    my.commit()
    sqlc=("SELECT REPLACE (REPLACE (REPLACE (tbl_Computer.Gateway, '.253', '.254'), '.251', '.254'), '.254', '')yy, Count(*)dd, substr(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(REPLACE(Processor,'00','00                            1'),'12th Gen ',''),'11th Gen ',''),'@ ',''),'CPU ',''),'Xeon(R) ',''),'Core(TM) ',''),'Intel(R) ',''),'AMD Ryzen ','R'),0,11)cpu FROM tbl_Computer INNER JOIN tbl_CompHardInfoTmp ON tbl_Computer.ComputerName = tbl_CompHardInfoTmp.ComputerName WHERE tbl_Computer.ActiveTime > '%s' GROUP BY yy,cpu HAVING dd >9 and Processor like '%s'"%(tt,'%00%'))
    c.execute(sqlc)
        #c.execute("SELECT ComputerName, LogoutTime,ip FROM tbl_Computer WHERE LogoutTime < '1597222672' AND Ip LIKE '192.168.134%' OR ComputerName LIKE 'ZLST%' AND LogoutTime < '1597222672' ")
    print '3'
    #i = 0
    for row in c:
        #i+=1         print i,row[0]
        #print row[0],row[1] pkgid,localclass,
        #a3=a3.encode('latin-1').decode('gbk')
        #nn='s'+row[0]+row[1]
        #tt3=t.strftime("%d%H")
        print row[0],row[1],row[2]
        cur.execute("insert into stgpu (a,b,c) values ('%s','%s','%s')"%(row[0],row[1],row[2]))
        #        cur.execute("insert into gameswy(id,name,fenlei,click1,click2,click3,click4) values('%s','%s','%s','%s','%s','%s') on duplicate key update id='%s',name='%s',fenlei='%s',click1='%s',click2='%s',click3='%s',click4='%s'"% (row[0],row[1],row[2],row[3],row[4],row[5],row[0],row[1],row[2],row[3],row[4],row[5]))
    my.commit()
    cur.close()
    print 'ok'
except:
    print 'err'
    sys.exit(0)
