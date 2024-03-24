library(dslabs)
data(heights)
x<- ifelse(heights$sex=="Female",1,2)
y <- ifelse(heights$height>72,heights$height,0)
inchrs_to_ft <- function (x){
  x/12
}
a <- ifelse(inchrs_to_ft(heights$height)<5,1,0)