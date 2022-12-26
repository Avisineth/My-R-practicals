#name: Avishka sineth
#subject: Time series


#Problem 1
observation <- c(123,39,78,52,110)
observation.timeseries <- ts(observation,start = c(2012,1),frequency = 1)
print(observation.timeseries)
plot(observation.timeseries)
#The graph have high value and low value pattern around upward trend.

#Problem 1
#this function returns a logical vector the same length as its argument, with T for missing values and F for non-missings. It's fairly common to want to know the index of the missing values, and the which() function will help do this for you.Math functions generally have a way to exclude missing values in their calculations. mean(), median(), colSums(), var(), sd(), min() and max() all take the na.rm argument. When this is TRUE, missing values are omitted. The default is FALSE, meaning that each of these functions returns NA if any input number is NA. Note that cor() and its relatives don't work that way: with those you need to supply the use= argument. This is to permit more complicated handling of missing values than simply omitting them.R's modeling functions accept an na.action argument that tells the function.

#Problem 3
#Why create and use time series objects of the ts() class?
#The function ts() is used to create time-series objects. These are vectors or matrices with class of "ts" (and additional attributes) which represent data which has been sampled at equispaced points in time. In the matrix case, each column of the matrix data is assumed to contain a single (univariate) time series.

#What is the function that can be used to test if an object is a time series?
#The function ts() is used to create time-series objects. as. ts() and is. ts() coerce an object to a time-series and test whether an object is a time series.

#Problem 4
#Univariate statistics summarize only one variable at a time.
#Bivariate statistics compare two variables. 
#Multivariate statistics compare more than two variables.

#Problem 5
nanoparticle <- c(0,2,1,4,2,5,4,8,10,8,5,2,4,7,1,3)
nanoparticle.timeseries <- ts(nanoparticle,start = c(0,1),frequency = 1)
print(nanoparticle.timeseries)
plot(nanoparticle.timeseries)
#The graph have up-to-down trend.