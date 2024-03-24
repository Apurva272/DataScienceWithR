library(dslabs)
library(dplyr)
library(tidyverse)
data(heights)
options(digits = 3) 
x <- mean(heights$height)
#to find how many individuals are above average height
y <- sum(heights$height>x)
#to find how many individuals are above average height and are female
z <- sum(heights$height> x & heights$sex == "Female")
f <- heights$sex == "Female"

calc <- heights %>% summarize(minimum=min(height))
a <-  match(c(min(heights$height)),heights$height)
b <- heights$sex[1032]
maxi<- max(heights$height)
mini <- min(heights$height)
store <- 50:82
#How many of the integers in x are NOT heights in the dataset?
ans <- sum(!store %in% heights$height)
heights2  <- mutate(heights,ht_cm = height*2.54)
females <- heights2 %>% filter(sex=="Female")
mean_female_heigh <- mean(females$ht_cm)
