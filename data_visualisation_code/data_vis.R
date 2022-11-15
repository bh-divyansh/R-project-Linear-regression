#Load Library to Read Excel
#Ignore Warnings During Loading
library(xlsx)
library(ggplot2)
library(dplyr)
library(ggrepel)
library(tidyverse)
library(reshape)

#Load Excel Data
data <- read.xlsx(file.choose(),1)
#Give it Time To Load Once Visible then Go to Next Line
#Used Initial Clean For This
#data <- read.xlsx("C:\\Users\\Pranav Patil\\Documents\\VIT\\Second Year\\Fall Semister\\P&S-BMAT202P\\Project Database\\Initial Clean\\Initial_Clean.xlsx",1)

#Summary of Type
#Pie Chart
df = data.frame(Type = c("CPU","GPU"),
                Frequency = c(0,0))
#nrow(data)
j=1:nrow(data)

for(i in j){
  if(data$Type[i] == 'CPU'){
    df$Frequency[1]=df$Frequency[1]+1
  }
  else if(data$Type[i] == 'GPU'){
    df$Frequency[2]=df$Frequency[2]+1
  }
}

df2 <- df %>%
  mutate(csum = rev(cumsum(rev(Frequency))), 
         pos = Frequency/2 + lead(csum, 1),
         pos = if_else(is.na(pos), Frequency/2, pos))

ggplot(df, aes(x = "" , y = Frequency, fill = fct_inorder(Type))) +
  geom_col(width = 1, color = 1) +
  coord_polar(theta = "y") +
  scale_fill_brewer(palette = "Pastel1") +
  geom_label_repel(data = df2,
                   aes(y = pos, label = paste0(format(round(((Frequency*100)/nrow(data)), 2), nsmall = 2), "%")),
                   size = 4.5, nudge_x = 1, show.legend = FALSE) +
  guides(fill = guide_legend(title = "Type")) +
  theme_void()+ggtitle("Distribution of Type of Proccesor Unit in Data")

#Summary of Year
#Pie Chart
df = data.frame(Year = c(2000:2021),
                Frequency = c(0,0,0,0,0,0,0,
                              0,0,0,0,0,0,0,
                              0,0,0,0,0,0,0,0))

j=1:nrow(data)

for(i in j){
  df$Frequency[data$Release.Year[i]-1999]=df$Frequency[data$Release.Year[i]-1999]+1
}

#2000-2005
a=sum(df$Frequency[1:6])
#2006-2010
b=sum(df$Frequency[7:11])
#2011-2015
c=sum(df$Frequency[12:16])
#2016-2021
d=sum(df$Frequency[17:22])
df2 = data.frame(Year = c('2000-2005','2006-2010','2011-2015','2016-2021'),
                 Frequency = c(a,b,c,d))

df3 <- df2 %>%
  mutate(csum = rev(cumsum(rev(Frequency))), 
         pos = Frequency/2 + lead(csum, 1),
         pos = if_else(is.na(pos), Frequency/2, pos))

ggplot(df2, aes(x = "" , y = Frequency, fill = fct_inorder(Year))) +
  geom_col(width = 1, color = 1)+
  coord_polar(theta = "y") +
  scale_fill_brewer(palette = "Pastel1") +
  geom_label_repel(data = df3,
                   aes(y = pos, label = paste0(format(round(((Frequency*100)/nrow(data)), 2), nsmall = 2), "%")),
                   size = 4.5, nudge_x = 0.7, show.legend = FALSE) +
  guides(fill = guide_legend(title = "Year")) +
  theme_void()+ggtitle("Distribution of Years in Data")

#Summary of Foundary
#Pie Chart
df = data.frame(Type = c("GF","Intel","TSMC","Unknown","Other"),
                Frequency = c(0,0,0,0,0))
nrow(data)
j=1:nrow(data)

for(i in j){
  if(data$Foundry[i] == 'GF'){
    df$Frequency[1]=df$Frequency[1]+1
  }
  else if(data$Foundry[i] == 'Intel'){
    df$Frequency[2]=df$Frequency[2]+1
  }
  else if(data$Foundry[i] == 'NEC'){
    df$Frequency[5]=df$Frequency[5]+1
  }
  else if(data$Foundry[i] == 'Renesas'){
    df$Frequency[5]=df$Frequency[5]+1
  }
  else if(data$Foundry[i] == 'Samsung'){
    df$Frequency[5]=df$Frequency[5]+1
  }
  else if(data$Foundry[i] == 'Sony'){
    df$Frequency[5]=df$Frequency[5]+1
  }
  else if(data$Foundry[i] == 'TSMC'){
    df$Frequency[3]=df$Frequency[3]+1
  }
  else if(data$Foundry[i] == 'UMC'){
    df$Frequency[5]=df$Frequency[5]+1
  }
  else if(data$Foundry[i] == 'Unknown'){
    df$Frequency[4]=df$Frequency[4]+1
  }
}

