# -*- coding: utf-8 -*-

import sqlite3,os,MySQLdb,sys,datetime,time
try:
    my = MySQLdb.connect(
	host='192.168.89.89',
	port=3306,
	user='py',
	passwd='py',
	db='bar',
	charset='gb2312',
	)
    cur = my.cursor()
    cur.execute("delete from swy_p")
    my.commit()
    os.chdir('D:\\sw')
    conn = sqlite3.connect('commitdata.db')
    conn.text_factory=str
        

    c = conn.cursor()
    print '1'
    c.execute("SELECT barid,PkgId,(max(Duration)/3600) FROM tbl_DPInfo WHERE Duration > 1800 GROUP BY PkgId,Guid ORDER BY Duration")
    print '2'
    #i = 0
    for row in c:
        #print row[0],row[1],row[2]
        cur.execute("insert into swy_p(barid,pkgid,t) values('%s','%s','%s') "%
                    (row[0],row[1],row[2]))
    my.commit()
    c = conn.cursor()
    print '3'
    c.execute("SELECT min(CreateTime),max(CreateTime) FROM tbl_DPInfo")
    print '4'
    #i = 0
    for row in c:
        print row[0],row[1]
        cur.execute("update diy SET a = '%s',b = '%s' WHERE `id` = '1' "%(row[0],row[1]))
    my.commit()
    cur.close()
    print 'ok'
except:
    print 'err'
    sys.exit(0)
