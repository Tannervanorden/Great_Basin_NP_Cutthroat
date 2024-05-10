library(tidyverse)
library(reshape2)
library(readxl)

data = read_excel('/Users/tannervanorden/Dropbox/Cutthroat_Research/Cutthroat_Cutt/FST_Stats.xlsx', col_names = TRUE)
columns = names(data)
rownames(data)<- colnames(data)
data = as.matrix(data)

melted = melt(data)

melted[, "Var1"] = factor(melted[, "Var1"], levels = columns)
melted[, "Var2"] = factor(melted[, "Var2"], levels = rev(columns))



ggplot(data = melted, aes(Var1, Var2, fill = value))+ geom_tile(color = "black", linewidth=.3)+ scale_fill_gradient(low = "white", high = "red", name="FST")  + 
  ggtitle(expression("Pairwise FST"))+labs( x = "Location", y = "Location") + theme(plot.title = element_text(hjust = 0.5, size = 15)) + 
  theme(axis.text.x = element_text(angle = 50, vjust = 1, size = 11, hjust = 1),axis.text.y = element_text(size = 12)) + coord_fixed() 


##Restore the data
cast = dcast(melted, Var1 ~ Var2)

