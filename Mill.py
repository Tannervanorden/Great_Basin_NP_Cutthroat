import pandas as pd
from matplotlib import pyplot as plt
import matplotlib.colors as mcolors

#data = pd.read_csv('/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/Mill_All.csv')
data = pd.read_csv('/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/Mill_All.csv')
data.rename(columns={'Unnamed: 0': 'snp_location'}, inplace=True)
print(data)

x = data['snp_location']
x = x[0:250]
Mill = data['Mill_pi']
Mill = Mill[0:250]
Mill_2003 = data['Mill_2003_pi']
Mill_2003 = Mill_2003[0:250]
Mill_2009 = data['Mill_2009_pi']
Mill_2009 = Mill_2009[0:250]




fig, ax = plt.subplots(figsize=(8, 5))
plt.style.use(["fivethirtyeight"])
plt.plot(x, Mill_2009, label="2009", color='cornflowerblue')
plt.plot(x, Mill, label="2022", color='coral')

plt.title("Mill Creek", fontfamily='Helvetica', fontsize=16)
plt.xlabel("Position (Mb)")
plt.ylabel("Nucleotide Diversity (π)")
plt.subplots_adjust(bottom=0.2)
plt.legend()
plt.legend(loc='upper left', bbox_to_anchor=(.265, -0.13), fancybox=True, shadow=True, ncol=2)
ax.grid(False)

# Save the plot as a PDF
plt.savefig('/Users/tannervanorden/Desktop/Mill Over Time.pdf', format='pdf', facecolor=fig.get_facecolor())

# Display the plot
plt.show()
