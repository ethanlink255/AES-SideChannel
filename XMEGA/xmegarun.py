import chipwhisperer as cw

scope = cw.scope()
#scope.upgrade_firmware()
target = cw.target(scope, cw.targets.SimpleSerial)
#programmer.auto_program()

print(target)
print(scope.fw_version)

#cw.program_target(scope, cw.programmers.XMEGAProgrammer, "/home/ethan/Documents/Git/chipwhisperer/hardware/victims/firmware/simpleserial-aes/simpleserial-aes-CW303.hex")


import time
time.sleep(0.05)
scope.default_setup()


scope.io.pdic = 'low'
time.sleep(0.1)
scope.io.pdic = 'high_z' #XMEGA doesn't like pdic driven high
time.sleep(0.1) #xmega needs more startup time


ktp = cw.ktp.Basic()
key, msg = ktp.next()

target.set_key(key)
scope.arm()
print(":(")
for i in range(20):
    target.simpleserial_write('p', msg)

    print(target.simpleserial_read('r', 16))
    _, msg = ktp.next()
