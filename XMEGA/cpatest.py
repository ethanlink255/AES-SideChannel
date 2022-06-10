import matplotlib.pylab as plt
import chipwhisperer as cw
import numpy as np
import time


scope = cw.scope()
#scope.upgrade_firmware()
target = cw.target(scope, cw.targets.SimpleSerial)


import time
time.sleep(0.05)
scope.default_setup()


scope.io.pdic = 'low'
time.sleep(0.1)
scope.io.pdic = 'high_z' #XMEGA doesn't like pdic driven high
time.sleep(0.1) #xmega needs more startup time


print(scope.adc.basic_mode)
print(scope.adc.presamples)
print(scope.adc.samples)
print(scope.clock.adc_freq)
print(scope.adc.decimate)
print(scope.adc.offset)
print(scope.trigger.triggers)
#cw.program_target(scope, cw.programmers.XMEGAProgrammer, "/home/ethan/Documents/Git/chipwhisperer/hardware/victims/firmware/simpleserial-aes/simpleserial-aes-CW303.hex")

proj = cw.create_project("icaptest", overwrite=True)

ktp = cw.ktp.Basic()
trace_array = []
textin_array = []

key, text = ktp.next()

target.set_key(key)

N = 50
for i in range(0, 50):
    scope.arm()
    
    #target.simpleserial_write('p', text)
    
    trace = cw.capture_trace(scope, target, text, key)
    if not trace:
        print("Target timed out!")
        continue
    
    #response = target.simpleserial_read('r', 16)
    
    proj.traces.append(trace)
    textin_array.append(text)
    
    _, text = ktp.next()
    
#trace_array = np.array(trace_array)
#print(len(trace_array))
#print(len(trace_array[0]))


#plt.figure()
#plt.plot(trace_array[0], 'r')
##plt.plot(trace_array[1], 'g')
#plt.show()

print(key)

import chipwhisperer.analyzer as cwa
leak_model = cwa.leakage_models.sbox_output
print("Attack Starting")
attack = cwa.cpa(proj, leak_model)
results = attack.run()

res = results.key_guess()
for r in res:
    print(hex(r), end=',')