lagart=read.csv(file="lagartijas.csv",header = TRUE)
lagart
LOV = lagart[1:25,3]
masa = lagart[1:25,2]

# a) Suma de la columna LOV
sumLov = sum(LOV)


#b) Cuadrado de la columna LOV
cuadradoLOV = (sum(LOV^2))

#c)Multiplicacion de la sumatoria de x y y
sumMult = sum((LOV%*%masa))

#d) Sumatoria de valores y
sumMasa = sum(masa)

#e Las Matrices
x1 = cbind(25,sumLov,sumLov,cuadradoLOV)
X = matrix(x1, nc=2, nr=2)

y1=cbind(sumMasa,sumMult)
Y = matrix(y1,nc=1,nr=2)

#f Resuleve el sistema Xb=Y
I = diag(1,nrow = 2)
inversaX=solve(X,I)
mutXyY = inversaX%*%Y
#g)
b = mutXyY

#h)Gráfico de dispersión
yr=b[1,1]+b[2,1]*LOV
plot(LOV,masa)
lines(LOV,yr)
#Agregar coeficiente de de variación, rango, primer y tercer cuartil
varianza_LOV = var(LOV)
varianza_masa = var(masa)
rango_LOV = range(LOV)
rango_masa = range(masa)

quantiles_LOV = quantile(LOV)
quantiles_masa = quantile(masa)

#Histograma

