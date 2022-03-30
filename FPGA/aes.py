import chipwhisperer as cw

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
