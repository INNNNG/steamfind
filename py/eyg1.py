# -*- coding: utf8 -*-
import sqlite3,os,logging,MySQLdb,traceback,sys,time
def console_out(logFilename):
    ''''' Output log to file and console '''
    # Define a Handler and set a format which output to file
    logging.basicConfig(
        level=logging.DEBUG,  # 定义输出到文件的log级别，大于此级别的都被输出
        format='%(asctime)s  %(filename)s : %(levelname)s  %(message)s',  # 定义输出log的格式
        datefmt='%Y-%m-%d %H:%M:%S',  # 时间
        filename=logFilename,  # log文件名
        filemode='a')  # 写入模式“w”或“a”
    # Define a Handler and set a format which output to console
    console = logging.StreamHandler()  # 定义console handler
    console.setLevel(logging.INFO)  # 定义该handler级别
    formatter = logging.Formatter('%(asctime)s  %(filename)s : %(levelname)s  %(message)s')  # 定义该handler格式
    console.setFormatter(formatter)
    # Create an instance
    logging.getLogger().addHandler(console)  # 实例化添加handler

    # Print information              # 输出日志级别
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
        cur.execute("update eygame set click5=click4")
        conn1.commit()
        time.sleep(2)
        cur.execute("update eygame set click4=click3")
        conn1.commit()
        time.sleep(2)
        cur.execute("update eygame set click3=click2")
        conn1.commit()
        time.sleep(2)
        cur.execute("update eygame set click2=click1")
        conn1.commit()
        time.sleep(2)
        conn = sqlite3.connect('C:\USERDATA$\STDataEx.dat')
        c = conn.cursor()
        c.execute("SELECT ID,Name,ClickRate FROM Game ORDER BY ClickRate DESC")
        for row in c:
           cur.execute("insert into eygame(id,name1,click1) values('%s','%s','%s') on duplicate key update id='%s',name1='%s',click1='%s'"% (row[0],row[1],row[2],row[0],row[1],row[2]))
        conn1.commit()
        cur.close()
        logging.info('done')
    except:
        logging.info('err')
        traceback.print_exc(file=open('logging.log','a+'))
    



if __name__ == "__main__":
    console_out('logging.log')


