object futbol {
	var energia = -10
	
	method energia(valor){energia = valor.abs() * -1}
	method energia() = energia	
}

object voley{
	var cantMinutos = 0
	
	method cantMinutos() = cantMinutos
	method cantMinutos(minutos){cantMinutos = minutos}
	method energia() = (2*cantMinutos) * -1
}

object aerobic{
	var temperaturaActual = 20
	
	method temperaturaActual() = temperaturaActual
	method cambiarTemperatura(temperatura){temperaturaActual = temperatura}
	method energia() = temperaturaActual/2
}

object basquet{
	var humedad = true
	var energia = 20
	
	method cambiarClima(nuevo){humedad = not humedad}
	method energia(nuevo){energia = nuevo}
	method energia() = 0.max(energia/if(humedad) 10 else 5)
}