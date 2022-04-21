import chipwhisperer as cw
scope = cw.scope()
scope.gain.db = 25
scope.adc.samples = 129
scope.adc.offset = 0
scope.adc.basic_mode = "rising_edge"
scope.clock.adc_src = "extclk_x4"
scope.io.hs2 = "disabled"

#target = cw.target(scope, cw.targets.CW305, fpga_id='35t', force=False)
target = cw.target(scope, cw.targets.CW305, bsfile="/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/vivado_examples/aes128_verilog/aes128_verilog.runs/impl_100t/cw305_top.bit", force=True)


target.vccint_set(1.0)
# we only need PLL1:
target.pll.pll_enable_set(True)
"""
target.pll.pll_outenable_set(False, 0)
target.pll.pll_outenable_set(True, 1)
target.pll.pll_outenable_set(False, 2)
"""
target.pll.pll_outsource_set("PLL0", 0)

# run at 5 MHz:
target.pll.pll_outfreq_set(10E6/2, 1)

# 1ms is plenty of idling time
target.clkusbautooff = True
target.clksleeptime = 1

scope.clock.reset_adc()
import time
time.sleep(0.5)
assert (scope.clock.adc_locked), "ADC failed to lock"

proj = cw.create_project("desired_path.cwp", overwrite=True)


N_traces = 100 # change as required
ktp = cw.ktp.Basic()
key, text = ktp.next()
for i in range(N_traces):
    _, text = ktp.next()
    trace = cw.capture_trace(scope, target, text, key)
    if trace is None:
        continue
    proj.traces.append(trace)

proj.save()

print(key)
