import pandas as pd
import matplotlib.pyplot as plt

# Load your data
data = pd.read_csv('/Users/tannervanorden/Dropbox/Cutthroat_Research/Cutthroat_Cutt/Final_Chromo10_Corrected.csv')
data.rename(columns={'Unnamed: 0': 'snp_location'}, inplace=True)

x = data['snp_location'][0:250]

# Define the datasets and their respective labels
datasets = [
    ("Mill Creek", data['Mill_pi'][0:250]),
    ("Strawberry Creek", data['Strawberry_pi'][0:250]),
    ("Silver Creek", data['Silver_pi'][0:250]),
    ("Big Wash Creek", data['BigWash_pi'][0:250]),
    ("Deadman Creek", data['Deadman_pi'][0:250]),
    ("Smith Creek", data['Smith_pi'][0:250]),
    ("Lehman Creek", data['Lehman_pi'][0:250]),
    ("Willard Creek", data['Willards_pi'][0:250]),
    ("Pine & Ridge", data['Pine_Ridge_pi'][0:250]),
    ("Hendry's Creek", data['Hendrys_pi'][0:250]),
    ("South Fork Big Wash Creek", data['South_Bigwash_pi'][0:250]),
    ("William's Creek", data['Williams_pi'][0:250]),
    ("Shingle Creek", data['Shingle_pi'][0:250]),
    ("Snake Creek", data['Snake_pi'][0:250]),
    ("South Fork Baker Creek", data['Baker_pi'][0:250])
]

# Increase the size of the plot by adjusting figsize
fig, ax = plt.subplots(figsize=(12, 8))
plt.style.use("fivethirtyeight")

# Define a list of normal matplotlib colors
colors = [
    'steelblue', 'blue', 'violet', 'black', 'aquamarine',
    'purple', 'darkorange', 'darkseagreen', 'peru', 'green',
    'red', 'pink', 'gold', 'navy', 'coral'
]





# Plot individual datasets with unique colors
for (label, dataset), color in zip(datasets, colors):
    plt.plot(x, dataset, label=label, linewidth='1.8', color=color)

# Customize the plot as needed
plt.title("Nucleotide Diversity", fontfamily='Helvetica', fontsize=16)
plt.xlabel("Position (Mb)")
plt.ylabel("Nucleotide Diversity (π)")

# Set legend properties to adjust spacing
legend = plt.legend(loc='upper left', bbox_to_anchor=(-.1, -.09), fancybox=True, shadow=True, ncol=8, fontsize='small', handlelength=1.0, handletextpad=0.2, columnspacing=0.5)
for item in legend.get_texts():
    item.set_fontsize('x-small')

ax.grid(True)

# Use tight_layout to adjust spacing
plt.tight_layout()

plt.show()




