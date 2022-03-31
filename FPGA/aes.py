import chipwhisperer as cw
import time

scope = cw.scope()

scope.gain.db = 25
scope.adc.samples = 129
scope.adc.offset = 0
scope.adc.basic_mode = "rising_edge"
scope.clock.adc_src = "extclk_x4"
scope.io.hs2 = "disabled"


target = cw.target(scope, cw.targets.CW305,"/path/to/bitstream", force=True)
target.vccint_set(1.0)
target.pll.pll_enable_set(True)
target.pll.pll_outsource_set("PLL0", 0)
target.pll.pll_outfreq_set(0, 10E6)

scope.clock.reset_adc()
assert (scope.clock.adc_locked), "ADC failed to lock"

proj = cw.project("desired_path.cwp", overwrite=True)

n_traces = 5000
ktp = cw.ktp.Basic()
key, text = ktp.next()
target.fpga_write(target.REG_CRYPT_KEY, key)

for i in range(n_traces):
    scope.arm()

    target.fpga_write(target.REG_CRYPT_TEXTIN, text)

    key, text = ktp.next()

    target.fpga_write(target.REG_USER_LED, [0x01])
    target.usb_trigger.toggle()

    ret = scope.capture()

    if ret:
        print("ERROR: Capture timedout")
        continue
    
    output = target.fpga_read(target.REG_CRYPT_CIPHEROUT, 16)
    wave = cw.get_last_trace()
    trace = cw.Trace(wave, text, output, key)

    proj.traces.append(trace)

proj.save()


