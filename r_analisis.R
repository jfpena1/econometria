data_base<-read.csv(file="/Users/felipebabbientos/Desktop/econometria/DataBase.csv",head = TRUE)
attach(data_base)
names(data_base)
install.packages("plyr")
library(plyr)

#Empieza el codigo

#----------------------------- 1.1.1 ---------------------------

#Datos categoricos (para imprimirlos solo escribir variable,
#y correr programa)

c_hospital = count(data_base["hospital"])
c_urban = count(data_base["urban"])
c_alcohol = count(data_base["alcohol"])
c_smoke = count(data_base["smoke"])
c_region = count(data_base["region"])
c_poverty = count(data_base["poverty"])
c_bweight = count(data_base["bweight"])
c_race = count(data_base["race"])
c_nsibs = count(data_base["nsibs"])

#Tablas de frecuencias relativas
prop.table(table(c_hospital))
prop.table(table(c_urban))
prop.table(table(c_alcohol))
prop.table(table(c_smoke))
prop.table(table(c_region))
prop.table(table(c_bweight))
prop.table(table(c_race))
prop.table(table(c_nsibs))

#barplot

hospital_fq = barplot(c_hospital$freq, names.arg = c_hospital$hospital, main = "Frequency Table hospital", col = c("Red", "Blue"))
urban_fq = barplot(c_urban$freq, names.arg = c_urban$urban, main = "Frequency Table urban", col = c("Red", "Blue"))
alcohol_fq = barplot(c_alcohol$freq, names.arg = c_alcohol$alcohol, main = "Frequency Table alcohol", col = c("Red", "Blue"))
smoke_fq = barplot(c_smoke$freq, names.arg = c_smoke$smoke, main = "Frequency Table smoke", col = c("Red", "Blue"))
region_fq = barplot(c_region$freq, names.arg = c_region$region, main = "Frequency Table region", col = c("Red", "Blue"))
poverty_fq = barplot(c_poverty$freq, names.arg = c_poverty$poverty, main = "Frequency Table poverty", col = c("Red", "Blue"))
bweight_fq = barplot(c_bweight$freq, names.arg = c_bweight$bweight, main = "Frequency Table bweight", col = c("Red", "Blue"))
race_fq = barplot(c_race$freq, names.arg = c_race$race, main = "Frequency Table race", col = c("Red", "Blue"))
nsibs_fq = barplot(c_nsibs$freq, names.arg = c_nsibs$nsibs, main = "Frequency Table nsibs", col = c("Red", "Blue"))

#---------------------------------------- 1.1.2 ----------------------

#Datos cuantitativos 

#Tablas de frecuencias absolutas
table(chldage)
table(mthage)
table(education)
table(wmonth)
table(sfmonth)
table(agepn)

#Tablas de frecuencias relativas
prop.table(table(chldage))
prop.table(table(mthage))
prop.table(table(education))
prop.table(table(wmonth))
prop.table(table(sfmonth))
prop.table(table(agepn))

#Histogramas de frecuencia Relativa

chldage_hist = hist(col=23,chldage,freq= FALSE, prob = T,main="chldage",xlab="edad ingresado (meses)",ylab="freq. relativa") 
lines(density(chldage),col="black",lty=3,lwd=2)
#Nose que forma podría ser 
mthage_hist = hist(col=2,mthage,freq= FALSE, prob = T,main="mthdage",xlab="edad (años)",ylab="freq. relativa")
lines(density(mthage),col="black",lty=3,lwd=2)
#normal claramente
education_hist = hist(col=3,education,freq= FALSE, prob = T,main="Education",xlab="años de educación",ylab="freq. relativa")
lines(density(education),col="black",lty=3,lwd=2)
#normal
wmonth_hist = hist(col=4,wmonth,freq= FALSE, prob = T,main="wmonth",xlab="edad de destete (meses)",ylab="freq. relativa")
lines(density(wmonth),col="black",lty=3,lwd=2)
#exponencial negativa ?
sfmonth_hist = hist(col=5,sfmonth,freq= FALSE, prob = T,main="sfmonth",xlab="edad comida solida intr.(meses)",ylab="freq. relativa")
lines(density(sfmonth),col="black",lty=3,lwd=2)
#exponencial negativa ?
agepn_hist = hist(col=6,agepn,freq= FALSE, prob = T,main="agepn",xlab="tiempo hospital",ylab="freq. relativa")
lines(density(agepn),col="black",lty=3,lwd=2)
# ni idea 
lines(dnorm(y, mean = n*mu, sd = sqrt(n)*sigma)~y, lwd = 2, col = "darkorange")

#------------------------------------ 1.2 Momentos centrales ----------------

summary(data_base)
var(data_base)
#falta la desviacion estándar

#para la kuortosis hay que instalar la libreria
install.packages("moments")
library(moments)
kurtosis(data_base)
skewness(data_base)
#-------------------------------------- 1.3 Medidas de posicion ------------


summary(data_base)

#percentiles

quantile(chldage, prob = seq(0, 1, length = 11), type = 5)
quantile(hospital, prob = seq(0, 1, length = 11), type = 5)
#falta completarlos con todos pero se entiende la idea


#boxplot

boxplot(chldage, ylab="DATOS", col = "Gold")
boxplot(hospital, ylab="DATOS", col = "Gold")
boxplot(mthage, ylab="DATOS", col = "Gold")
boxplot(urban, ylab="DATOS", col = "Gold")
boxplot(alcohol, ylab="DATOS", col = "Gold")
boxplot(smoke, ylab="DATOS", col = "Gold")
boxplot(region, ylab="DATOS", col = "Gold")
boxplot(poverty, ylab="DATOS", col = "Gold")
boxplot(bweight, ylab="DATOS", col = "Gold")
boxplot(race, ylab="DATOS", col = "Gold")
boxplot(education, ylab="DATOS", col = "Gold")
boxplot(nsibs, ylab="DATOS", col = "Gold")
boxplot(wmonth, ylab="DATOS", col = "Gold")
boxplot(sfmonth, ylab="DATOS", col = "Gold")
boxplot(agepn, ylab="DATOS", col = "Gold")


# ----------------------------------- 1.4 Estadísticas Descriptivas Bivariadas ------------------

#crosstabs:
#Así se hacen, despues hay que cachar cuales necesitamos y cuales no (es solo
#cosa de poner más codigo)

mytable <- table(hospital,urban)
mytable

#Scatter plots

plot(chldage, agepn, main="Scatterplot Example")


