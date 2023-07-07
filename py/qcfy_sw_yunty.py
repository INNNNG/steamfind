# -*- coding: GBK -*-

import sqlite3,os,MySQLdb,sys,time,socket
try:
    ttt= time.time()
    d=socket.socket(socket.AF_INET,socket.SOCK_DGRAM)
    os.chdir('D:\\')
    if os.access("\\网维大师\\BarServer\\data\\bartempmonitor.db", os.F_OK):
        os.chdir('\\网维大师\\BarServer\\data')
    else:
        os.chdir("\\Program Files\\网维大师\\BarServer\\data")
            
    conn1 = sqlite3.connect('barserver.db')
    c1 = conn1.cursor()
    c1.execute("SELECT ComputerName, LogoutTime FROM tbl_Computer WHERE ComputerName LIKE '%YUN%' AND Status = '8' ORDER BY LogoutTime ;")
    #print 's'
    for row in c1:
        tt1=(ttt-row[1])
        if tt1 <= 6000 and tt1 >= 1000:
            asd= (row[0][7:8])   
            if asd=='0':
                host='192.168.170.201'
            if asd=='1':
                host='192.168.170.202'
            if asd=='2':
                host='192.168.170.203'         
            if asd=='4':
                host=' '
            if asd=='5':
                host='192.168.170.204'
            print row[0],host,'0'+row[0][8:9]
           # nn = ("call_%s_apress" %(nn))
            #d.sendto(nn.encode(),(host,7201))
            #print (row[0],tt1)
        
       #cur.execute("insert into sw(lanid,jiqihao,kaiji,guanji) values('%s','@%s','%s','%s') on duplicate key update lanid='%s',jiqihao='@%s',kaiji='%s',guanji='%s'"% (kkk,row[0],row[1],row[2],kkk,row[0],row[1],row[2]))
    ##my.commit()
    cur.close()
    print 'e'
except:
    sys.exit(0)
