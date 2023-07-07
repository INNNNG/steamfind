# -*- coding: GBK -*-

import sqlite3,os,MySQLdb,sys,datetime,time
try:
    t=datetime.datetime.now()
    t2=(t-datetime.timedelta(days=5)).strftime("%Y-%m-%d %H:%M:%S")
    ts2=time.mktime(time.strptime(t2, '%Y-%m-%d %H:%M:%S'))
    tt=int(ts2)
    #print tt
    my = MySQLdb.connect(
	host='192.168.89.89',
	port=3306,
	user='py',
	passwd='py',
	db='bar',
	charset='utf8',
	)
    cur = my.cursor()
    cur.execute("delete from sw_t ")
    my.commit()
    os.chdir('D:\\sw')
    conn = sqlite3.connect('barserver.db')
        
    c = conn.cursor()
    print '%s'% (tt)
    sql=("SELECT ComputerName, LogoutTime,ip FROM tbl_Computer WHERE LogoutTime < %s and substr(Gateway,12,1) LIKE '%s'"%(tt,'.'))
    c.execute(sql)
        #c.execute("SELECT ComputerName, LogoutTime,ip FROM tbl_Computer WHERE LogoutTime < '1597222672' AND Ip LIKE '192.168.134%' OR ComputerName LIKE 'ZLST%' AND LogoutTime < '1597222672' ")
    print '2'
    #i = 0
    for row in c:
        #i+=1         print i,row[0]
        #print row[0],row[1] pkgid,localclass,
        #a3=a3.encode('latin-1').decode('gbk')
        print row[0],row[1],row[2]
        cur.execute("INSERT INTO sw_t(n,h,i) values('%s','%s','%s') "% (row[0],row[1],row[2]))
        #        cur.execute("insert into gameswy(id,name,fenlei,click1,click2,click3,click4) values('%s','%s','%s','%s','%s','%s') on duplicate key update id='%s',name='%s',fenlei='%s',click1='%s',click2='%s',click3='%s',click4='%s'"% (row[0],row[1],row[2],row[3],row[4],row[5],row[0],row[1],row[2],row[3],row[4],row[5]))
    my.commit()
    cur.close()
    print 'ok'
except:
    print 'err'
    sys.exit(0)
