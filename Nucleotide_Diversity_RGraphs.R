library(tidyverse)
library(stringr)
library(angsdr)

Birch = as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/BirchWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(Birch_pi = theta_pi / numsites)
Hendrys = as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/HendrysWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(Hendrys_pi = theta_pi / numsites)
Mill = as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/MillWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(Mill_pi = theta_pi / numsites)
Mountain_Dell = as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/Mountain_DellWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(Mountain_Dell_pi = theta_pi / numsites)
Pine_Ridge = as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/PineRWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(Pine_Ridge_pi = theta_pi / numsites)
Trout_Creek = as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/Trout_CreekWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(Trout_Creek_pi = theta_pi / numsites)



Birch =  Birch %>% mutate(Location = paste(seqnames, start))
Hendrys = Hendrys %>% mutate(Location = paste(seqnames, start))
Hendrys = Hendrys %>% mutate(taj_d.x_modern = (taj_d))
Mill=  Mill %>% mutate(Location = paste(seqnames, start))
Mountain_Dell = Mountain_Dell %>% mutate(Location = paste(seqnames, start))
Pine_Ridge = Pine_Ridge %>% mutate(Location = paste(seqnames, start))
Trout_Creek = Trout_Creek %>% mutate(Location = paste(seqnames, start))



 BH = merge(Birch, Hendrys, by="Location")
 BHM = merge(BH, Mill, by="Location")
 new_df_BHM = subset(BHM, select = c(Location, Birch_pi, Hendrys_pi, Mill_pi))
 BHMMP = merge(new_df_BHM, Pine_Ridge, by="Location")
 BHMNPT = merge(BHMMP, Trout_Creek, by="Location")
 new_df_BHMNPT = subset(BHMNPT, select = c(Location, Birch_pi, Hendrys_pi, Mill_pi, Trout_Creek_pi, Pine_Ridge_pi))
 new_df_BHMNPTM = merge(new_df_BHMNPT, Mountain_Dell, by="Location") 
 Final= subset(new_df_BHMNPTM , select = c(Location, Birch_pi, Hendrys_pi, Mill_pi, Trout_Creek_pi, Pine_Ridge_pi, Mountain_Dell_pi))
 
 Final_Chromosome1 = Final %>% filter(str_detect(Location, "PGA_scaffold10__68_contigs*"))
 Final_Willard = Final_Willard %>% filter(str_detect(Location, "PGA_scaffold10__68_contigs*"))
 
 ## Individual Populations
 
Lehman = as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/LehmanWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(Lehman_pi = theta_pi / numsites)
Lehman =  Lehman %>% mutate(Location = paste(seqnames, start))
Deadman = as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/DeadmanWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(Deadman_pi = theta_pi / numsites)
Deadman = Deadman %>% mutate(Location = paste(seqnames, start))
Silver = as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/SilverWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(Silver_pi = theta_pi / numsites)
Silver = Silver %>% mutate(Location = paste(seqnames, start))
BigWash = as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/BigWashWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(BigWash_pi = theta_pi / numsites)
BigWash = BigWash %>%  mutate(Location = paste(seqnames, start))
South_BigWash = as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/South_BigWashWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(South_Bigwash_pi = theta_pi / numsites)
South_BigWash = South_BigWash  %>% mutate(Location = paste(seqnames, start))
Shingle =  as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/ShingleWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(Shingle_pi = theta_pi / numsites)
Shingle = Shingle %>% mutate(Location = paste(seqnames, start))
Smith =  as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/SmithWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(Smith_pi = theta_pi / numsites)
Smith = Smith %>% mutate(Location = paste(seqnames, start))
Strawberry = as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/StrawberryWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(Strawberry_pi = theta_pi / numsites)
Strawberry = Strawberry %>% mutate(Location = paste(seqnames, start))
Williams = as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/WilliamsWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(Williams_pi = theta_pi / numsites)
Williams = Williams %>%  mutate(Location = paste(seqnames, start))
Willard =  as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/WillardWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(Willards_pi = theta_pi / numsites)
Willard = Willard %>%  mutate(Location = paste(seqnames, start))

Mill_2003 = as.data.frame(readPestPG('/Users/tannervanorden/Dropbox/Cutthroat_Research/Original_Cutthroat/Mill_2003_WH.thetas.windows.gz.pestPG')) %>% drop_na() %>% mutate(Mill_2003_pi = theta_pi / numsites)
Mill_2003 = Mill_2003 %>% mutate(Location = paste(seqnames, start))

Mill_2009 = as.data.frame(readPestPG('/Users/tannervanorden/Dropbox/Cutthroat_Research/Original_Cutthroat/Mill_2009_WH.thetas.windows.gz.pestPG')) %>% drop_na() %>% mutate(Mill_2009_pi = theta_pi / numsites)
Mill_2009 = Mill_2009 %>%  mutate(Location = paste(seqnames, start))

Final_Mill = merge(Mill_2003, Mill, by="Location")
Final_Mill = merge(Final_Mill, Mill_2009, by="Location")
Final_Mill = subset(Final_Mill, select = c(Location, Mill_pi, Mill_2003_pi, Mill_2009_pi))
Final_Mill = Final_Mill %>% filter(str_detect(Location, "PGA_scaffold19__143_contigs*"))

