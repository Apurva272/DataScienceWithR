library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)
murders <- mutate(murders, rate = total / population * 10^5)

# group by region
murders %>% group_by(region)

# summarize after grouping
murders %>% 
  group_by(region) %>%
  summarize(median = median(rate))