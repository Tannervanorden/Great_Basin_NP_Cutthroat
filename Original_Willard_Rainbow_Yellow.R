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
  scale_color_manual(values = c("darkorange", "goldenrod1", 'green', 'purple', 'pink', 'black', 'cyan')) +
  labs(x = paste("PC1 (", round(varPC1, 2), "%)"), y = paste("PC2 (", round(varPC2, 2), "%)"), title = ("Genetic Distance")) +
  theme_linedraw() + theme(plot.title = element_text(hjust = 0.5)) + theme(legend.text=element_text(size=11)) + theme(plot.title=element_text(size=11))

# Save the plot to a file
ggsave("/Users/tannervanorden/Desktop/Great_Basin_Report/PCA Plots/Original.png",
       plot = pca, width = 8, height = 5)




# Load the tidyverse package
library(tidyverse)
library(plotly)

# Load the covariance matrix. Don't forget to change the file path if you have downloaded the data to your own computer.
cov <- as.matrix(read.table("/Users/tannervanorden/Dropbox/Cutthroat_Research/PCA_Graphs/Rainbow_Yellow_R_PCA.covMat"), header = F)


Population <- c(rep("Hendry's Creek", 42), rep('Pine & Ridge Creeks', 29), rep("Mill Creek", 18), rep("Trout Creek", 4), rep("Mountain Dell", 2), rep("Birch Creek", 3), rep("Willard Creek", 30), rep('Shingle Creek', 9), rep("William's Creek", 6), rep("Yellow Creek", 1), rep("Raymond Creek", 1), rep("Yellow Creek", 1), rep("Glade Creek", 1), rep("Midway Rainbow Trout", 1))

mme.pca <- eigen(cov) # Perform the PCA using the eigen function.

eigenvectors = mme.pca$vectors # Extract eigenvectors
pca.vectors = as_tibble(cbind(Population, data.frame(eigenvectors))) # Combine with our population assignment

pca = ggplot(data = pca.vectors, aes(x = X1, y = X2, colour = Population)) + 
  geom_point() + 
  scale_color_manual(values = c("darkorange", "blue", 'goldenrod1', 'red', 'chartreuse1', 'purple', 'darkblue', "cornflowerblue", 'bisque2', "black", "cyan", "brown", "lightgrey",  "olivedrab3")) +
  labs(x = paste("PC1 (", round(varPC1, 2), "%)"), y = paste("PC2 (", round(varPC2, 2), "%)")) + theme_linedraw()


# Save the PCA plot as an image
ggsave("/Users/tannervanorden/Desktop/Original_YellowRainbow.png",
       plot = pca, width = 8, height = 5)

# Calculate the explained variance for each PC
explained_variance <- (mme.pca$values / pca.eigenval.sum) * 100

# Create a data frame for the scree plot
scree_data <- data.frame(
  PC = 1:length(explained_variance),
  Explained_Variance = explained_variance
)

