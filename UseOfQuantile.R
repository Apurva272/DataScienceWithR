#use quantile function to calculate min, max and median
library(dslabs)
library(dplyr)
library(tidyverse)
data(murders)
murders <- mutate(murders,rate=total/population*10^5)
longmethod <- murders%>% filter(region=="West") %>% summarize(maximum = max(rate), median = median(rate),minimum = min(rate))
#using quantile function
quantilemethod <- murders %>% filter(region=="West") %>% summarize(range=quantile(rate,c(0,0.5,1))) 

#generalise quantile function and use in another variable
myquantile <- function(x){
  r <- quantile(x,c(0,0.5,1))
  data.frame(minimum=r[1],median=r[2],maximum=r[3])
}
quantileshort <- murders %>% filter(region=="West") %>% summarize(myquantile(rate))



#use of data.table package in calculating the same as above
library(data.table)
library(heights)
heights <- SetDT(heights)
 #to filter gender and then summarize
s <- heights[sex=="Female", .(average=mean(height), standard_deviation = sd(height))]
#to find max and min
meduan_min_max <- function(x){
  qs <- quantile(x,c(0.5,0,1))
  data.frame(median=qs[1],minimum=qs[2],maximum = qs[3])}
heights[,.median_min_max(height)]
#grouping then summarizing in data.table
heights[, .(average = mean(height), standard_deviation = sd(height)), by = sex]
