import random
import os
from time import sleep

os.system("color 2")
index = 0
while True:
	print(random.randrange(0,3),end="")
	if index % 100 == 0:
		sleep(0.05)
		print()
	index += 1