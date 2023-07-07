#!/usr/bin/env python
# -*- coding:utf-8 -*-
from Tkinter import *
import subprocess,sys,tkinter as tk

 

def helloCallBack():
         
      try:
            subprocess.Popen("z:/qcfy_tools/y/3600.exe -pwMsT1gLrvV")
            window.destroy()
            sys.exit(0)
      except:
            window.destroy()
            sys.exit(0)

def helloCallBack1():
      try:
            subprocess.Popen("explorer C:\Users\Administrator\AppData\Local")
      except:
            sys.exit(0)
      
window = tk.Tk()
window.title('免责声明')
window.geometry('300x260')
l = tk.Label(window, 
    text='盗版游戏一切后果自行承担\n\n 慎重使用,请支持正版\n\n 随时失效,且玩且珍惜',    # 标签的文字
    bg='yellow',     # 标签背景颜色
    font=('Arial', 14),     # 字体和字体大小
    width=35, height=6  # 标签长宽（以字符长度计算）
    )
l.pack()    # 固定窗口位置
b1 = tk.Button(window, text='运行游戏', width=15,font=(18), 
              height=3, command=helloCallBack)
b1.pack()
b2 = tk.Button(window, text='打开存档 CD Projekt Red 文件夹里', width=38,
              height=2, command=helloCallBack1)
b2.pack()
window.mainloop()

 
