#esta funcion realiza el calculo y grafica de la 
#aproximacion del numero e con t como argumento de entrada 

simulaNumeroE=function(nTotal){
  # creamos un objeto tipo data.frame con los calculos del numero e:
  # primero creamos los objetos que seran insumos para el calculo de VF:
  VA=1
  i=1

  t=1:nTotal
  tablanumeroe=data.frame(
    t=t,
    VF=VA*((1+(i/t))^t)
  )
  # creamos un objeto tipo lista con la tabla del numero e y algunos otros objetos: 
  objetolista1=list(
    tablaE=tablanumeroe,
    ValorActual=VA,
    TasaInteres=i,
    periodosSimulados=nTotal
  )
  # Ahora grafico los valores de la tabla del numero e:
  
  plot(x=tablanumeroe$t,y=tablanumeroe$VF,type="l",
       col="blue")
  
return(objetolista1)

}