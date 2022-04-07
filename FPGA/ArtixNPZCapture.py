import chipwhisperer as cw
from bokeh.plotting import figure, show
from bokeh.io import output_notebook
import time
import numpy as np
import time
from Crypto.Cipher import AES
import matplotlib.pylab as plt
from matplotlib.pyplot import MultipleLocator

scope = cw.scope()

scope.gain.db = 25
scope.adc.samples = 10000 #modifiable
scope.adc.offset = 0
scope.adc.basic_mode = "rising_edge"
scope.trigger.triggers = "tio4"
scope.io.tio1 = "serial_rx"
scope.io.tio2 = "serial_tx"
scope.io.hs2 = "disabled"
scope.clock.adc_src = "extclk_x4"

target = cw.target(scope, cw.targets.CW305, bsfile="/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/vivado_examples/aes128_verilog/aes128_verilog.runs/impl_100t/cw305_top.bit", force=True)
#target = cw.target(scope, cw.targets.CW305, fpga_id='100t', force=False) #this one is prebuilt

target.vccint_set(1.0)
target.pll.pll_enable_set(True)
target.pll.pll_outenable_set(False, 0)
target.pll.pll_outenable_set(True, 1)
target.pll.pll_outenable_set(False, 2)

target.pll.pll_outfreq_set(10E6, 1)

target.clkusbautooff = True
target.clksleeptime = 1

scope.clock.reset_adc()
assert (scope.clock.adc_locked), "ADC failed to lock"

ktp = cw.ktp.Basic()

traces = []
textin = []
#keys = []
N = 10000 

key, text = ktp.next()
cipher = AES.new(bytes(key), AES.MODE_ECB)

for i in range(N):
  
    _, text = ktp.next()
    textin.append(text)
    #keys.append(key)
    
    ret = cw.capture_trace(scope, target, text, key)
    if not ret:
        print("Failed capture")
        continue

    assert (list(ret.textout) == list(cipher.encrypt(bytes(text)))), "Incorrect encryption result!\nGot {}\nExp {}\n".format(ret.textout, list(text))
        
    traces.append(ret.wave)

x_locator = MultipleLocator(500)
ax = plt.gca()
ax.xaxis.set_major_locator(x_locator)

plt.plot(traces[1], color='r') 
plt.show()
plt.savefig("capturetraces.png")

import numpy as np
traces = np.float32(traces)

store_key = list(key)
store_key = np.array(store_key)
#print(store_key.shape)
#print(store_key)

import os
dataDir = './'
os.makedirs(dataDir, exist_ok=True)
outpath = os.path.join(dataDir, 'val_diff_key.npz')
np.savez(outpath, trace_mat=traces, textin_mat=textin, key=store_key)

