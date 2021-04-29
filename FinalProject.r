# Load packages
library(ggplot2) # visualization
library(ggrepel)
library(ggthemes) # visualization
library(scales) # visualization
library(dplyr) # data manipulation
library(VIM)
library(data.table)
library(formattable)
library(plotly)
library(corrplot)
library(GGally)
library(caret)
library(car)
library(keras)




boxoffice <- read.csv("C:/Users/Elliot/Desktop/CS/Spring 2021/MATH 4323/Project/archive/tmdb_movies_data.csv", nrows=250)
View(boxoffice)
#boxoffice_march_2019 <- read.csv("C:/Users/Elliot/Desktop/CS/Spring 2021/MATH 4323/Project/archive")





#cleaning the data 
boxoffice[is.na(boxoffice)] <- 0

missing.values <- aggr(boxoffice, sortVars = T, prop = T, sortCombs = T, cex.lab = 1.5, cex.axis = .6, cex.numbers = 5, combined = F, gap = -.2)





boxoffice$studio

#Getting Uniques
(mystudios <- unique(boxoffice$studio))
summary(boxoffice.df)

boxoffice.df <- as.data.frame(boxoffice[,c("id","production_companies")])




# separate different studio into new columns
                         
boxoffice.df$UV <- sapply(1:length(boxoffice$production_companies), function(x) if (boxoffice.df[x,1] %like%  "Universal" ) 1 else 0)




# boxoffice.df$Fox <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "Fox") 1 else 0)
# boxoffice.df$Par <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "Par.") 1 else 0)
# boxoffice.df$Uni <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "Uni.") 1 else 0)
# boxoffice.df$WB <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "WB") 1 else 0)
# boxoffice.df$DW <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "DW") 1 else 0)
# boxoffice.df$LGF <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "LGF") 1 else 0)
# boxoffice.df$Sony <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "Sony") 1 else 0)
# boxoffice.df$PWD <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "P/DW") 1 else 0)
# boxoffice.df$NL <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "NL") 1 else 0)
# boxoffice.df$NM <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "NM") 1 else 0)
# boxoffice.df$WB <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "WB (NL)") 1 else 0)
# boxoffice.df$Sum <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "Sum.") 1 else 0)
# boxoffice.df$LG <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "LG/S") 1 else 0)
# boxoffice.df$Col <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "Col.") 1 else 0)
# boxoffice.df$IFC <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "IFC") 1 else 0)
# boxoffice.df$Tris <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "TriS") 1 else 0)
# boxoffice.df$`Dis` <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "Dis.") 1 else 0)
# boxoffice.df$Orion <- sapply(1:length(boxoffice$studio), function(x) if (boxoffice.df[x,1] %like% "Orion") 1 else 0)



