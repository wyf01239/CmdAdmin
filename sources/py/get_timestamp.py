# coding: utf-8
# get_timestamp
# ��ȡ Unix ʱ���
# by wyf9, last update 2023-7-13
# Python ??+

from datetime import datetime
from sys import exit as wexit

try:

    timenow = datetime.now()
    stamp = timenow.timestamp()
    with open("data/temp/time.txt", "w+") as file:
        file.write(str(stamp))
        file.close()
finally:
    wexit(0)
