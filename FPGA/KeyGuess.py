import chipwhisperer as cw
import chipwhisperer.analyzer as cwa

proj = cw.open_project("desired_path.cwp")

leak_model = cwa.leakage_models.last_round_state_diff
print("Attack Starting")
attack = cwa.cpa(proj, leak_model)
results = attack.run()

res = results.key_guess()
for x in res:
    print(hex(x))
#print(key)

plot_data = cwa.analyzer_plots(results)

import holoviews as hv
from holoviews.operation.datashader import datashade, shade, dynspread, rasterize
from holoviews.operation import decimate
import pandas as pd, numpy as np
def byte_to_color(idx):
    return hv.Palette.colormaps['Category20'](idx/16.0)

a = []
b = []
hv.extension('bokeh')
for key_byte in range(0, 16):
    data = plot_data.output_vs_time(i)
    a.append(np.array(data[1]))
    b.append(np.array(data[2]))
    b.append(np.array(data[3]))

pda = pd.DataFrame(a).transpose().rename(str, axis='columns')
pdb = pd.DataFrame(b).transpose().rename(str, axis='columns')
curve = hv.Curve(pdb['0'], "Sample").options(color='black')

for key_byte in range(1, 16):
    curve *= hv.Curve(pdb[str(i)]).options(color='black')
for key_byte in range(0, 16):
    curve *= hv.Curve(pda[str(i)]).options(color=byte_to_color(i))

decimate(curve.opts(width=900, height=600))

plot_data.show()