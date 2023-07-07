#!/usr/bin/env python
# -*- coding:utf-8 -*-

# #执行客户端发送过来的命令，并把执行结果返回给客户端
import socket
import traceback
import subprocess
import os
import time

host = ''
port = 55555

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)

s.bind((host, port))
s.listen(1)



while 1:
    try:
        client_socket, client_addr = s.accept()
    except Exception, e:
        traceback.print_exc()
        continue

    try:
        print time.ctime(),client_socket.getpeername()
        while 1:
            command = client_socket.recv(4096)
            if command != 'shao':
                break
            print client_socket.getpeername()[0] + ':' + str(command)

            # 执行客户端传递过来的命令
            lj=os.getcwd()
            dd='mssql_ly.py'+' '+ command
            handler = subprocess.Popen(
                dd, shell=True, stdout=subprocess.PIPE)
            output = handler.stdout.readlines()
            if output is None:
                output = []

            for one_line in output:
                client_socket.sendall(one_line)
                client_socket.sendall("\n")

            client_socket.sendall("over")

    except Exception, e:
        traceback.print_exc()

    try:
        client_socket.close()
    except Exception, e:
        traceback.print_exc()
