# -*- coding: utf-8 -*-
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
    a = open('time.html', 'w', 1)

    conn = dba.connect('barserver.db')
    cursor = conn.cursor()
    conn.text_factory = bytes
    conn.row_factory = dba.Row
    
    
    cursor.execute(
        "SELECT aa.ComputerName, aa.ActiveTime FROM tbl_Computer AS aa LEFT JOIN tbl_ComputerGroup AS bb ON aa.ComputerName = bb.ComputerName WHERE aa.ActiveTime NOT LIKE 0 AND aa.ComputerName NOT LIKE '%-%' AND aa.Status = 8 AND bb.GroupId = 1 ORDER BY aa.ActiveTime ASC limit 99;")
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
    cur = conn1.cursor()

    html = t.readline()
    cur.execute("UPDATE time set html = %s where lan = %s ", [html, kkk])
    t.close()


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
        # charset='gb2312',
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
        # charset='gb2312',
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
