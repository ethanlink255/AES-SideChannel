import chipwhisperer as cw

scope = cw.scope()
#scope.upgrade_firmware()
target = cw.target(scope, cw.targets.SimpleSerial)
#programmer.auto_program()

print(target)
print(scope.fw_version)

cw.program_target(scope, cw.programmers.XMEGAProgrammer, "/home/ethan/Documents/Git/chipwhisperer/hardware/victims/firmware/simpleserial-aes/simpleserial-aes-CW303.hex")


import time
time.sleep(0.05)
scope.default_setup()


scope.io.pdic = 'low'
time.sleep(0.1)
scope.io.pdic = 'high_z' #XMEGA doesn't like pdic driven high
time.sleep(0.1) #xmega needs more startup time

msg = bytearray([0]*16)
key = bytearray([1]*16)


target.set_key(key)
scope.arm()
print(":(")
target.simpleserial_write('p', msg)

#scope.capture()
#print(scope.get_last_trace())
print(target.simpleserial_read('r', 16))