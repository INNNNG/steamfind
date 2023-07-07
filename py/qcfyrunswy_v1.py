# -*- coding: GBK -*-
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
    c = open('100.html', 'w', 1)
    a = open('time.html', 'w', 1)

    conn = dba.connect('barserver.db')
    cursor = conn.cursor()
    conn.text_factory = bytes
    conn.row_factory = dba.Row
    
    cursor.execute(
        "select computername,REPLACE (REPLACE (REPLACE (REPLACE (processor, ' CPU @', ''),'GenuineIntel',''),'GenuineIotel',''),'Intel(R) Core(TM) ','') AS cpu,REPLACE (REPLACE (REPLACE (REPLACE (REPLACE (memory,'物理内存',''),'Kingston',''),'Physical Memory	',''),'	8589934592','8G '),'	17179869184','16G ') AS mem,REPLACE (REPLACE (REPLACE (REPLACE (REPLACE (REPLACE (videochip,'NVIDIA GeForce GTX ',''),'0 ','0'),'05GB','5'),'06GB','6'),'03GB','3'),'Ti		','') AS gpu,REPLACE (REPLACE (motherboard,'Technology',''),'COMPUTER','') AS mot   FROM tbl_comphardinfotmp  where computername IN (select replace(computername,'SY','') from tbl_computer)")
    rows = cursor.fetchall()
    c.write(time.strftime(
        '<table id=pytable><thead><tr><th id=pytt>%H:%M</th><th>处理器</th><th>内存</th><th>显卡</th><th>主板</th></tr></thead><tbody>'))
    for row in rows:
        c.write("<tr><td>%s</td><td>%s</td><td>%s</td><td>%s</td><td>%s</td></tr>" %
                (row[0], row[1], row[2], row[3], row[4],))
    c.write("</tbody></table>")
    c.close()
    rows.remove
    
    cursor.execute(
        "SELECT aa.ComputerName, aa.ActiveTime FROM tbl_Computer AS aa LEFT JOIN tbl_ComputerGroup AS bb ON aa.ComputerName = bb.ComputerName WHERE aa.ActiveTime NOT LIKE 0 AND aa.ComputerName NOT LIKE '%-%' AND aa.Status = 8 AND bb.GroupId = 1 ORDER BY aa.ActiveTime ASC limit 40;")
    rows = cursor.fetchall()
    a.write(time.strftime('<table><thead><tr><th id=tja></th><th>%m-%d %H:%M:%S</th></tr></thead><tbody>'))
    for row in rows:
        a.write("<tr><td >%s</td><td>%s</td></tr>" %
                (row[0], datetime.datetime.utcfromtimestamp(row[1]).strftime("%m-%d %H:%M:%S"),))
    a.write("</tbody></table>")
    a.close()
    rows.remove
    sql1()




def cc(conn1):
    t = open("time.html", "rb", 1)
    c = open("100.html", "rb", 1)
    cur = conn1.cursor()

    html = t.readline()
    cur.execute("UPDATE time set html = %s where lan = %s ", [html, kkk])
    t.close()
    
    html = c.readline()
    cur.execute("UPDATE cpu set html = %s where lan = %s ", [html, kkk])
    c.close()


    cur.close()
    conn1.commit()
    conn1.close()


def sql1():
    try:
        conn1 = MySQLdb.connect(
        host='192.168.89.89',
        port=33016,
        user='py',
        passwd='py',
        db='bar',
        charset='UTF-8',
        )
        print ' L '
        cc(conn1)
    except:
        conn1 = MySQLdb.connect(
        host='61.132.73.162',
        port=33017,
        user='py',
        passwd='py',
        db='bar',
        charset='UTF-8',
        )
        cc(conn1)
        print ' W '

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
