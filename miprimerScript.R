#Este es nuestro primer script de r en clase:
# creamos un objeto numerico llamado a
a=5
# creamos un objeto numerico llamado A
A=5
# creamos un objeto numerico llamado A.2=5
A.2=5
# creamos un vector de numeros
vector1=c(1,2,pi,10)
# creamos un vector con una secuencia de numeros del 1 al 100,000
t=1:100000
#creamos una secuenciua de numeros, pero ahora se incrementan en 
#0.02 unidades:
t2=seq(from=1,to=10,by=0.02)
# creamos un objeto con una sola cadena de texto:
objetotexto1="UMSNH"
# creamos un vector con cadenas de texto:
Vectortexto1=c("FCCA","UMSNH","2024")

# creamos un objeto tipo data.frame con los calculos del numero e:
# primero creamos los objetos que seran insumos para el calculo de VF:
VA=1
i=1
nTotal=10000
tablanumeroe=data.frame(
                        t=t,
                        VF=VA*((1+(i/t))^t)
                        )
# creamos un objeto tipo lista con la tabla del numero e y algunos otros objetos: 
objetolista1=list(
                 tablaE=tablaNumeroe,
                 ValorActual=VA,
                 TasaInteres=i,
                 periodosSimulados=nTotal
                 )
# Ahora grafico los valores de la tabla del numero e:

plot(x=tablanumeroe$t,y=tablanumeroe$VF,type="l",
    col="blue")




