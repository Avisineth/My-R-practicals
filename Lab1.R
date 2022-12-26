#Name: Avishka Sineth
#Subject: Time Series


print(Nile)
length(Nile)
head(Nile,10)
tail(Nile,12)

#Variation pattern around quadratic trend

plot(Nile,xlab = "Year",ylab = "River volume (1e9 m^{3})", main = "Annual River Nile Volume at Aswan, 1871-1970", type = "b")

#Cyclic pattern around upward trend
plot(AirPassengers,xlab='Year',ylab ="Passengers(1000's)",main="International air passenger bookings in the United States, 1949-1960.",type="l")

#Variation pattern around downward trend
plot(LakeHuron,xlab='Year',ylab ="Water Level",main="Annual measurement of the water level of Lake huron 1875-1972",type="l")

#Seasonal pattern around linear trend
plot(UKDriverDeaths,xlab='Month',ylab ="Total of Car Drivers",main="monthly totals of car drivers in Great Britain killed or seriously injured Jan 1969 - Dec 1984.",type="l")

#Random pattern around upward trend
plot(WWWusage,xlab='Minute',ylab ="Number of Users",main="number of users connected to the Internet through a server every minute",type="l")

#Seasonal pattern around linear trend
plot(sunspot.year,xlab='Year',ylab ="Number of sunspots",main="yearly numbers of sunspots from 1700-1988",type="l")