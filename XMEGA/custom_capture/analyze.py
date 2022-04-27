#!python3
import string
import numpy as np
from math import ceil
import argparse

from pkg_resources import require

parser = argparse.ArgumentParser()
parser.add_argument('file', metavar='file', type=argparse.FileType('r'), help="Path to *.csv capture file")
parser.add_argument("-a", "--auto-bounding", help="Enables autobounding, will increase runtime", default=True)
parser.add_argument("-l", "--lower-bound", help="Lower Bound for AES operation")
parser.add_argument("-u", "--upper-bound", help="Upper Bound for AES operation")
parser.add_argument("-d", "--downsample-factor", 
     help="Downscaling factor, higher value will result in quicker processing, but less accurate results", default=3)


args = parser.parse_args()

capture = args.file

lower_bound = None 
upper_bound = None

if(args.auto_bounding):
     i = -1 

     for x in capture:
          i+=1
          if i < 10:
               continue

          if abs(float(x.split(',')[1])) > 2:
               if lower_bound == None:
                    lower_bound = i
               upper_bound = i
else:
     lower_bound = args.lower_bound
     upper_bound = args.upper_bound

dsample_factor = args.downsample_factor

trig_array = np.empty(ceil((upper_bound - lower_bound)/dsample_factor) + 2)
power_trace = np.empty(ceil((upper_bound - lower_bound)/dsample_factor) + 2)
peaks = 0

capture.seek(0)
i = -1
c_trace=0
in_peak = False
for x in capture:
    i+=1
    if i < lower_bound: 
        continue
    if i > upper_bound:
        break
    if i % dsample_factor == 0: #downsampling
            if abs(float(x.split(',')[1])) > 2:
                 if not in_peak:
                      in_peak = True
                      peaks+=1

                 trig_array[c_trace] = 5
            else:
                 in_peak = False
                 trig_array[c_trace] = 0
            c_trace+=1
            power_trace[c_trace] = x.split(',')[2]


import matplotlib.pyplot as plt
import numpy as np

plt.figure(figsize=(40, 10), dpi=120)
plt.plot(power_trace, color='b')
plt.plot(trig_array, color='r')

plt.savefig('trigger.png')
plt.show()


