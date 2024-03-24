#To calculate the sum of 1 to n
#first we create a function that will perform the operation
compute_s_n <- function(n){
  x <- 1:n
  sum(x)
}
m <- 25
s_n <- vector(length=m) #creating empty vector
for(n in 1:m){
  s_n[n] <- compute_s_n(n)
}
# creating a plot for our summation function
n <- 1:m
plot(n, s_n)

# a table of values comparing our function to the summation formula
head(data.frame(s_n = s_n, formula = n*(n+1)/2))

# overlaying our function with the summation formula
plot(n, s_n)
lines(n, n*(n+1)/2)