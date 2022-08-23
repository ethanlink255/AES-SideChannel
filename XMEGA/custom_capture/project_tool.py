#!/bin/python3
from tokenize import String
import chipwhisperer as cw
import string
import numpy as np
from math import ceil
import pickle
import argparse
import os

from pkg_resources import require

class cap:
    key = []
    ptext = []
    ctext = []
    
    def __init__(self, key, ptext, ctext):
        self.key = key
        self.ptext = ptext
        self.ctext = ctext
os.system('rm -r em_data')

parser = argparse.ArgumentParser()
parser.add_argument('directory', type=str, help="Directory containing *.csv capture files")
parser.add_argument("-a", "--auto-bounding", help="Enables autobounding, will increase runtime", default=True)
parser.add_argument("-l", "--lower-bound", help="Lower Bound for AES operation")
parser.add_argument("-u", "--upper-bound", help="Upper Bound for AES operation")
parser.add_argument("-d", "--downsample-factor", 
     help="Downscaling factor, higher value will result in quicker processing, but less accurate results", type=int, default=3)


args = parser.parse_args()


proj = cw.create_project("em", overwrite=True)

cparr = pickle.load(open("save.p", "rb"))
print(args.directory)

cwave = 0
for ccap in sorted(os.listdir(args.directory)):
    fn = open(args.directory + ccap, 'r')

    lower_bound = None 
    upper_bound = None

    if(args.auto_bounding):
        i = -1 

        for x in fn:
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
    upper_bound = lower_bound + 5500
    #trig_array = np.empty(ceil((upper_bound - lower_bound)/dsample_factor) + 2)
    power_trace = np.empty(ceil((upper_bound - lower_bound)/dsample_factor) + 2)


    fn.seek(0)
    i = -1
    c_trace=0
    in_peak = False
    for x in fn:
        i+=1
        if i < lower_bound: 
            continue
        if i > upper_bound:
            break
        if i % dsample_factor == 0: #downsampling
                #if abs(float(x.split(',')[1])) > 2:
                #    if not in_peak:
                #        in_peak = True
                        #peaks+=1

                    #trig_array[c_trace] = 5
                #else:
                #    in_peak = False
                    #trig_array[c_trace] = 0
                c_trace+=1
                power_trace[c_trace] = x.split(',')[2]

    print(cparr.key[cwave])
    proj.traces.append(cw.Trace(power_trace, cparr.ptext[cwave], cparr.ctext[cwave], cparr.key[cwave]))
    cwave += 1
    

proj.save()

import matplotlib.pyplot as plt


plt.figure(figsize=(40, 10), dpi=120)
plt.plot(power_trace, color='b')

plt.savefig('trigger.png')
plt.show()

import chipwhisperer.analyzer as cwa
leak_model = cwa.leakage_models.sbox_output
print("Attack Starting")
attack = cwa.cpa(proj, leak_model)

results = attack.run()

res = results.best_guesses()
print(res)

for r in results.key_guess():
   print(hex(r), end=',')

print()






