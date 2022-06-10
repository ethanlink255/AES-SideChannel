import chipwhisperer as cw
import pickle


class cap:
    key = []
    ptext = []
    ctext = []
    
    def __init__(self, key, ptext, ctext):
        self.key = key
        self.ptext = ptext
        self.ctext = ctext

scope = cw.scope()
#scope.upgrade_firmware()
target = cw.target(scope, cw.targets.SimpleSerial)
#programmer.auto_program()

print(target)
print(scope.fw_version)

#cw.program_target(scope, cw.programmers.XMEGAProgrammer, "/home/erc528/chipwhisperer/hardware/victims/firmware/simpleserial-aes/simpleserial-aes-CW303.hex")


import time
time.sleep(0.05)
scope.default_setup()


scope.io.pdic = 'low'
time.sleep(0.1)
scope.io.pdic = 'high_z' #XMEGA doesn't like pdic driven high
time.sleep(0.1) #xmega needs more startup time

keyarr = []
ptext = []
ctext = []

ktp = cw.ktp.Basic()
key, msg = ktp.next()

scope.arm()
print(":(")
for i in range(200):
    keyarr.append(key)
    ptext.append(msg)

    target.set_key(key)
    target.simpleserial_write('p', msg)
    ctext.append(target.simpleserial_read('r', 16))
    _, msg = ktp.next()

import pickle


pickle.dump(cap(keyarr, ptext, ctext), open("save.p", "wb"))
print(key)
