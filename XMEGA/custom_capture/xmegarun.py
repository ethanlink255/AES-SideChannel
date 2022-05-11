import chipwhisperer as cw

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

pairs = []

ktp = cw.ktp.Basic()
key, msg = ktp.next()

target.set_key(key)
scope.arm()
print(":(")
for i in range(50):
    target.simpleserial_write('p', msg)
    resp = target.simpleserial_read('r', 16)

    pairs.append([msg, resp, key])

    key, msg = ktp.next()

import pickle

pickle.dump(pairs, open('pairs', 'ab'))


