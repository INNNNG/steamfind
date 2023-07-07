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
    cur.execute("update gameswy set click5=click4")
    my.commit()
    cur.execute("update gameswy set click4=click3")
    my.commit()
    cur.execute("update gameswy set click3=click2")
    my.commit()
    cur.execute("update gameswy set click2=click1")
    my.commit()    
    cur.execute("update gameswy set click1=0")
    my.commit()    
    os.chdir('D:\\sw')
    conn = sqlite3.connect('barserver.db')
    conn.text_factory=str
        

    c = conn.cursor()
    print '1'
    c.execute("SELECT  pkgid,LocalHotExp,IdcClass FROM tbl_Package WHERE LocalHotExp > '30' ;")
    print '2'
    #i = 0
    for row in c:
        #i+=1         print i,row[0]
        #print row[0],row[1] pkgid,localclass,
        #a3=a3.encode('latin-1').decode('gbk')
        cur.execute("insert into gameswy(id,click1,fl) values('%s','%s','%s') on duplicate key update click1='%s',fl='%s'"%
                    (row[0],row[1],row[2],row[1],row[2]))
        #        cur.execute("insert into gameswy(id,name,fenlei,click1,click2,click3,click4) values('%s','%s','%s','%s','%s','%s') on duplicate key update id='%s',name='%s',fenlei='%s',click1='%s',click2='%s',click3='%s',click4='%s'"% (row[0],row[1],row[2],row[3],row[4],row[5],row[0],row[1],row[2],row[3],row[4],row[5]))
    my.commit()
    cur.close()
    print 'ok'
except:
    print 'err'
    sys.exit(0)
