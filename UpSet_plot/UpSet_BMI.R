
# R code used to create UpSet plot

library(UpSetR)
library(ggupset)
library(ggplot2)
library(ragg)
 
setwd("/Users/hemericd/Downloads/upset/")
venn_results_bmi <- read.table("venn_result7408.txt", stringsAsFactors = F, header = T, sep = '\t')
venn_results_bmi$Tools <- as.list(strsplit(venn_results_bmi$Tools, " "))
 
p <- ggplot(venn_results_bmi, aes(x=Tools)) +
  geom_bar() +
  geom_text(stat='count', aes(label=after_stat(count)), vjust=-1, size=3) +
  scale_x_upset(reverse = TRUE, order_by = "degree")
