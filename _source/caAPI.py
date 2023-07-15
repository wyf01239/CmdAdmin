# coding: utf-8

# by wyf9, last update 2023-7-13
# Python 3.10+ / ?

from sys import argv
from datetime import datetime as dt
from sys import exit as wexit

def get_timestamp():
    '''
get_timestamp
获取 Unix 时间戳
'''
    

    try:
        timenow = dt.now()
        stamp = timenow.timestamp()
        with open("data/temp/time.txt", "w+") as file:
            file.write(str(stamp))
            file.close()
    finally:
        wexit(0)


def wcalc():
    '''
提供浮点计算功能.
支持的计算: 加-1, 减-2, 乘-3, 除-4, 除余-5
'''

    try:
        match int(argv[2]):
            case 1:
                ret = float(argv[3]) + float(argv[4])
            case 2:
                ret = float(argv[3]) - float(argv[4])
            case 3:
                ret = float(argv[3]) * float(argv[4])
            case 4:
                ret = float(argv[3]) / float(argv[4])
            case 5:
                ret = float(argv[3]) % float(argv[4])
            case _:
                ret = -1
    except:
        ret = -2

    try:
        with open("data/temp/calced.txt", "w+") as file:
            file.write(str(ret))
            file.close()
    finally:
        wexit(0)

try:
    match int(argv[1]):
        case 1:
            get_timestamp()
        case 2:
            wcalc()
except:
    wexit(-3)