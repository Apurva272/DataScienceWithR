codes <- c(100,101,102)
country <- c("italy","india","egypt")
class(codes)
details <- c(italy=100, india=101, egypt=102)
table(c(codes,country))

##coercion
x <- c(1,"canada",3)
class (x)
## forced coercion
x <- 1:5
y <- as.character(x)
z <- as.numeric(x)
##handling missing data in R using coercion - by labelling missing data NA
x1 <- c(1, "b", 3)
y1 <- as.numeric(x1)

