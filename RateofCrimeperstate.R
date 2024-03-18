library(dslabs)
data(murders)
#Calculating murder rate per 100000 population
murder_rate <- murders$total/murders$population*100000
murder_rate <- rank (murders$total/murders$population*100000)
murders$state[murder_rate]

murders$state[which.max(murders$total)]
murders$state[which.max(murder_rate)]

