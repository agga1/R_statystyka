library(MASS)
data = InsectSprays
kills = tapply(data$count, data$spray, sum)
print(kills)

#install.packages("UsingR")
#library(UsingR)
barplot(kills)
boxplot(count~spray, data=dt)