# Create the scree plot using ggplot2
scree_plot <- ggplot(scree_data, aes(x = PC, y = explained_variance)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(
    x = "Principal Component (PC)",
    y = "Explained Variance (%)",
    title = "Scree Plot"
  )


# Save the scree plot as an image
ggsave("/Users/tannervanorden/Desktop/Great_Basin_Report/PCA Plots/Scree_Plot_YellowRainbow.png",
       plot = scree_plot, width = 8, height = 5)






# Load the necessary libraries
library(tidyverse)

# Load the covariance matrix. Change the file path if needed.
cov <- as.matrix(read.table("/Users/tannervanorden/Dropbox/Cutthroat_Research/PCA_Graphs/Rainbow_Yellow_R_PCA.covMat"), header = FALSE)

# Population assignments
Hendrys <- rep("Hendry's Creek", 42)
PineR <- rep('Pine & Ridge Creeks', 29)
Mill <- rep("Mill Creek", 18)
Trout <- rep("Trout Creek", 4)
Mountain_Dell <- rep("Mountain Dell", 2)
Birch <- rep("Birch Creek", 3)
Willard <- rep("Willard Creek", 30)
Shingle <- rep('Shingle Creek', 9)
William <- rep("William's Creek", 6)
Bear_River <- rep("Bear River Cutthroat", 3)
Yellowstone <- rep("Yellowstone Cutthroat", 1)
Rainbow <- rep("Rainbow Trout", 1)

pop <- c(Hendrys, PineR, Mill, Trout, Mountain_Dell, Birch, Willard, Shingle, William, Bear_River, Yellowstone, Rainbow)

mme.pca <- eigen(cov) # Perform the PCA using the eigen function.

eigenvectors <- mme.pca$vectors # Extract eigenvectors
pca.vectors <- as_tibble(cbind(pop, data.frame(eigenvectors))) # Combine with our population assignment

# Add species column
pca.vectors <- pca.vectors %>%
  mutate(species = case_when(
    pop %in% c("William's Creek", "Shingle Creek") ~ "Rainbow",
    pop %in% c("Yellowstone Cutthroat", "Bear River Cutthroat") ~ "Yellowstone",
    pop == "Rainbow Trout" ~ "Rainbow",
    TRUE ~ "Bonneville"
  ))

pca <- ggplot(data = pca.vectors, aes(x = X1, y = X2, colour = pop, shape = species)) + 
  geom_point() + 
  scale_color_manual(values = c("darkorange", "blue", 'goldenrod1', 'red', 'chartreuse1', 'purple', 'pink', "black", "cyan", "brown", "lightgrey",  "olivedrab3")) +
  scale_shape_manual(values = c(19, 17, 15)) + # Assigning shapes (triangle, diamond, square)
  labs(x = paste("PC1 (", round(varPC1, 2), "%)"), y = paste("PC2 (", round(varPC2, 2), "%)")) + 
  theme_linedraw()

# Save the PCA plot as an image
ggsave("/Users/tannervanorden/Desktop/Great_Basin_Report/PCA Plots/Updated_YellowRainbow.png",
       plot = pca, width = 8, height = 5)



# Load the necessary libraries
library(tidyverse)

# Load the covariance matrix. Change the file path if needed.
cov <- as.matrix(read.table("/Users/tannervanorden/Dropbox/Cutthroat_Research/PCA_Graphs/Rainbow_Yellow_R_PCA.covMat"), header = FALSE)

# Population assignments
Hendrys <- rep("Hendry's Creek", 42)
PineR <- rep('Pine & Ridge Creeks', 29)
Mill <- rep("Mill Creek", 18)
Trout <- rep("Trout Creek", 4)
Mountain_Dell <- rep("Mountain Dell", 2)
Birch <- rep("Birch Creek", 3)
Willard <- rep("Willard Creek", 30)
Shingle <- rep('Shingle Creek', 9)
William <- rep("William's Creek", 6)
Bear_River <- rep("Bear River Cutthroat", 3)
Yellowstone <- rep("Yellowstone Cutthroat", 1)
Rainbow <- rep("Rainbow Trout", 1)

# Plotting PCA (initial plot without circles)
pca_plot = ggplot(data = pca.vectors, aes(x = X1, y = X2, colour = pop)) + 
  geom_point() + 
  scale_color_manual(values = c("darkorange", "blue", 'goldenrod1', 'red', 'chartreuse1', 'purple', 'pink', "cornflowerblue", 'bisque2', "black", "cyan", "brown", "lightgrey",  "olivedrab3")) +
  labs(x = paste("PC1 (", round(varPC1, 2), "%)"), y = paste("PC2 (", round(varPC2, 2), "%)")) +
  theme_linedraw()

# Identifying points for Rainbow Trout and Yellowstone Cutthroat in the PCA plot
highlighted_pca_data <- subset(pca.vectors, pop %in% c("Midway Rainbow Trout", "Glade Creek"))

# Adding circles for Rainbow Trout and Yellowstone Cutthroat in the PCA plot (size adjusted to 15)
pca_plot <- pca_plot +
  geom_point(data = highlighted_pca_data, aes(x = X1, y = X2), size = 15, shape = 1, color = c("blue", "red")) +
  
  # Adding text labels for Rainbow Trout and Yellowstone Cutthroat circles in the PCA plot
  geom_text(data = subset(highlighted_pca_data, pop == "Midway Rainbow Trout"),
            aes(x = X1, y = X2, label = "Rainbow Trout"),
            hjust = 0.47, vjust = -3.6, color = "black", size = 3) +
  geom_text(data = subset(highlighted_pca_data, pop == "Glade Creek"),
            aes(x = X1, y = X2, label = "Yellowstone Cutthroat Trout"),
            hjust = 0.48 , vjust = -3.6, color = "black", size = 3)

# Save the modified PCA plot
ggsave(
  "/Users/tannervanorden/Desktop/Great_Basin_Report/PCA Plots/PCA_with_circles_3x.png",
  plot = pca_plot,
  width = 8,
  height = 5
)


