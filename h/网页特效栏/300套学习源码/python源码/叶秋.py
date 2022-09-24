import random
from time import sleep
import os


index = 0
color = 1
flag = True
while True:
    # print(f'\033[1;{color};1m{random.randrange(0,2)}',end='')
    # print(f'{random.randrange(0,2)}',end='')
    print(f'{random.randrange(0,3)*" "}叶秋是荣耀第一大神=',end='')
    if index%10 == 0:
        print()
        os.system(f'color {color}a')
        sleep(0.001)
    if flag:
        color += 1
    else:
        color -= 1

    if color >= 9 or color < 1:
        flag = not flag
    index += 1
