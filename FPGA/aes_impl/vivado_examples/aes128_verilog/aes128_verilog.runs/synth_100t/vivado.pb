
w
Command: %s
53*	vivadotcl2F
2synth_design -top cw305_top -part xc7a100tftg256-22default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a100tftg256-22default:defaultZ21-403h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
42default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
439002default:defaultZ8-7075h px? 
?
%s*synth2?
?Starting RTL Elaboration : Time (s): cpu = 00:00:02 ; elapsed = 00:00:02 . Memory (MB): peak = 2583.969 ; gain = 0.000 ; free physical = 121 ; free virtual = 2202
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
	cw305_top2default:default2
 2default:default2l
V/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/cw305_top.v2default:default2
322default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2$
cw305_usb_reg_fe2default:default2
 2default:default2s
]/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/cw305_usb_reg_fe.v2default:default2
312default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter pADDR_WIDTH bound to: 21 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter pBYTECNT_SIZE bound to: 7 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
cw305_usb_reg_fe2default:default2
 2default:default2
12default:default2
12default:default2s
]/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/cw305_usb_reg_fe.v2default:default2
312default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
cw305_reg_aes2default:default2
 2default:default2p
Z/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/cw305_reg_aes.v2default:default2
332default:default8@Z8-6157h px? 
a
%s
*synth2I
5	Parameter pADDR_WIDTH bound to: 21 - type: integer 
2default:defaulth p
x
? 
b
%s
*synth2J
6	Parameter pBYTECNT_SIZE bound to: 7 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter pPT_WIDTH bound to: 128 - type: integer 
2default:defaulth p
x
? 
`
%s
*synth2H
4	Parameter pCT_WIDTH bound to: 128 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter pKEY_WIDTH bound to: 128 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2p
Z/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/cw305_reg_aes.v2default:default2
1702default:default8@Z8-155h px? 
?
synthesizing module '%s'%s4497*oasys2
	cdc_pulse2default:default2
 2default:default2l
V/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/cdc_pulse.v2default:default2
242default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	cdc_pulse2default:default2
 2default:default2
22default:default2
12default:default2l
V/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/cdc_pulse.v2default:default2
242default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
USR_ACCESSE22default:default2
 2default:default2F
0/mnt/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
1096442default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
USR_ACCESSE22default:default2
 2default:default2
32default:default2
12default:default2F
0/mnt/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
1096442default:default8@Z8-6155h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2

O_cipherin2default:default2!
cw305_reg_aes2default:default2p
Z/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/cw305_reg_aes.v2default:default2
742default:default8@Z8-3848h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
cw305_reg_aes2default:default2
 2default:default2
42default:default2
12default:default2p
Z/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/cw305_reg_aes.v2default:default2
332default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
clocks2default:default2
 2default:default2i
S/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/clocks.v2default:default2
322default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2 
BUFGMUX_CTRL2default:default2
 2default:default2F
0/mnt/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
12112default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
BUFGMUX_CTRL2default:default2
 2default:default2
52default:default2
12default:default2F
0/mnt/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
12112default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
ODDR2default:default2
 2default:default2F
0/mnt/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
747492default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ODDR2default:default2
 2default:default2
62default:default2
12default:default2F
0/mnt/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
747492default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
IBUFG2default:default2
 2default:default2F
0/mnt/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
556882default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IBUFG2default:default2
 2default:default2
72default:default2
12default:default2F
0/mnt/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
556882default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
BUFG2default:default2
 2default:default2F
0/mnt/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
10832default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFG2default:default2
 2default:default2
82default:default2
12default:default2F
0/mnt/Vivado/2021.2/scripts/rt/data/unisim_comp.v2default:default2
10832default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
clocks2default:default2
 2default:default2
92default:default2
12default:default2i
S/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/clocks.v2default:default2
322default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
aes_core2default:default2
 2default:default2~
h/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/cryptosrc/aes_googlevault/aes_core.v2default:default2
362default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
aes_ks2default:default2
 2default:default2|
f/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/cryptosrc/aes_googlevault/aes_ks.v2default:default2
362default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
aes_sbox2default:default2
 2default:default2~
h/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/cryptosrc/aes_googlevault/aes_sbox.v2default:default2
362default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
aes_sbox2default:default2
 2default:default2
102default:default2
12default:default2~
h/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/cryptosrc/aes_googlevault/aes_sbox.v2default:default2
362default:default8@Z8-6155h px? 
?
-case statement is not full and has no default155*oasys2|
f/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/cryptosrc/aes_googlevault/aes_ks.v2default:default2
1072default:default8@Z8-155h px? 
?
-case statement is not full and has no default155*oasys2|
f/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/cryptosrc/aes_googlevault/aes_ks.v2default:default2
1172default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
aes_ks2default:default2
 2default:default2
112default:default2
12default:default2|
f/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/cryptosrc/aes_googlevault/aes_ks.v2default:default2
362default:default8@Z8-6155h px? 
?
-case statement is not full and has no default155*oasys2~
h/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/cryptosrc/aes_googlevault/aes_core.v2default:default2
2722default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
aes_core2default:default2
 2default:default2
122default:default2
12default:default2~
h/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/cryptosrc/aes_googlevault/aes_core.v2default:default2
362default:default8@Z8-6155h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2+
crypt_clk_heartbeat_reg2default:default2l
V/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/cw305_top.v2default:default2
1222default:default8@Z8-6014h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	cw305_top2default:default2
 2default:default2
132default:default2
12default:default2l
V/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/cw305_top.v2default:default2
322default:default8@Z8-6155h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
	cw305_top2default:default2
led22default:default2
12default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
	cw305_top2default:default2
led32default:default2
12default:defaultZ8-3917h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[127]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[126]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[125]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[124]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[123]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[122]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[121]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[120]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[119]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[118]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[117]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[116]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[115]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[114]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[113]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[112]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[111]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[110]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[109]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[108]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[107]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[106]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[105]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[104]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[103]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[102]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[101]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2#
O_cipherin[100]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[99]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[98]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[97]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[96]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[95]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[94]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[93]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[92]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[91]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[90]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[89]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[88]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[87]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[86]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[85]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[84]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[83]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[82]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[81]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[80]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[79]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[78]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[77]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[76]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[75]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[74]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[73]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[72]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[71]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[70]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[69]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[68]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[67]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[66]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[65]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[64]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[63]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[62]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[61]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[60]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[59]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[58]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[57]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[56]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[55]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[54]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[53]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[52]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[51]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[50]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[49]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[48]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[47]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[46]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[45]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[44]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[43]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[42]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[41]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[40]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[39]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[38]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[37]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[36]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[35]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[34]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[33]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[32]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[31]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[30]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[29]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2"
O_cipherin[28]2default:default2!
cw305_reg_aes2default:defaultZ8-7129h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px? 
?
%s*synth2?
?Finished RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:05 . Memory (MB): peak = 2583.969 ; gain = 0.000 ; free physical = 178 ; free virtual = 1394
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 2583.969 ; gain = 0.000 ; free physical = 1034 ; free virtual = 2299
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:06 . Memory (MB): peak = 2583.969 ; gain = 0.000 ; free physical = 1034 ; free virtual = 2299
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.042default:default2
00:00:00.042default:default2
2583.9692default:default2
0.0002default:default2
8842default:default2
22402default:defaultZ17-722h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
32default:defaultZ29-17h px? 
?
?The IBUFG primitive '%s' has been retargeted to an IBUF primitive only. No BUFG will be added. If a global buffer is intended, please instantiate an available global clock primitive from the current architecture.437*netlist2$
U_clocks/clkibuf2default:defaultZ29-432h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2o
Y/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/cw305_main.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2o
Y/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/cw305_main.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2m
Y/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/common/cw305_main.xdc2default:default2/
.Xil/cw305_top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2647.8752default:default2
0.0002default:default2
7332default:default2
21952default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 2 instances were transformed.
  BUFGMUX_CTRL => BUFGCTRL (inverted pins: S0): 1 instance 
  IBUFG => IBUF: 1 instance 
2default:defaultZ1-111h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common24
 Constraint Validation Runtime : 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
2647.8752default:default2
0.0002default:default2
7322default:default2
21952default:defaultZ17-722h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Constraint Validation : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 800 ; free virtual = 2284
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a100tftg256-2
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 800 ; free virtual = 2284
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 800 ; free virtual = 2284
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:09 ; elapsed = 00:00:12 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 784 ; free virtual = 2276
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 2     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input    128 Bit         XORs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit         XORs := 90    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      8 Bit         XORs := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      8 Bit         XORs := 8     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      8 Bit         XORs := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1680  
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit         XORs := 180   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit         XORs := 220   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit         XORs := 60    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit         XORs := 20    
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              256 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	              128 Bit    Registers := 13    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               21 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 17    
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
j
%s
*synth2R
>	               1K Bit	(15 X 128 bit)          RAMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   9 Input  256 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input  256 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input  256 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input  128 Bit        Muxes := 18    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input  128 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 619   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
	cw305_top2default:default2
led22default:default2
12default:defaultZ8-3917h px? 
?
+design %s has port %s driven by constant %s3447*oasys2
	cw305_top2default:default2
led32default:default2
12default:defaultZ8-3917h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:20 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 513 ; free virtual = 2232
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:20 ; elapsed = 00:00:23 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 386 ; free virtual = 2116
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Timing Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:23 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 384 ; free virtual = 2115
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Technology Mapping : Time (s): cpu = 00:00:21 ; elapsed = 00:00:24 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 381 ; free virtual = 2113
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished IO Insertion : Time (s): cpu = 00:00:23 ; elapsed = 00:00:26 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 378 ; free virtual = 2113
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:23 ; elapsed = 00:00:26 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 378 ; free virtual = 2112
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:23 ; elapsed = 00:00:26 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 378 ; free virtual = 2112
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:23 ; elapsed = 00:00:26 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 378 ; free virtual = 2113
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:23 ; elapsed = 00:00:26 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 378 ; free virtual = 2113
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:23 ; elapsed = 00:00:26 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 378 ; free virtual = 2113
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
J
%s*synth22
+------+-------------+------+
2default:defaulth px? 
J
%s*synth22
|      |Cell         |Count |
2default:defaulth px? 
J
%s*synth22
+------+-------------+------+
2default:defaulth px? 
J
%s*synth22
|1     |BUFG         |     1|
2default:defaulth px? 
J
%s*synth22
|2     |BUFGMUX_CTRL |     1|
2default:defaulth px? 
J
%s*synth22
|3     |CARRY4       |     7|
2default:defaulth px? 
J
%s*synth22
|4     |LUT1         |   135|
2default:defaulth px? 
J
%s*synth22
|5     |LUT2         |    82|
2default:defaulth px? 
J
%s*synth22
|6     |LUT3         |   171|
2default:defaulth px? 
J
%s*synth22
|7     |LUT4         |   582|
2default:defaulth px? 
J
%s*synth22
|8     |LUT5         |   256|
2default:defaulth px? 
J
%s*synth22
|9     |LUT6         |  1919|
2default:defaulth px? 
J
%s*synth22
|10    |MUXF7        |    76|
2default:defaulth px? 
J
%s*synth22
|11    |MUXF8        |    28|
2default:defaulth px? 
J
%s*synth22
|12    |ODDR         |     1|
2default:defaulth px? 
J
%s*synth22
|13    |USR_ACCESSE2 |     1|
2default:defaulth px? 
J
%s*synth22
|14    |FDRE         |  1640|
2default:defaulth px? 
J
%s*synth22
|15    |FDSE         |     2|
2default:defaulth px? 
J
%s*synth22
|16    |IBUF         |    30|
2default:defaulth px? 
J
%s*synth22
|17    |IBUFG        |     1|
2default:defaulth px? 
J
%s*synth22
|18    |IOBUF        |     8|
2default:defaulth px? 
J
%s*synth22
|19    |OBUF         |     7|
2default:defaulth px? 
J
%s*synth22
+------+-------------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:23 ; elapsed = 00:00:26 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 378 ; free virtual = 2113
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 134 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Runtime : Time (s): cpu = 00:00:22 ; elapsed = 00:00:24 . Memory (MB): peak = 2647.875 ; gain = 0.000 ; free physical = 431 ; free virtual = 2167
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:24 ; elapsed = 00:00:26 . Memory (MB): peak = 2647.875 ; gain = 63.906 ; free physical = 431 ; free virtual = 2167
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.022default:default2
00:00:00.022default:default2
2647.8752default:default2
0.0002default:default2
4072default:default2
21612default:defaultZ17-722h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
1222default:defaultZ29-17h px? 
?
?The IBUFG primitive '%s' has been retargeted to an IBUF primitive only. No BUFG will be added. If a global buffer is intended, please instantiate an available global clock primitive from the current architecture.437*netlist2$
U_clocks/clkibuf2default:defaultZ29-432h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
2647.8752default:default2
0.0002default:default2
4212default:default2
21902default:defaultZ17-722h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 10 instances were transformed.
  BUFGMUX_CTRL => BUFGCTRL (inverted pins: S0): 1 instance 
  IBUFG => IBUF: 1 instance 
  IOBUF => IOBUF (IBUF, OBUFT): 8 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
a47485222default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
482default:default2
1092default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
synth_design: 2default:default2
00:00:292default:default2
00:00:292default:default2
2647.8752default:default2
64.0312default:default2
6212default:default2
23922default:defaultZ17-722h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2?
?/home/ethan/Documents/Git/CWHardwareHackingExporation/FPGA/aes_impl/vivado_examples/aes128_verilog/aes128_verilog.runs/synth_100t/cw305_top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2|
hExecuting : report_utilization -file cw305_top_utilization_synth.rpt -pb cw305_top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Apr 12 22:07:45 20222default:defaultZ17-206h px? 


End Record