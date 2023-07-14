# coding: utf-8
# calc
# by wyf9, 2023.7.13
# Last update 2023-7-13
# Python 3.10+ or ??
# 提供浮点计算功能.
# 支持的计算: 加-1，减-2，乘-3，除-4，除余-5

from sys import argv
from sys import exit as wexit

try:
    match int(argv[1]):
        case 1:
            ret = float(argv[2]) + float(argv[3])
        case 2:
            ret = float(argv[2]) - float(argv[3])
        case 3:
            ret = float(argv[2]) * float(argv[3])
        case 4:
            ret = float(argv[2]) / float(argv[3])
        case 5:
            ret = float(argv[2]) % float(argv[3])
        case _:
            ret = -1
except:
    try:
        if int(argv[1]) == 1:
            ret = float(argv[2]) + float(argv[3])
        elif float(argv[1]) == 2:
            ret = float(argv[2]) - float(argv[3])
        elif float(argv[1]) == 3:
            ret = float(argv[2]) * float(argv[3])
        elif float(argv[1]) == 4:
            ret = float(argv[2]) / float(argv[3])
        elif float(argv[1]) == 5:
            ret = float(argv[2]) % float(argv[3])
        else:
            ret = -1
    except:
        ret = -2

try:
    with open("data/temp/calced.txt", "w+") as file:
        file.write(str(ret))
        file.close()
finally:
    wexit(0)