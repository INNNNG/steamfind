# -*- coding: GBK -*-

import sqlite3,os,MySQLdb,sys,datetime
try:
    conn1 = MySQLdb.connect(
	host='192.168.89.89',
	port=3306,
	user='py',
	passwd='py',
	db='bar',
	charset='utf8',
	)
    cur = conn1.cursor()
    os.chdir('D:\\')
    if os.access("\\网维大师\\BarServer\\data\\barmonitor.db", os.F_OK):
        os.chdir('\\网维大师\\BarServer\\data')
    else:
        os.chdir("\\Program Files\\网维大师\\BarServer\\data")
    conn = sqlite3.connect('barmonitor.db')
    c = conn.cursor()
    kkk = sys.argv[1]
    c.execute("select ComputerName,Speed from tbl_ComputerTempAlarm WHERE cputemp>85 or GpuTemp>85 ORDER BY ComputerName ;")
    for row in c:
       cur.execute("insert into sw(lanid,jiqihao,speed) values('%s','%s','B') on duplicate key update lanid='%s',jiqihao='%s',Speed='B'"% (kkk,row[0],kkk,row[0]))
    conn1.commit()
    cur.close()
except:
    sys.exit(0)
