# -*- coding: GBK -*-

import winreg


def read_reg():
    location = r"Software\\Sicent\\wx2008"
    # 获取注册表该位置的所有键值
    key = winreg.OpenKey(winreg.HKEY_CURRENT_USER, location)
    print("\n" + "-"*100 + "\n" + location + "\n" + "-"*100 + "\n")
    i = 0
    while True:
        try:
            # 获取注册表对应位置的键和值
            print(winreg.EnumValue(key, i))
            i += 1
        except OSError as error:
            # 一定要关闭这个键
            winreg.CloseKey(key)
            break


if __name__ == '__main__':
    read_reg()
    
