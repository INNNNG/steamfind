# -*- coding: utf-8 -*-

import sqlite3,os,MySQLdb,sys,datetime
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
    os.chdir('D:\\sw')
    conn = sqlite3.connect('barserver.db')
    conn.text_factory=str
        

    c = conn.cursor()
    print '1'
    c.execute("SELECT tbl_GroupBar.BarId,tbl_GroupName.Name,tbl_GroupName.GroupId FROM tbl_GroupBar LEFT JOIN tbl_GroupName WHERE tbl_GroupBar.GroupId = tbl_GroupName.GroupId LIMIT 2, 500")
    print '2'
    #i = 0
    for row in c:
        print row[0],row[1],row[2]
        cur.execute("insert into barid(BarId,Name,gid) values('%s','%s','%s') on duplicate key update BarId='%s',Name='%s',gid='%s'"%
                    (row[0],row[1],row[2],row[0],row[1],row[2]))
    my.commit()
    cur.close()
    print 'ok'
except:
    print 'err'
    sys.exit(0)
