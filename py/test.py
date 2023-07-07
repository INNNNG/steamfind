# -*- coding: utf-8 -*-

import sqlite3,os,MySQLdb,sys,datetime,re
try:
    conn = sqlite3.connect('barserver.db')
    conn.text_factory=str
        

    c = conn.cursor()
    print '1'
    c.execute("SELECT  pkgid,LocalHotExp,IdcClass,pkgname FROM tbl_Package WHERE LocalHotExp > '400' ;")
    print '2'
    #i = 0
    for row in c:
      #print
      a3=row[2]
      a1=row[3]
      #result = re.findall(r'Z:\\(.*)\\.*\\', a3)
        #print row[0],row[1] pkgid,localclass,
      #a3=a3.encode('utf8').decode('gbk')
      print a3,a1
        #cur.execute("insert into gameswy(id,click1) values('%s','%s') on duplicate key update click1='%s'"%
        #            (row[0],row[1],row[1]))
        #        cur.execute("insert into gameswy(id,name,fenlei,click1,click2,click3,click4) values('%s','%s','%s','%s','%s','%s') on duplicate key update id='%s',name='%s',fenlei='%s',click1='%s',click2='%s',click3='%s',click4='%s'"% (row[0],row[1],row[2],row[3],row[4],row[5],row[0],row[1],row[2],row[3],row[4],row[5]))
    print 'ok'
except:
    print 'err'
    sys.exit(0)
