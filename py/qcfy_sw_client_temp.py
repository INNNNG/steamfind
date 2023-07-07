# -*- coding: GBK -*-

import sqlite3,os,MySQLdb,sys,datetime
try:
    kkk = sys.argv[1]
    my = MySQLdb.connect(
	host='192.168.89.89',
	port=3306,
	user='py',
	passwd='py',
	db='bar',
	charset='utf8',
	)
    cur = my.cursor()
    cur.execute("delete from sw where lanid = '%s'"%(kkk))
    my.commit()
    
    os.chdir('D:\\')
    if os.access("\\网维大师\\BarServer\\data\\bartempmonitor.db", os.F_OK):
        os.chdir('\\网维大师\\BarServer\\data')
    else:
        os.chdir("\\Program Files\\网维大师\\BarServer\\data")
        
    conn = sqlite3.connect('bartempmonitor.db')
    c = conn.cursor()
    c.execute("select ComputerName,CpuTemp,cpuFanSpeed,GpuTemp,rpttime from tbl_ComputerTempAlarm WHERE cputemp>85 or GpuTemp>90 ORDER BY ComputerName ;")
    for row in c:
       cur.execute("insert into sw(lanid,jiqihao,cput,cpuf,gput,riqi) values('%s','%s','%s','%s','%s','%s') on duplicate key update lanid='%s',jiqihao='%s',cput='%s',cpuf='%s',gput='%s',riqi='%s'"% (kkk,row[0],row[1],row[2],row[3],row[4],kkk,row[0],row[1],row[2],row[3],row[4]))
    my.commit()
    cur.close()
    sys.exit(0)
    
    conn1 = sqlite3.connect('barmonitor.db')
    c1 = conn1.cursor()
    c1.execute("select ComputerName,Speed from tbl_HardInfoNetWorkCard WHERE Speed=100 ORDER BY ComputerName ;")
    for row in c1:
       cur.execute("insert into sw(lanid,jiqihao,speed) values('%s','%s','B') on duplicate key update lanid='%s',jiqihao='%s',speed='B'"% (kkk,row[0],kkk,row[0]))
    my.commit()
except:
    sys.exit(0)
