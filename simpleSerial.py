import chipwhisperer as cw

scope = cw.scope()
#scope.upgrade_firmware()
target = cw.target(scope, cw.targets.SimpleSerial)

print(target)
print(scope.fw_version)
scope.default_setup()

cw.program_target(scope, cw.programmers.STM32FProgrammer, "/home/ethan/Documents/Git/chipwhisperer/hardware/victims/firmware/simpleserial-base/simpleserial-base-CW308_STM32F3.hex")

scope.arm()
msg = bytearray([0]*16)

target.simpleserial_write('p', msg)
scope.capture()
print(scope.get_last_trace())
print(target.simpleserial_read('r', 16))