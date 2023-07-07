# -*- coding: gbk -*-
import MySQLdb
import sys
import time
import os
#import tkMessageBox
#import Tkinter
import datetime
import sqlite3 as dba


ooo = 1
kkk = sys.argv[1]


def fff():
    c = open('pc.html', 'w', 1)
    a = open('time.html', 'w', 1)
    d = open('tj.html', 'w', 1)

    conn = dba.connect('barserver.db')
    cursor = conn.cursor()
    conn.text_factory = bytes
    conn.row_factory = dba.Row
    
    cursor.execute(
        "select computername,REPLACE (REPLACE (REPLACE (REPLACE (processor, ' CPU @', ''),'GenuineIntel',''),'GenuineIotel',''),'Intel(R) Core(TM) ','') AS cpu,REPLACE (REPLACE (REPLACE (REPLACE (REPLACE (memory,'物理内存',''),'Kingston',''),'Physical Memory	',''),'	8589934592','8G '),'	17179869184','16G ') AS mem,REPLACE (REPLACE (REPLACE (REPLACE (REPLACE (REPLACE (videochip,'NVIDIA GeForce GTX ',''),'0 ','0'),'05GB','5'),'06GB','6'),'03GB','3'),'Ti		','') AS gpu,REPLACE (REPLACE (motherboard,'Technology',''),'COMPUTER','') AS mot   FROM tbl_comphardinfotmp  where computername IN (select replace(computername,'SY','') from tbl_computer)")
    rows = cursor.fetchall()
    c.write(time.strftime(
        '<table id=pytable><thead><tr><th id=pyb></th><th>处理器</th><th>内存</th><th>显卡</th><th>%m-%d %H:%M:%S</th></tr></thead><tbody>'))
    for row in rows:
        c.write("<tr><td class=pya>%s</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td></tr>" %
                (row[0], row[1], row[2], row[3], row[4],))
    c.write("</tbody></table>")
    c.close()
    rows.remove
    
    cursor.execute(
        "select ComputerName,LastReportTime FROM tbl_GraphicsCardDevice where computername IN (select replace(computername,'SY','') from tbl_computer) group by LastReportTime limit 20;")
    rows = cursor.fetchall()
    a.write(time.strftime('<table><thead><tr><th></th><th>%m-%d %H:%M:%S</th></tr></thead><tbody>'))
    for row in rows:
        a.write("<tr><td>%s</td><td>%s</td></tr>" %
                (row[0], datetime.datetime.utcfromtimestamp(row[1]).strftime("%m-%d %H:%M:%S"),))
    a.write("</tbody></table>")
    a.close()
    rows.remove

    cursor.execute(
        "select count(*) AS tj,REPLACE (REPLACE (REPLACE (REPLACE (processor, ' CPU @', ''),'GenuineIntel',''),'GenuineIotel',''),'Intel(R) Core(TM) ','') AS cpu,REPLACE (REPLACE (REPLACE (REPLACE (REPLACE (memory,'物理内存',''),'Kingston',''),'Physical Memory	',''),'	8589934592','8G '),'	17179869184','16G ') AS mem,REPLACE (REPLACE (REPLACE (REPLACE (REPLACE (REPLACE (videochip,'NVIDIA GeForce GTX ',''),'0 ','0'),'05GB','5'),'06GB','6'),'03GB','3'),'Ti		','') AS gpu,REPLACE (REPLACE (motherboard,'Technology',''),'COMPUTER','') AS mot FROM (SELECT * FROM tbl_comphardinfotmp WHERE	computername IN (SELECT REPLACE (computername, 'SY', '')   FROM  tbl_computer)	)GROUP BY	cpu,	mem,	gpu,	mot	ORDER BY	tj desc")
    rows = cursor.fetchall()
    d.write(time.strftime(
        '<table id=pytable><thead><tr><th id=pyc></th><th>处理器</th><th>内存</th><th>显卡</th><th>%m-%d %H:%M:%S</th></tr></thead><tbody>'))
    for row in rows:
        d.write("<tr><td class=pyd>%s</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td></tr>" %
                (row[0], row[1], row[2], row[3], row[4],))
    d.write("</tbody></table>")
    d.close()
    rows.remove

    
    #e = open('index.html', 'w', 1)
    #conn2 = dba.connect('bartempmonitor.db')
    #cursor2 = conn2.cursor()
    #conn2.text_factory = bytes
    #conn2.row_factory = dba.Row
    #cursor2.execute(
    #    "select ComputerName,CpuTemp,cpuFanSpeed,GpuTemp,rpttime from tbl_ComputerTempAlarm WHERE cputemp>85 or GpuTemp>85 ORDER BY ComputerName ;")
    #rows = cursor2.fetchall()
    #e.write(time.strftime(
    #    '<table><thead><tr><th></th><th>处理器温度</th><th>风扇转速/分钟</th><th>显卡温度</th><th>%m-%d %H:%M:%S</th></tr></thead><tbody>'))
    #for row in rows:
    #    e.write("<tr><td>%s</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td></tr>" %
    #            (row[0], row[1], row[2], row[3], datetime.datetime.utcfromtimestamp(row[4]).strftime("%m-%d %H:%M:%S"),))
    #e.write("</tbody></table>")
    #e.close()
    #rows.remove
    sql1()


