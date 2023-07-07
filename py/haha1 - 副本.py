# -*- coding: utf-8 -*-
from telnetlib import Telnet
##############################需要配置信息##########################
#关联设备服务器IP列表
Hosts=['192.168.1.xx','192.168.1.xx','192.168.1.xx','192.168.1.xx','192.168.1.xx','192.168.1.xx'] 
# 登录用户名   
username = 'xx' 
# 登录密码  
password = 'xx'
#EN命令
EN = 'xx'
#二次验证口令
ZXR10 = 'xx'   
# 命令提示符
finish = 'xx#' 
#需要执行的命令
commands = ['show lte data processing report','show interface xgei1/1']     
#输出内容写入文件
g_outfilePath = '/home/tnOutResult'
####################################################################
def do_telnet(Hosts, username, password, finish, commands):
    # 连接Telnet服务器  
        tn = Telnet(host, port=23, timeout=10)
        #tn.set_debuglevel(2)  
        # 输入登录用户名  
        tn.read_until('Username:')  
        tn.write(username + '\n')  
        # 输入登录密码  
        tn.read_until('Password:')  
        tn.write(password + '\n')
        # 输入命令en  
        tn.read_until('ZXR10>')  
        tn.write(EN + '\n')
        # 输入二次验证口令  
        tn.read_until('Password:')  
        tn.write(ZXR10 + '\n')
        # 登录完毕后执行命令  
        tn.read_until(finish)  
        for command in commands:  
            tn.write(command + '\n')
            time.sleep(2)
            for i in range(10):
                tn.write(' ')
                time.sleep(0.1)
            Outresult = tn.read_very_eager()
    #执行完毕后，终止Telnet连接（或输入exit退出）  
        tn.read_until(finish)  
        tn.close()
        tn.write('exit\n')
