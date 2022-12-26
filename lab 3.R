#name: Avishka sineth
#subject: Time series

height <- c(176,154,138,196,132,176,181,169,150,175)
bodymass <- c(82,49,53,112,47,69,77,71,62,78)
plot(bodymass, height)
lm(height ~ bodymass)
w = rnorm(500,0,1)
# 500 N(0,1) variates
v = filter(w, sides=2, rep(1/3,3))
# moving average
par(mfrow=c (2,1))
plot.ts(w, main="white noise")
plot.ts(v, main="moving average")
#problem 1
set.seed(98234)
my_series <- 1:100 + rnorm(100,0,10)
print(my_series)
moving_average <- function(x, n=5)
#create user-defined function
stats::filter(x, rep(1 / n, n) , sides = 2)
my_moving_average_1 <- moving_average(my_series)
#Apply user-defined function
print(my_moving_average_1)
install.packages("zoo")
library("zoo")
my_moving_average_2 <- rollmean(my_series, k =5)
#apply rollmean function
print(my_moving_average_2)
#printing moving average
#problem 2
my_moving_average_2 <- rollmean(my_series, k =3)
print(my_moving_average_2)
#problem 3
ts <- c(261,353,372,290,193,309,292,202)
moving_average_3 <- function(x, n=4)
stats::filter(x, rep(1 / n, n), sides =2)
my_moving_average_3 <- moving_average_3(ts)
print(my_moving_average_3)
#problem 4









