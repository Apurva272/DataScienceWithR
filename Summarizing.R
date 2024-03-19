library(dslabs)
library(tidyverse)
library(dplyr)
data(murders)
#create a column with murder rates in the datset murders
murders <- mutate(murders,rate=total/population*10^5)
#calculate min, median and max murder rate and create table
s <- murders %>% filter(region=="West") %>% summarize(minimum = min(rate), median=median(rate), maximum=max(rate))
#average murder rate
us_murder_rate <- murders %>% summarize(rate=sum(total)/sum(population)*10^5)
mean(us_murder_rate)
#to give the output in one line: use of quantile
murders %>% filter(region=="West")%>%summarize(range=quantile(rate,c(0,0.5,1)))
#to give output in data frame using quantile function
my_quantile <- function(x){
  r<- quantile(x,c(0,0.5,1))
  data.frame(minimum=r[1],median=r[2],maximum=r[3])}
murders%>% filter(region=="West") %>% summarize(my_quantile(rate))