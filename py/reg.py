# -*- coding: GBK -*-

import winreg


def read_reg():
    location = r"Software\\Sicent\\wx2008"
    # ��ȡע����λ�õ����м�ֵ
    key = winreg.OpenKey(winreg.HKEY_CURRENT_USER, location)
    print("\n" + "-"*100 + "\n" + location + "\n" + "-"*100 + "\n")
    i = 0
    while True:
        try:
            # ��ȡע����Ӧλ�õļ���ֵ
            print(winreg.EnumValue(key, i))
            i += 1
        except OSError as error:
            # һ��Ҫ�ر������
            winreg.CloseKey(key)
            break


if __name__ == '__main__':
    read_reg()
    
