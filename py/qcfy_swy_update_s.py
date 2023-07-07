# -*- coding: utf-8 -*-

import sqlite3,os,MySQLdb,sys,datetime
try:
    aa = sys.argv[1]
    t=datetime.datetime.now()
    t2=(t-datetime.timedelta(hours=4)).strftime("%Y-%m-%d %H:%M:%S")
    print t2
    #bb = sys.argv[2]
    #cc = sys.argv[3]
    my = MySQLdb.connect(
	host='192.168.89.89',
	port=3306,
	user='py',
	passwd='py',
	db='bar',
	charset='gb2312',
	)
    cur = my.cursor()
    cur.execute("delete from st_update where t <='%s' "%(t2))
    my.commit()
    cur.execute("insert into st_update(n) values('%s') on duplicate key update n='%s'"%
                    (aa,aa))
    my.commit()
    cur.close()
    print 'ok'
except:
    print 'err'
    sys.exit(0)