df2 <- df %>%
  mutate(csum = rev(cumsum(rev(Frequency))), 
         pos = Frequency/2 + lead(csum, 1),
         pos = if_else(is.na(pos), Frequency/2, pos))

ggplot(df, aes(x = "" , y = Frequency, fill = fct_inorder(Type))) +
  geom_col(width = 1, color = 1) +
  coord_polar(theta = "y") +
  scale_fill_brewer(palette = "Pastel1") +
  geom_label_repel(data = df2,
                   aes(y = pos, label = paste0(format(round(((Frequency*100)/nrow(data)), 2), nsmall = 2), "%")),
                   size = 4.5, nudge_x = 1, show.legend = FALSE) +
  guides(fill = guide_legend(title = "Type")) +
  theme_void()+ggtitle("Distribution of Foundary in Data")

#Summary of Foundary
#Pie Chart
df = data.frame(Type = c("AMD","ATI","Intel","NVIDIA","Other"),
                Frequency = c(0,0,0,0,0))
nrow(data)
j=1:nrow(data)

for(i in j){
  if(data$Vendor[i] == 'AMD'){
    df$Frequency[1]=df$Frequency[1]+1
  }
  else if(data$Vendor[i] == 'ATI'){
    df$Frequency[2]=df$Frequency[2]+1
  }
  else if(data$Vendor[i] == 'Intel'){
    df$Frequency[3]=df$Frequency[3]+1
  }
  else if(data$Vendor[i] == 'NVIDIA'){
    df$Frequency[4]=df$Frequency[4]+1
  }
  else if(data$Vendor[i] == 'Other'){
    df$Frequency[5]=df$Frequency[5]+1
  }
}

df2 <- df %>%
  mutate(csum = rev(cumsum(rev(Frequency))), 
         pos = Frequency/2 + lead(csum, 1),
         pos = if_else(is.na(pos), Frequency/2, pos))

ggplot(df, aes(x = "" , y = Frequency, fill = fct_inorder(Type))) +
  geom_col(width = 1, color = 1) +
  coord_polar(theta = "y") +
  scale_fill_brewer(palette = "Pastel1") +
  geom_label_repel(data = df2,
                   aes(y = pos, label = paste0(format(round(((Frequency*100)/nrow(data)), 2), nsmall = 2), "%")),
                   size = 4.5, nudge_x = 1, show.legend = FALSE) +
  guides(fill = guide_legend(title = "Type")) +
  theme_void()+ggtitle("Distribution of Vendor in Data")

#Summary of Correlation
a = data$Release.Year
b = data$Process.Size..nm.
c = data$TDP..W.
d = data$Die.Size..mm.2.
e = data$Transistors..million.
f = data$Freq..MHz.
#k = 1:6
df = data.frame(c(cor(a,a),cor(a,b),cor(a,c),cor(a,d),cor(a,e),cor(a,f)),
               c(cor(b,a),cor(b,b),cor(b,c),cor(b,d),cor(b,e),cor(b,f)),
               c(cor(c,a),cor(c,b),cor(c,c),cor(c,d),cor(c,e),cor(c,f)),
               c(cor(d,a),cor(d,b),cor(d,c),cor(d,d),cor(d,e),cor(d,f)),
               c(cor(e,a),cor(e,b),cor(e,c),cor(e,d),cor(e,e),cor(e,f)),
               c(cor(f,a),cor(f,b),cor(f,c),cor(f,d),cor(f,e),cor(f,f)))
m = data.matrix(df)
colnames(m) = c("Year","Node","TDP","DieSize","T. Cnt.","Freq")
rownames(m) = c("Year","Node","TDP","DieSize","T. Cnt.","Freq")
#ignore Warnings after melt
df=melt(m)
colnames(df) = c("X","Y","value")
ggplot(df, aes(x = X, y = Y, fill = value)) +
  geom_tile(color = "grey", lwd = 1.5, linetype = 1)+
  geom_text(aes(label = (format(round(value, 2), nsmall = 2))), color = "white", size = 4)+
  scale_fill_gradient2(high = "#66000d",mid = "#ff6f4d",low = "#ffffff") +  
  labs(xlab(""),ylab(""),title = "Over All Data Correlation")+
  coord_fixed()
