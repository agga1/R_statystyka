library(MASS)
#1
data = InsectSprays
kills = tapply(data$count, data$spray, sum)
print(kills)

#install.packages("UsingR")
#library(UsingR)
barplot(kills)

#2
dane2 = data.frame(plec=c(1,1,0,1,0,1,1,0,1,0,0,1,0,1,1,0,0,0,0,1,1),
                   papierosy=c(1,1,4,1,3,1,1,1,1,2,1,1,1,1,1,4,4,1,1,1,2),
                   kawa=c(1,1,1,1,1,1,2,1,3,4,4,1,2,1,1,1,1,1,3,2,2))
#print(dane2)
tabLiczPap = table(dane2$papierosy)
tabLiczKawa = table(dane2$kawa)
hist(dane2$papierosy, breaks=c(0,1,2,3,4))
hist(dane2$kawa, breaks=c(0,1,2,3,4))
pie(tabLiczPap)
pie(tabLiczKawa)
#podzial na plec?
hist(dane2$papierosy[dane2$plec==0])
hist(dane2$papierosy[dane2$plec==1])
genderDistinctP= table(dane2$papierosy, dane2$plec)
colnames(genderDistinctP)<-c("kobieta", "mezczyzna")
genderDistinctK= table(dane2$papierosy, dane2$plec)
colnames(genderDistinctK)<-c("kobieta", "mezczyzna")


#3
Fractions = 
  c(
    0.06,
    0.048,
    0.162,
    0.07,
    0.109,
    0.136,
    0.263,
    0.061,
    0.098,
    0.037,
    0.03,
    0.061,
    0.121,
    0.102,
    0.073,
    0.049,
    0,
    0.075,
    0.049,
    0.104,
    0.077,
    0.109,
    0.102,
    0.033
  )
Patients=c(50,42,37,71,55,44,38,33,41,27,33,49,66,49,55,41,29,40,41,48,52,55,49,60)
Infections=c(3,2,6,5,6,6,10,2,4,1,1,3,8,5,4,2,0,3,2,5,4,6,5,2)
Month=c(1:24)
d = cbind(Month, Patients, Infections, Fractions)
ramka3 = data.frame(Month, Patients, Infections, Fractions)
boxplot(Fractions)
hist(Fractions, breaks = 10)
median(Fractions)
IQR(Fractions)

#3 b

TeamA=c(0.050,0.091,0.100,0.067,0.118,0.050,0.133,0.048,0.053,0.000,0.067,0.040,0.065,0.053,0.040,0.105,0.000,0.071,0.100,0.067,0.050,0.105,0.071,0.050)
TeamB=c(0.067,0.000,0.235,0.029,0.080,0.133,0.200,0.000,0.105,0.000,0.000,0.050,0.100,0.050,0.100,0.000,0.000,0.063,0.100,0.200,0.100,0.118,0.133,0.050)
TeamC=c(NA,NA,NA,0.333,0.154,0.333,0.462,0.333,0.333,0.500,0.000,0.250,0.267,0.300,0.100,0.000,0.000,0.100,0.000,0.087,0.083,0.105,0.100,0.000)
Teams <- data.frame(TeamA, TeamB, TeamC)
boxplot(Teams)

#4
plot(LakeHuron)
identify(LakeHuron, labels=seq_along(LakeHuron)+1875)
# max: 1877; min: 1965

#5
boxplot(state.x77[,1], main="Population")
boxplot(state.x77[,2], main="Income")
boxplot(state.x77[,3], main="Illiteracy")
boxplot(state.x77[,4], main="Life expectancy")
boxplot(state.x77[,5], main="Murder")
boxplot(state.x77[,6], main="HS Grad")
boxplot(state.x77[,7], main="Frost")
boxplot(state.x77[,8], main="Area")
library("aplpack")
faces(state.x77)
stars(state.x77, key.loc=c(0,0))