Final_South_Bigwash = merge(Historical_South_Bigwash, South_BigWash, by="Location")
Final_South_Bigwash = subset(Final_South_Bigwash, select = c(Location, South_Big_Wash_2010_pi, South_Bigwash_pi))

Historical_Willard = as.data.frame(readPestPG('/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide__Graphs/Historical_WillardWH.thetas.windows.gz.pestPG')) %>% drop_na() %>% mutate(Willard_Historic_pi = theta_pi / numsites)
Historical_Willard = Historical_Willard  %>%  mutate(Location = paste(seqnames, start))
Willard =  as.data.frame(readPestPG("/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/WillardWH.thetas.windows.gz.pestPG")) %>% drop_na() %>% mutate(Willards_pi = theta_pi / numsites)
Willard = Willard %>%  mutate(Location = paste(seqnames, start))
Final_Willard = merge(Historical_Willard, Willard, by="Location")
Final_Willard = subset(Final_Willard, select = c(Location, Willard_Historic_pi, Willards_pi))


Historical_South_Bigwash = as.data.frame(readPestPG('/Users/tannervanorden/Dropbox/Cutthroat_Research/Original_Cutthroat/Historical_South_Bigwash_WH.thetas.windows.gz.pestPG')) %>% drop_na() %>% mutate(South_Big_Wash_2010_pi = theta_pi / numsites)
Historical_South_Bigwash = Historical_South_Bigwash %>%  mutate(Location = paste(seqnames, start))

Historical_Bigwash = as.data.frame(readPestPG('/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/Historical_BigwashWH.thetas.windows.gz.pestPG')) %>% drop_na() %>% mutate(Big_Wash_2010_pi = theta_pi / numsites)
Historical_Bigwash = Historical_Bigwash %>%  mutate(Location = paste(seqnames, start))

Snake = as.data.frame(readPestPG('/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide__Graphs/SnakeWH.thetas.windows.gz.pestPG'))  %>% drop_na() %>% mutate(Snake_pi = theta_pi / numsites)
Snake = Snake %>%  mutate(Location = paste(seqnames, start))
Historical_Snake = as.data.frame(readPestPG('/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/HistoricalWH_Snake.thetas.windows.gz.pestPG'))  %>% drop_na() %>% mutate(Historical_Snake_pi = theta_pi / numsites)
Historical_Snake = Historical_Snake %>%  mutate(Location = paste(seqnames, start))
Final_Snake = merge(Snake, Historical_Snake, by="Location")
Final_Snake = subset(Final_Snake, select = c(Location, Snake_pi, Historical_Snake_pi))
Final_Snake = Final_Snake %>% filter(str_detect(Location, "PGA_scaffold10__68_contigs*"))
  
Historical_Hendrys = as.data.frame(readPestPG('/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/HistoricalWH_Hendrys.thetas.windows.gz.pestPG')) %>% drop_na() %>% mutate(Historical_Hendrys_pi = theta_pi / numsites)
Historical_Hendrys = Historical_Hendrys %>%  mutate(Location = paste(seqnames, start))
Historical_Hendrys = Historical_Hendrys %>%  mutate(taj_d.x_Historical = (taj_d))
Final_Hendrys = merge(Hendrys, Historical_Hendrys, by="Location")
Final_Hendrys = subset(Final_Hendrys, select = c(Location, Hendrys_pi, Historical_Hendrys_pi))
Final_Hendrys = subset(Final_Hendrys, select = c(Location, taj_d.x_modern, taj_d.x_Historical))
Final_Hendrys = Final_Hendrys %>% filter(str_detect(Location, "PGA_scaffold19__143_contigs*"))

Historical_Deadman = as.data.frame(readPestPG('/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/HistoricalWH_Deadman.thetas.windows.gz.pestPG')) %>% drop_na() %>% mutate(Historical_Deadman_pi = theta_pi / numsites)
Historical_Deadman = Historical_Deadman %>%  mutate(Location = paste(seqnames, start))
Final_Dead = merge(Deadman, Historical_Deadman, by="Location")
Final_Dead = subset(Final_Dead, select = c(Location, Deadman_pi, Historical_Deadman_pi))
Final_Dead = Final_Dead %>% filter(str_detect(Location, "PGA_scaffold10__68_contigs*"))

Historical_Strawberry = as.data.frame(readPestPG('/Users/tannervanorden/Dropbox/Cutthroat_Research/Nucleotide_Diversity/HistoricalWH_Strawberry.thetas.windows.gz.pestPG')) %>% drop_na() %>% mutate(Historical_Strawberry_pi = theta_pi / numsites)
Historical_Strawberry = Historical_Strawberry %>%  mutate(Location = paste(seqnames, start))
Final_Straw = merge(Strawberry, Historical_Strawberry, by="Location")
Final_Straw = subset(Final_Straw, select = c(Location, Strawberry_pi, Historical_Strawberry_pi))
Final_Straw = Final_Straw %>% filter(str_detect(Location, "PGA_scaffold10__68_contigs*"))



