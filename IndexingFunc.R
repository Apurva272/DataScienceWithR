library(dslabs)
data(murders)
x <- c("MA", "ME", "MI", "MO", "MU")
y <- x%in%murders$abb
 inx <-which(!y)
 x[inx]