trace_array = []
capture = open('capture.csv')

lower_bound = 845000
upper_bound = lower_bound + 500000
peaks = 0

i = 0
in_peak = False
for x in capture:
    i+=1
    if i < lower_bound: 
        continue
    if i > upper_bound:
        break
    if i % 10 == 0: #downsampling
            if abs(float(x.split(',')[1])) > 0.5:
                 if not in_peak:
                      in_peak = True
                      peaks+=1

                 trace_array.append(1)
            else:
                 in_peak = False
                 trace_array.append(0)

import matplotlib.pyplot as plt
import numpy as np

plt.plot(trace_array, color='r')

plt.savefig('trigger.png')

print("Number of Peaks {0}".format(peaks))
