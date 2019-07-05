#Simulación de la ley debil de los grandes números con valores que tienen una distribución gamma con parametros apha y beta
nv=c(10,50,100,500,1000,3000)
alpha=3
beta=4
M=1e4
par(mfrow=c(3,2))
xv_media=rep(NA,M)
for(i in 1:length(nv))
{
  ni=nv[i]
  for(j in 1:M)
  {
    xv_j=rgamma(ni,alpha,1/beta)
    xv_media[j]=mean(xv_j)
  }
  hist(xv_media,xlim=c(7,17),main=paste("Tamaño de muestra",nv[i],sep=''),col=i)
}