Final_Bigwash = merge(BigWash, Historical_Bigwash, by="Location")
Final_Bigwash = subset(Final_Bigwash, select = c(Location, Big_Wash_2010_pi, BigWash_pi))
Final_Bigwash = Final_Bigwash  %>% filter(str_detect(Location, "PGA_scaffold10__68_contigs*"))

 Final_Lehman = merge(Final, Lehman)
 Final_Lehman = subset(Final_Lehman , select = c(Location, Birch_pi, Hendrys_pi, Mill_pi, Trout_Creek_pi, Pine_Ridge_pi, Mountain_Dell_pi, Lehman_pi))
 Final_Deadman = merge(Final_Lehman, Deadman)
 Final_Deadman = subset(Final_Deadman, select = c(Location, Birch_pi, Hendrys_pi, Mill_pi, Trout_Creek_pi, Pine_Ridge_pi, Mountain_Dell_pi, Lehman_pi, Deadman_pi))
 Final_Silver = merge(Final_Deadman, Silver)
 Final_Silver = subset(Final_Silver, select = c(Location, Birch_pi, Hendrys_pi, Mill_pi, Trout_Creek_pi, Pine_Ridge_pi, Mountain_Dell_pi, Lehman_pi, Deadman_pi, Silver_pi))
 Final_BigWash = merge(Final_Silver, BigWash)
 Final_BigWash = subset(Final_BigWash, select = c(Location, Birch_pi, Hendrys_pi, Mill_pi, Trout_Creek_pi, Pine_Ridge_pi, Mountain_Dell_pi, Lehman_pi, Deadman_pi, Silver_pi, BigWash_pi))
 Final_South_BigWash = merge(Final_BigWash, South_BigWash )
 Final_South_BigWash =  subset(Final_South_BigWash, select = c(Location, Birch_pi, Hendrys_pi, Mill_pi, Trout_Creek_pi, Pine_Ridge_pi, Mountain_Dell_pi, Lehman_pi, Deadman_pi, Silver_pi, BigWash_pi, South_Bigwash_pi))
 Final_Shingle = merge(Final_South_BigWash, Shingle)
 Final_Shingle = subset(Final_Shingle, select = c(Location, Birch_pi, Hendrys_pi, Mill_pi, Trout_Creek_pi, Pine_Ridge_pi, Mountain_Dell_pi, Lehman_pi, Deadman_pi, Silver_pi, BigWash_pi, South_Bigwash_pi, Shingle_pi))
 Final_Smith = merge(Final_Shingle, Smith)
 Final_Smith = subset(Final_Smith, select = c(Location, Birch_pi, Hendrys_pi, Mill_pi, Trout_Creek_pi, Pine_Ridge_pi, Mountain_Dell_pi, Lehman_pi, Deadman_pi, Silver_pi, BigWash_pi, South_Bigwash_pi, Shingle_pi, Smith_pi))
 Final_Strawberry = merge(Final_Smith, Strawberry)
 Final_Strawberry = subset(Final_Strawberry, select = c(Location, Birch_pi, Hendrys_pi, Mill_pi, Trout_Creek_pi, Pine_Ridge_pi, Mountain_Dell_pi, Lehman_pi, Deadman_pi, Silver_pi, BigWash_pi, South_Bigwash_pi, Shingle_pi, Smith_pi, Strawberry_pi))
 Final_Williams = merge(Final_Strawberry, Williams)
 Final_Williams = subset(Final_Williams, select = c(Location, Birch_pi, Hendrys_pi, Mill_pi, Trout_Creek_pi, Pine_Ridge_pi, Mountain_Dell_pi, Lehman_pi, Deadman_pi, Silver_pi, BigWash_pi, South_Bigwash_pi, Shingle_pi, Smith_pi, Strawberry_pi, Williams_pi))
 Final_Willard = merge(Final_Williams, Willard)
 Final_Willard = subset(Final_Willard, select = c(Location, Birch_pi, Hendrys_pi, Mill_pi, Trout_Creek_pi, Pine_Ridge_pi, Mountain_Dell_pi, Lehman_pi, Deadman_pi, Silver_pi, BigWash_pi, South_Bigwash_pi, Shingle_pi, Smith_pi, Strawberry_pi, Williams_pi, Willards_pi))
 Final_Snake = merge( Final_Willard, Snake)
 Final_Snake = subset(Final_Snake, select = c(Location, Birch_pi, Hendrys_pi, Mill_pi, Trout_Creek_pi, Pine_Ridge_pi, Mountain_Dell_pi, Lehman_pi, Deadman_pi, Silver_pi, BigWash_pi, South_Bigwash_pi, Shingle_pi, Smith_pi, Strawberry_pi, Williams_pi, Willards_pi, Snake_pi))
 
 two_historical = merge(Final_Hendrys, Final_Mill)
 three_historical = merge(two_historical, Final_Willard) %>% mutate(Hendrys_Diff = Historical_Hendrys_pi - Hendrys_pi) %>% mutate(Willard_Diff = Willard_Historic_pi - Willards_pi) %>% mutate(Mill_Diff = Mill_2009_pi - Mill_pi) 
 