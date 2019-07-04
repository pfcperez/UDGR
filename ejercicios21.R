# En cierta región del país, la probabilidad de que en un parto nazca una niña es de 0.52. Si en un día se atienden 12 partos.
# a) ¿Cuál es la probabilidad de que nazcan 4 niñas?
n=12
p=0.52
dbinom(4,n,p)
#b)¿y de que nazcan a lo más 3? P(X<=3) función de densidad acumulada
dbinom(0,n,p)+ dbinom(1,n,p) + dbinom(2,n,p) + dbinom(3,n,p)
pbinom(3,n,p)
#Y que salgan al menos 5 niñas? P(X>=5)= 1-P(X<=4)
1-pbinom(4,n,p)
#d) Calcula c_0.05, c_0.5, c_0.95
qbinom(c(0.05,0.5,0.9),n,p)
#Generación de números aleatorios binomiales
#gráficas de densidad,acumulada, cuantiles, histograma
#set.seed(2)
par(mfrow=c(2,2))
plot(dbinom(0:12,n,p),type = "h",xlab = "k",ylab = "P(X=,k)", main = "FDP Binomial(n,p)")
curve(pbinom(x,n,p),0,12,main="Función de densidad acumulada")
curve(qbinom(x,n,p), main="Función cuantil binomial")
#La gráfica 1 y 4 deben se pareceidas ya qye son binomiales, mientras mas sea la muestra mas aumenta la similitud
hist(rbinom(1e4,n,p),main="Histograma de valores aleatorios", labels=TRUE, prob=TRUE)

#freq_abs numeros de veces que se repite un número
X=rbinom(1e4,n,p)
freq_abs =table(X)
freq_abs
#Frecuencia relativa divide el número de observaciones divido entre mil
freq_rel=prop.table((freq_abs))
freq_rel
Prob_teorica = data.frame(X=0:12,Prob=dbinom(0:12,n,p))
Prob_teorica
freq_rel=as.data.frame(freq_rel)
str(freq_rel)
freq_rel$X=as.integer(as.character(freq_rel$X))
comparacion = merge(freq_rel,Prob_teorica,all = TRUE)
comparacion 

#Gráfica de valores observados vs Teoricos
comparacion=merge(freq_rel,Prob_teorica,all = TRUE)
comparacion
with(comparacion,{
  plot(X,Freq,type = "b", xlim=c(-1,13),ylim = c(0,1.1), main = "negro->observado,rojo->teorico")
  points(X,Prob,col="red",pch=4)
  #lines(X,Prob,col="red",lty=2,lwd=2)
  #legend("topleft",c("f_rel","p_teo"),col =c("black","red"),lty =1:2,pch =c(1,4))
})