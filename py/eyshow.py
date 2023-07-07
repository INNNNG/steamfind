# -*- coding: UTF-8 -*-
import sqlite3,os,logging,traceback

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
        if os.access("C:\USERDATA$\STdataEx.dat-journal", os.F_OK):
            logging.warning('dat-journal')
            quit()
        conn = sqlite3.connect('C:\USERDATA$\STdataEx.dat')
        c = conn.cursor()
        c.execute("SELECT sum(ShowUpdate) FROM Game WHERE ShowUpdate=1")
        for row in c:
            logging.info('game : %s'% (row))
        c.execute("UPDATE Game SET ShowUpdate=0 where ShowUpdate=1")
        conn.commit()
        logging.info('done gg')
    except:
        logging.info('err')
        traceback.print_exc(file=open('logging.log','a+'))


if __name__ == "__main__":
    console_out('logging.log')
    
