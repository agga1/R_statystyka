#1
x <- seq(-100, -10)

#2
y <- seq(3, 500, by=2)

#3
z <- c(0, 1, 2)
rodzenstwo <- rep(z, 12)
factor(rodzenstwo)
#print(rodzenstwo)

plec <- rep(c('K', 'K', 'M', 'M'), 9)
factor(plec)
#print(plec)

wiek <- seq(20, 20+0.4*35, by=0.4)
print(wiek)

tapply(wiek, plec, mean)
tapply(wiek, rodzenstwo, mean)

#4
#date = format(date(), "%d/%m/%Y")
date <- c(0, 7, 1, 0, 2, 0, 1, 9)
D <-matrix(date, 4, 2, byrow = TRUE)
print(D)

#5
A <- t(D)
A%*%D
B =D%*%A
E =A%*%D
B%*%(solve(B))
E%*%(solve(E))

#6
library(MASS)
data = Cars93
sapply(data, is.factor)
Origin <- data['Origin']
Type <- data['Type']
table(Type)
table(Origin)

#7
mtcars6 = mtcars[mtcars$cyl==6,]
print(mtcars6)

#8
library(MASS)
dt = Insurance
x =tapply(dt$Claims, dt$Age, sum)
print(x)
y = tapply(dt$Claims, dt$Group, sum)
print(y)