#def err():
  #  top = Tkinter.Tk()
 #   top.withdraw()
  #  result = tkMessageBox.askyesno(
  #      message=u"run.exe出现问题啦！", detail=u"          请联系 By 邵", icon="warning")


def cc(conn1):
    p = open("pc.html", "rb", 1)
    t = open("time.html", "rb", 1)
    c = open("index.html", "rb", 1)
    n = open("tj.html", "rb", 1)
    cur = conn1.cursor()

    html = t.readline()
    cur.execute("UPDATE time set html = %s where lan = %s ", [html, kkk])
    t.close()

    #html = c.readline()
    #cur.execute("UPDATE cpu set html = %s where lan = %s ", [html, kkk])
    #c.close()

    html = p.readline()
    cur.execute("UPDATE pc set html = %s where lan = %s ", [html, kkk])
    p.close()

    html = n.readline()
    cur.execute("UPDATE pnp set html = %s where lan = %s ", [html, kkk])
    n.close()

    cur.close()
    conn1.commit()
    conn1.close()


def sql1():
    try:
        conn1 = MySQLdb.connect(
        host='192.168.89.89',
        port=3306,
        user='py',
        passwd='py',
        db='bar',
        charset='gb2312',
        )
        print ' L '
        cc(conn1)
    except:
        conn1 = MySQLdb.connect(
        host='61.132.73.162',
        port=3307,
        user='py',
        passwd='py',
        db='bar',
        charset='gb2312',
        )
        cc(conn1)
        print ' W '

print time.strftime('%H:%M:%S'), kkk
fff()
#print time.ctime(), '60分钟后重新获取'
#os.popen('qcfy.bat')

#try:
 #   while ooo == 1:
  #      print time.ctime(), '', kkk
        # os.system('qcfy.bat')
        # time.sleep(15)
    # check_exsit('cmd.exe')
  #      fff()
  #      print time.ctime(), ' 60分钟后重新获取'
  #      time.sleep(5)
 #       os.popen('qcfy.bat')
 #       quit
#except:
   # print time.ctime(), ' err'
   # err()
 #   print time.ctime(), 'err end'
 #   os.popen('qcfy.bat')
# else:
 #   print time.ctime(), ' end'
 #   os.popen('qcfy.bat')


#def check_exsit(process_name):
#    import win32com.client
 #   WMI = win32com.client.GetObject('winmgmts:')
  #  processCodeCov = WMI.ExecQuery(
   #     'select * from Win32_Process where Name="%s"' % process_name)
    #if len(processCodeCov) > 0:
     #   print time.ctime(), ' 正常', process_name
   # else:
    #    global ooo
     #   ooo = 2
      #  print time.ctime(), '', process_name, ' 不存在'
       # adasd
