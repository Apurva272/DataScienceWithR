library(dslabs)
data(murders)
#program to find out which state has murder rate less than 0.1
murder_rate <- murders$total/murders$population*10^5
ind <- which.min(murder_rate)
if(murder_rate[ind]<0.5){
  print(murders$state[ind])
}else{
  print("No state has murder rate that low")
}
if(murder_rate[ind]<0.25){
  print(murders$state[ind])
}else{
  print("No state has murder rate that low")
}
#USE OF IFELSE function in One row
a <- 0
ifelse(a>0,1/a,NA)

b <- c(0,-1,1,2,3)
result <- ifelse(b>0,1/a,NA)

#using if else function to replace NA with vectors
data(na_example)
#,calculate how many values are NA
y <- sum(is.na(na_example))
#REPLACE Na values
no_nas <- ifelse(is.na(na_example),0,na_example)
# now check NA values
y <- sum(is.na(na_example))