#name: Avishka sineth
#subject: Time series


#Problem 1
x <- c(1,5,7,3,3,4,9,7,6,4)
arima(x, order = c(1, 0, 0))
#0.5293 slope
#-0.0049 mean
#0.0379 variance
AR <- arima(AirPassengers, order = c(1, 0, 0))
print(AR)
ts.plot(AirPassengers)
AR_fitted <- AirPassengers - residuals(AR)
points(AR_fitted, type = "l", col = 2, lty = 2)

#Problem 2
AR_fit <- arima(Nile, order = c(1, 0, 0))
print(AR_fit)
predict_AR <- predict(AR_fit)
predict_AR$pred[1]
predict(AR_fit, n.ahead = 10)
ts.plot(Nile, xlim = c(1871, 1980))
AR_forecast <- predict(AR_fit, n.ahead = 10) $pred
AR_forecast_se <- predict(AR_fit, n.ahead = 10) $se
points(AR_forecast, type = "l", col = 2)
points(AR_forecast - 2*AR_forecast_se, type = "l", col = 2, lty =2)
points(AR_forecast + 2*AR_forecast_se, type = "l", col = 2, lty =2)

#Problem 3
MA <- arima(Nile, order = c(0, 0, 1))
print(MA)
ts.plot(Nile)
MA_fitted <- Nile - residuals(MA)
points(MA_fitted, type = "l", col = 2, lty = 2)

#Problem 4
MA_fit <- arima(Nile, order = c(0, 0, 1))
print(MA_fit)
predict_MA <- predict(MA_fit)
predict_MA$pred[1]
predict(MA_fit, n.ahead = 10)
ts.plot(Nile, xlim = c(1871, 1980))
MA_forecast <- predict(MA_fit, n.ahead = 10) $pred
MA_forecast_se <- predict(MA_fit, n.ahead = 10) $se
points(MA_forecast, type = "l", col = 2)
points(MA_forecast - 2*MA_forecast_se, type = "l", col = 2, lty =2)
points(MA_forecast + 2*MA_forecast_se, type = "l", col = 2, lty =2)

#Problem 5
#Exploration data
data("AirPassengers")
is.ts(AirPassengers)
print(AirPassengers)
summary(AirPassengers)
start(AirPassengers)
end(AirPassengers)
time(AirPassengers)
frequency(AirPassengers)
ts.plot(AirPassengers, xlab="Year", ylab="Number of Passengers", main="Monthly totals of international airline passengers, 1949-1960")
abline(reg=lm(AirPassengers~time(AirPassengers)))
#Auto-correlation
acf(AirPassengers)
#Fit the AR model to AirPassengers
AR <- arima(AirPassengers, order = c(1,0,0))
print(AR)
ts.plot(AirPassengers)
AR_fit <- AirPassengers - residuals(AR)
points(AR_fit, type = "l", col = 2, lty = 2)
#Forcasting using AR model
predict_AR <- predict(AR)
predict_AR$pred[1]
predict(AR, n.ahead = 10)
ts.plot(AirPassengers, xlim = c(1949, 1961))
AR_forecast <- predict(AR, n.ahead = 10)$pred
AR_forecast_se <- predict(AR, n.ahead = 10)$se
points(AR_forecast, type = "l", col = 2)
points(AR_forecast - 2*AR_forecast_se, type = "l", col = 2, lty = 2)
points(AR_forecast + 2*AR_forecast_se, type = "l", col = 2, lty = 2)
#Fit the MA model to AirPassengers
MA <- arima(AirPassengers, order = c(0,0,1))
print(MA)
ts.plot(AirPassengers)
MA_fit <- AirPassengers - resid(MA)
points(MA_fit, type = "l", col = 2, lty = 2)
#Forcasting using MA model
predict_MA <- predict(MA)
predict_MA$pred[1]
predict(MA,n.ahead=10)
ts.plot(AirPassengers, xlim = c(1949, 1961))
MA_forecasts <- predict(MA, n.ahead = 10)$pred
MA_forecast_se <- predict(MA, n.ahead = 10)$se
points(MA_forecasts, type = "l", col = 2)
points(MA_forecasts - 2*MA_forecast_se, type = "l", col = 2, lty = 2)
points(MA_forecasts + 2*MA_forecast_se, type = "l", col = 2, lty = 2)
#Choosing AR or MA: Exploiting ACF plots
cor(AR_fit, MA_fit)
AIC(AR)
AIC(MA)
BIC(AR)
BIC(MA)