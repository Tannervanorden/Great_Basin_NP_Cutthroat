# Load the required libraries
library(tidyverse)
library(plotly)

# Load the covariance matrix. Don't forget to change the file path if you have downloaded the data to your own computer.
cov <- as.matrix(read.table("/Users/tannervanorden/Dropbox/Cutthroat_Research/PCA_Graphs/Original_updated_errorProof.covMat"), header = F)

# We will also add a column with population assignments
Hendrys <- rep("Hendry's Creek", 42)
PineR <- rep('Pine & Ridge Creeks', 29)
Mill <- rep("Mill Creek", 18)
Trout = rep("Trout Creek", 4)
Mountain_Dell = rep("Mountain Dell", 2)
Birch = rep("Birch Creek", 3)
Willard = rep("Willard Creek", 30)

Population <- c(Hendrys, PineR, Mill, Trout, Mountain_Dell, Birch, Willard)

# Perform PCA
mme.pca <- eigen(cov)

# Extract eigenvectors and combine with population assignments
eigenvectors = mme.pca$vectors
pca.vectors = as_tibble(cbind(Population, data.frame(eigenvectors)))


# Calculate the explained variance by each PC
pca.eigenval.sum = sum(mme.pca$values) # sum of eigenvalues
varPC1 <- (mme.pca$values[1]/pca.eigenval.sum)*100 # Variance explained by PC1
varPC2 <- (mme.pca$values[2]/pca.eigenval.sum)*100 # Variance explained by PC2
varPC3 <- (mme.pca$values[3]/pca.eigenval.sum)*100 # Variance explained by PC3
varPC4 <- (mme.pca$values[4]/pca.eigenval.sum)*100 # Variance explained by PC4

# Calculate the explained variance for 2D and 3D plots
explained_variance_2d = paste0("Explained Variance (2 PCs): ", round(varPC1 + varPC2, 2), "%")
explained_variance_3d = paste0("Explained Variance (3 PCs): ", round(varPC1 + varPC2 + varPC3, 2), "%")

# Create a PCA plot with variance explained
pca = ggplot(data = pca.vectors, aes(x = X1, y = X2, colour = Population)) +
  geom_point() +
  scale_color_manual(values = c("darkorange", "goldenrod1", 'green', 'purple', 'darkblue', 'black', 'cyan')) +
  labs(x = paste("PC1 (", round(varPC1, 2), "%)"), y = paste("PC2 (", round(varPC2, 2), "%)")) +
  theme_linedraw() + theme(plot.title = element_text(hjust = 0.5)) + theme(legend.text=element_text(size=11)) + theme(plot.title=element_text(size=11))
