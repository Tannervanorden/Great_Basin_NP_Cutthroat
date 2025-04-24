import pandas as pd
from matplotlib import pyplot as plt
import matplotlib.colors as mcolors


data = pd.read_csv("/Users/tannervanorden/Desktop/Great_Basin_Historic_CSV/ThirtyFour.csv")
data.rename(columns={'Unnamed: 0': 'snp_location'}, inplace=True)


x = data['snp_location']
x = x[0:250]

#Mill Creek
Mill = data['Mill_pi']
Mill = Mill[0:250]
Mill_2009 = data['Mill_2009_pi']
Mill_2009 = Mill_2009[0:250]

#Hendrys Creek
Hendrys = data['Hendrys_pi'][0:250]
Historical_Hendrys = data['Historical_Hendrys_pi'][0:250]

#Big_Wash Creek
Bigwash = data['BigWash_pi']
Bigwash = Bigwash[0:250]
Bigwash_2010 = data['Big_Wash_2010_pi']
Bigwash_2010 = Bigwash_2010[0:250]

#Deadman Creek
Deadman = data['Deadman_pi']
Deadman = Deadman[0:250]
Deadman_2009 = data['Historical_Deadman_pi']
Deadman_2009 = Deadman_2009[0:250]

#South Bigwash Creek
South_Bigwash = data['South_Bigwash_pi']
South_Bigwash = South_Bigwash[0:250]
South_Bigwash_2010 = data['South_Big_Wash_2010_pi']
South_Bigwash_2010 = South_Bigwash_2010[0:250]

#Strawberry Creek
Strawberry = data['Strawberry_pi']
Strawberry = Strawberry[0:250]
Strawberry_2009 = data['Historical_Strawberry_pi']
Strawberry_2009 = Strawberry_2009[0:250]

#Willard Creek
Willard = data['Willards_pi']
Willard = Willard[0:250]
Willard_2003 = data['Willard_Historic_pi']
Willard_2003 = Willard_2003[0:250]

#Snake Creek
Snake = data['Snake_pi']
Snake = Snake[0:250]
Snake_2010 = data['Historical_Snake_pi']
Snake_2010 = Snake_2010[0:250]

fig, axes = plt.subplots(nrows=2, ncols=4, figsize=(13.5, 7.5))

plt.style.use(["fivethirtyeight"])

#Plotting Mill
axes[0, 1].plot(x, Mill_2009,  color='cornflowerblue', linewidth=2)
axes[0, 1].plot(x, Mill,  color='coral', linewidth=2)
axes[0, 1].set_title("Mill Creek", fontfamily='Helvetica', fontsize=15)
axes[0, 1].set_ylim(0, 0.115)


#Plotting Hendrys
axes[0, 0].plot(x, Historical_Hendrys,  color='cornflowerblue', linewidth=2)
axes[0, 0].plot(x, Hendrys,  color='coral', linewidth=2)
axes[0, 0].set_title("Hendrys Creek", fontfamily='Helvetica', fontsize=15)
axes[0, 0].set_ylim(0, 0.115)


#Bigwash

axes[0, 2].plot(x, Bigwash_2010,  color='cornflowerblue', linewidth=2)
axes[0, 2].plot(x, Bigwash,  color='coral', linewidth=2)
axes[0, 2].set_title("Big Wash Creek", fontfamily='Helvetica', fontsize=15)
axes[0, 2].set_ylim(0, 0.115)


#Deadman Creek

axes[0, 3].plot(x, Deadman_2009,  color='cornflowerblue', linewidth=2)
axes[0, 3].plot(x, Deadman,  color='coral', linewidth=2)
axes[0, 3].set_title("Deadman Creek", fontfamily='Helvetica', fontsize=15)
axes[0, 3].set_ylim(0, 0.115)

#South Bigwash
axes[1, 0].plot(x, South_Bigwash_2010,   color='cornflowerblue', linewidth=2)
axes[1, 0].plot(x, South_Bigwash,  color='coral', linewidth=2)
axes[1, 0].set_title("South Fork Big Wash Creek", fontfamily='Helvetica', fontsize=15)
axes[1, 0].set_ylim(0, 0.115)


#Strawberry Creek
axes[1, 1].plot(x, Strawberry_2009,  color='cornflowerblue', linewidth=2)
axes[1, 1].plot(x, Strawberry,  color='coral', linewidth=2)
axes[1, 1].set_title("Strawberry Creek", fontfamily='Helvetica', fontsize=15)
axes[1, 1].set_ylim(0, 0.115)

#Willard Creek
axes[1, 2].plot(x, Willard_2003,  color='cornflowerblue', linewidth=2)
axes[1, 2].plot(x, Willard,  color='coral', linewidth=2)
axes[1, 2].set_title("Willard Creek", fontfamily='Helvetica', fontsize=15)
axes[1, 2].set_ylim(0, 0.115)

#Snake Creek
axes[1, 3].plot(x, Snake_2010, label="Historic Samples", color='cornflowerblue', linewidth=2)
axes[1, 3].plot(x, Snake, label="Contemporary Samples", color='coral', linewidth=2)
axes[1, 3].set_title("Snake Creek", fontfamily='Helvetica', fontsize=15)
axes[1, 3].set_ylim(0, 0.115)

fig.text(0.5, 0.045, 'Genomic Position (10kbp Window, 1kbp Step)', ha='center', va='center', fontsize=13)
fig.text(0.075, 0.5, 'Nucleotide Diversity (π)', ha='center', va='center', rotation='vertical', fontsize=13)
fig.legend(loc='upper center', bbox_to_anchor=(0.51, 1), ncol=2)

plt.show()
