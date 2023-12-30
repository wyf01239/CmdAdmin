# coding: utf-8
# 阿巴阿巴

from os import system
from os.path import join
from sys import argv
from sys import exit as wexit


argv1 = argv[0]
argv1.replace("\\", "/")
argv1.replace("sources\\py\\proc.py", "")
loggingp = join(argv1, "sources\\std\\log\\info.bat")
print(argv1)
print(loggingp)

# print(str(argv))
#system(" Proc Argv: '" + str(argv) + "'")