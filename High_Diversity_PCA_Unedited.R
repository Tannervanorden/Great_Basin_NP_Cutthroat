# Load the tidyverse package
library(tidyverse)
library(plotly)

# Load the covariance matrix. Don't forget to change the file path if you have downloaded the data to your own computer.
cov <- as.matrix(read.table("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/High_Diversity_Multiple_Sources.covMat"), header = F)

# We will also add a column with population assignments
Hendrys = rep("Hendry's Creek", 43)
Mill = rep("Mill Creek", 18)
PineR = rep('Pine & Ridge Creeks', 29)
Silver = rep('Silver Creek', 32)
Silver_Creek = rep('Silver Creek', 5)
Strawberry = rep('Strawberry Creek', 29)
South = rep('South Fork Baker Creek', 1)
South_Baker = rep('South Fork Baker Creek', 26)
BigWash =  rep('Big Wash Creek', 27)

Population <- c(Hendrys, Mill, PineR, Silver, "Wrong Fish", Silver_Creek, Strawberry, South, South_Baker, BigWash)

# Perform PCA
mme.pca <- eigen(cov)

# Extract eigenvectors and combine with population assignments
eigenvectors = mme.pca$vectors
pca.vectors = as_tibble(cbind(Population, data.frame(eigenvectors)))
pca.vectors <- pca.vectors %>% slice(-123)

# Calculate the explained variance by each PC
pca.eigenval.sum = sum(mme.pca$values) # sum of eigenvalues
varPC1 <- (mme.pca$values[1]/pca.eigenval.sum)*100 # Variance explained by PC1
varPC2 <- (mme.pca$values[2]/pca.eigenval.sum)*100 # Variance explained by PC2
varPC3 <- (mme.pca$values[3]/pca.eigenval.sum)*100 # Variance explained by PC3
varPC4 <- (mme.pca$values[4]/pca.eigenval.sum)*100 # Variance explained by PC4

# Calculate the explained variance for 2D and 3D plots
explained_variance_2d = paste0("Explained Variance (2 PCs): ", round(varPC1 + varPC2, 2), "%")
explained_variance_3d = paste0("Explained Variance (3 PCs): ", round(varPC1 + varPC2 + varPC3, 2), "%")

# Create PCA plots with variance explained
pca = ggplot(data = pca.vectors, aes(x = X1, y = X2, colour = Population)) + 
  geom_point() + 
  scale_color_manual(values =c("darkgrey", "goldenrod1", 'green', 'darkblue', 'deeppink3', 'cadetblue4', 'coral', "black", "plum1")) +
  labs(x = paste("PC1 (", round(varPC1, 2), "%)"), y = paste("PC2 (", round(varPC2, 2), "%)")) + theme_linedraw() + theme(plot.title = element_text(hjust = 0.5)) + theme(legend.text=element_text(size=12)) + theme(plot.title=element_text(size=16))  

ggsave("/Users/tannervanorden/Desktop/Multi_Descent.png", 
       plot = pca, width = 8, height = 5)

pca_3d_1_2_3 = plot_ly(pca.vectors, x = ~X1, y = ~X2, z = ~X3, color = pca.vectors$pop, colors = c("lightgrey", "lightblue", '#E69F00', 'red', 'green', 'purple', 'pink')) %>%
  layout(
    title = list(
      text = explained_variance_3d,
      y = 0.95
    ))

# Create a 2D Plotly scatter plot
pca_2d_plotly = plot_ly(pca.vectors, x = ~X1, y = ~X2, color = ~pop, colors = c("lightgrey", "lightblue", '#E69F00', 'red', 'green', 'purple', 'pink')) %>%
  add_markers() %>%
  layout(
    title = list(
      text = explained_variance_2d,
      y = 0.95
    ),
    xaxis = list(title = "PC1"),
    yaxis = list(title = "PC2")
  )

# Calculate the explained variance for each PC
explained_variance <- (mme.pca$values / pca.eigenval.sum) * 100

# Create a data frame for the scree plot
scree_data <- data.frame(
  PC = 1:length(explained_variance),
  Explained_Variance = explained_variance
)

# Assuming you have a data frame named 'scree_data' with columns 'PC' and 'Explained_Variance'
plotly_scree_plot <- plot_ly(scree_data, x = ~PC, y = ~Explained_Variance, type = 'bar', marker = list(color = 'blue')) %>%
  layout(
    xaxis = list(title = "Principal Component (PC)"),
    yaxis = list(title = "Explained Variance (%)"),
    title = "Scree Plot"
  )

# Show the plot
plotly_scree_plot














# Load the required libraries
library(ggtree)
library(treeio)
library(ape)

# Define the population assignments
Hendrys = rep("Hendry's Creek", 43)
Mill = rep("Mill Creek", 18)
PineR = rep('Pine & Ridge', 29)
Silver = rep('Silver Creek', 38)
Silver_Creek = rep('Silver Creek', 17)
Strawberry = rep('Strawberry Creek', 29)
South_Baker = rep('South Fork Baker Creek', 27)
BigWash = rep('Big Wash Creek', 27)

# Combine all population assignments into a single vector
pop <- c(Hendrys, Mill, PineR, Silver, Silver_Creek, Strawberry, South_Baker, BigWash)

# Create an empty square matrix with dimensions matching the length of the population vector
m <- matrix(0, nrow = length(pop), ncol = length(pop))

# Define the file path for the matrix
matrix_file <- "/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/High_Diversity_Multiple_Sources.ibsMat"

# Read the matrix and populate the empty matrix with your data
m[lower.tri(m)] <- as.matrix(read.table(matrix_file))

# Set the row and column names
rownames(m) <- pop
colnames(m) <- pop

# Create the neighbor-joining tree
nj_tree <- nj(m)

# Plot the unrooted tree with tips on the right using ggtree with smaller labels
p <- ggtree(nj_tree, layout = "rectangular") +
  geom_tiplab(align = TRUE, linesize = 0.5, hjust = 0, size = 1)  # Adjust the size parameter

# Plot the tree
p

# Load the required libraries
library(gplots)
library(viridis)

# Define the file path for the matrix (Use the same matrix from the first script)
matrix_file <- "/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/High_Diversity_Multiple_Sources.ibsMat"

# Read the matrix
m <- as.matrix(read.table(matrix_file))

# Define the population assignments (Use the same populations from the first script)
Hendrys = rep("Hendry's Creek", 43)
Mill = rep("Mill Creek", 18)
PineR = rep('Pine & Ridge', 29)
Silver = rep('Silver Creek', 38)
Strawberry = rep('Strawberry Creek', 29)
South_Baker = rep('South Fork Baker Creek', 27)
BigWash = rep('Big Wash Creek', 27)

# Combine all population assignments into a single vector
pop <- c(Hendrys, Mill, PineR, Silver, Strawberry, South_Baker, BigWash)

# Assign row and column names to the matrix
dim(m) <- c(length(pop), length(pop))
rownames(m) <- pop
colnames(m) <- pop

# Use the "viridis" color palette for the heatmap
heatmap.2(m, trace = "none", col = viridis(20),
          key = TRUE, keysize = 1, density.info = "none",
          main = "Multi Source Populations", cexRow = 0.55, cexCol = 0.55,
          revC = FALSE, colRow = NA, colCol = NA,
          margins = c(9, 9))
