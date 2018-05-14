data_base<-read.csv(file="/Users/felipebabbientos/Desktop/econometria/DataBase.csv",head = TRUE, sep = "\t")
attach(data_base)
names(data_base)
install.packages("plyr")
library(plyr)

#Empieza el codigo

#1.1.1

#Datos categoricos (para imprimirlos solo escribir variable,
#y correr programa)

c_hospital <= count(data_base["hospital"])
c_urban <= count(data_base["urban"])
c_alcohol <= count(data_base["alcohol"])
c_smoke <= count(data_base["smoke"])
c_region <= count(data_base["region"])
c_poverty <= count(data_base["poverty"])
c_bweight <= count(data_base["bweight"])
c_race <= count(data_base["race"])
c_nsibs <= count(data_base["nsibs"])


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

#1.1.2

#Datos cuantitativos (Histogramas)

chldage
chldage_hist = hist(chldage) #nose porque puta no funciona 
mthage_hist = hist(mthage)
