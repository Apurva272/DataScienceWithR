library(dslabs)
data(olive)
boxplot(palmitic~region, data=olive)
olive$region[which.max(olive$palmitic)]
olive$region[which.min(olive$palmitic)]