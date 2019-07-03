D=data.frame(Nombre=c('Hugo','Paco','Luis'),
             Edad=c(12,15,10),
             Peso=c(43,50,100))

lagart=read.csv(file="lagartijas.csv",header = TRUE)
masa = lagart[1:25,2]

#media a la fuerza bruta
prom_masa = sum(masa)/length(masa)
mean(masa)

#varianza
sum((masa-mean(masa))^2)/(length(masa)-1)
#Varianza
var(masa)
#Desviacion estandard
sd(masa)

x=lagart[1:25,4]
y=masa
plot(x,y,col=4,xlab = 'Longitud cola',ylab = "Peso")
title("Lagartijas")
grid()