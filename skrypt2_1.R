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
Team = 
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
d = cbind(Month, Patients, Infections, Team)
ramka3 = data.frame(Month, Patients, Infections, Team)

