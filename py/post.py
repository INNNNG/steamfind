# -*- coding: GBK -*-
import requests
import json
try:
    url = "http://127.0.0.1:5888/pc_show_invite"
    data = {"code":"IY6jLF"}
    res = requests.post(url=url,json=data)
    print(res.text)
except:
    sys.exit(0)
