#Return the names of states in increasing order of crimes
library(dslabs)
data(murders)
index <- order(murders$total)
murders$state[index]

#The max function
max(murders$total)
i_max <- which.max(murders$total)
murders$state[i_max]