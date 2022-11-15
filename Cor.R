#Load Library to Read Excel
library("xlsx")

#Load Excel Data
data <- read_xlsx(file.choose(),1)

#Summary of Loaded Data
summary(data)

#Finding Correlation coefficient using Pearson's Formula
c = cor(data$`Release Year`,data$`Process Size (nm)`)
d = cor(data$`Release Year`,data$`TDP (W)`)
e = cor(data$`Release Year`,data$`Die Size (mm^2)`)
f = cor(data$`Release Year`,data$`Transistors (million)`)
g = cor(data$`Release Year`,data$`Freq (MHz)`)
h = cor(data$`Process Size (nm)`,data$`TDP (W)`)
i = cor(data$`Process Size (nm)`,data$`Die Size (mm^2)`)
j = cor(data$`Process Size (nm)`,data$`Transistors (million)`)
k = cor(data$`Process Size (nm)`,data$`Freq (MHz)`)
l = cor(data$`TDP (W)`,data$`Die Size (mm^2)`)
m = cor(data$`TDP (W)`,data$`Transistors (million)`)
n = cor(data$`TDP (W)`,data$`Freq (MHz)`)
o = cor(data$`Die Size (mm^2)`,data$`Transistors (million)`)
p = cor(data$`Die Size (mm^2)`,data$`Freq (MHz)`)
q = cor(data$`Transistors (million)`,data$`Freq (MHz)`)

result = c(c,d,e,f,g,h,i,j,k,l,m,n,o,p,q)

write.csv(result,file="result.csv",eol=",",row.names = FALSE, col.names = FALSE)

