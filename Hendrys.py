import pandas as pd
from matplotlib import pyplot as plt
import matplotlib.colors as mcolors

# Read data
data = pd.read_csv('/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide__Graphs/Historical_Hendrys.csv')
data.rename(columns={'Unnamed: 0': 'snp_location'}, inplace=True)

# Select data range
x = data['snp_location'][0:250]
Hendrys = data['Hendrys_pi'][0:250]
Historical_Hendrys = data['Historical_Hendrys_pi'][0:250]

# Create plot
fig, ax = plt.subplots(figsize=(8, 5))
plt.style.use(["fivethirtyeight"])
plt.plot(x, Historical_Hendrys, label="2009", color='cornflowerblue')
plt.plot(x, Hendrys, label="2019/2021", color='coral')

# Set plot details
plt.title("Hendry's Creek", fontfamily='Helvetica', fontsize=16)
plt.xlabel("Position (Mb)")
plt.ylabel("Nucleotide Diversity (π)")
plt.subplots_adjust(bottom=0.2)

# Adjusted legend position
plt.legend(loc='upper center', bbox_to_anchor=(0.5, -0.15), fancybox=True, shadow=True, ncol=2)
ax.grid(False)

plt.savefig('/Users/tannervanorden/Desktop/Hendrys Over Time.pdf', format='pdf', facecolor=fig.get_facecolor())

# Display the plot
plt.show()
