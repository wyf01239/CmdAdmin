# coding: utf-8
# get_timestamp
# 获取 Unix 时间戳
# by wyf9, last update 2023-7-13
# Python ??+

from datetime import datetime
from sys import exit as wexit
from sys import argv

def gts():
    timenow = datetime.now()
    stamp = timenow.timestamp()
    with open("data/temp/time.txt", "w+") as file:
        file.write(str(stamp))
        file.close()
def wgts():
    timenow = datetime.now()
    stamp = timenow.timestamp()
    #if argv[1] == 
    with open("data/temp/time.txt", "w+") as file:
        file.write(str(stamp))
        file.close()

try:
    try:
        if argv[0] == 1:
            wgts()
        else:
            gts()
    except:
        gts()
finally:
    wexit(0)
