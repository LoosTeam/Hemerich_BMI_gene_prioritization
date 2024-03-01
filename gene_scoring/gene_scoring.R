# Code for scoring prioritized genes

library(stringr)

setwd("/sc/arion/projects/loosr01a/daiane/projects/BMI_genes/gene_scoring")

all_genes <- read.table("all_genes.txt", stringsAsFactors = F, header = F)
depict <- read.table("DEPICT.txt", stringsAsFactors = F, header = F)
pops <- read.table("PoPS.txt", stringsAsFactors = F, header = F)
smr <- read.table("SMR.txt", stringsAsFactors = F, header = F)
finemap <- read.table("FINEMAP.txt", stringsAsFactors = F, header = F)
twas <- read.table("TWAS.txt", stringsAsFactors = F, header = F)
magma <- read.table("MAGMA.txt", stringsAsFactors = F, header = F)
msc <- read.table("MSC.txt", stringsAsFactors = F, header = F)
nearest <- read.table("nearest_genes.txt", stringsAsFactors = F, header = F)

df_genes <- data.frame(stringsAsFactors = F)
result_genes <- data.frame(stringsAsFactors = F)
for (i in 1:(length(all_genes$V1))){
  score = 0
  tools = 0
  word = all_genes$V1[i]
  if (str_detect(depict, paste("\\b",word,"\\b", sep="")) == TRUE){
    score = score + 3.2
    tools = tools + 1
  }
  if (str_detect(magma, paste("\\b",word,"\\b", sep="")) == TRUE){
    score = score + 2.6
    tools = tools + 1
  }
  if (str_detect(pops, paste("\\b",word,"\\b", sep="")) == TRUE){
    score = score + 5.3
    tools = tools + 1
  }
  if (str_detect(smr, paste("\\b",word,"\\b", sep="")) == TRUE){
    score = score + 1
    tools = tools + 1
  }
  if (str_detect(finemap, paste("\\b",word,"\\b", sep="")) == TRUE){
    score = score + 1
    tools = tools + 1
  }
  if (str_detect(twas, paste("\\b",word,"\\b", sep="")) == TRUE){
    score = score + 3.2
    tools = tools + 1
  }
  if (str_detect(msc, paste("\\b",word,"\\b", sep="")) == TRUE){
    score = score + 8
    tools = tools + 1
  }
  if (str_detect(nearest, paste("\\b",word,"\\b", sep="")) == TRUE){
    score = score + 3.7
    tools = tools + 1
  }
  result_genes <- all_genes$V1[i]
  result_genes$score <- as.numeric(score)
  result_genes$tools <- as.numeric(tools)
  result_genes <- as.data.frame(result_genes)
  colnames(result_genes) <- c("gene", "score", "tools")
  df_genes <- rbind(df_genes,result_genes)
}
#df_genes <- unique(df_genes)
write.table(df_genes,file="genes_scored_tools.txt", sep = '\t', col.names = T, row.names = F, quote = F)
