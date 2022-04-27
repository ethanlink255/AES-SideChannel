import numpy as np
from math import ceil
import linecache
capture = open('NopsCap.csv')

i = -1 
lower_bound = 0
last_one = 0
for x in capture:
    i+=1
    if i < 10:
        continue

    if abs(float(x.split(',')[1])) > 2:
        if lower_bound == 0:
            lower_bound = i
            print("Lower Bound {0}".format(lower_bound))
        last_one = i

print("Upper Bound {0}".format(last_one))