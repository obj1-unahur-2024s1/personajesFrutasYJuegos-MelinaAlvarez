import frutas.*
import juegos.*

object martin {
	var energia = 100
	var tieneHambre = false
	var cantidadActividades = 0
	var despensa = agua
	
	method despensa() = despensa
	method energia() = energia
	method tieneHambre() = tieneHambre
	
	method esFeliz() = (energia>80 or cantidadActividades>=2) and not tieneHambre
	
	method comprar(fruta){
		despensa = fruta
	}
	
	method alimentarse(){
		energia = energia + despensa.energia()
		tieneHambre = not despensa.calmaElHambre()
		despensa = agua
	}
	
	method hacerDeporte(deporte){
		energia = 0.max(energia + deporte.energia())
		cantidadActividades = cantidadActividades + 1
	}
	
	method cantidadActividades() = cantidadActividades
	
	method dormir(){
		energia = energia * 1.5
		despensa.efectoCambioDeDia()
	}
}


object maria{
	var endorfina = 100
	var amuleto = amuletoRojo
	
	method endorfina(nuevo){endorfina = nuevo}
	method cambiarAmuleto(nuevo){amuleto = nuevo}
	method energia() = 2*endorfina + amuleto.energia()
	method esFeliz(){
		return endorfina > amuleto.energia()
	}
}

object amuletoAmarillo{
	method energia() = 5
}

object amuletoVerde{
	method energia() = 7
}

object amuletoRojo{
	method energia() = 14
}

object pepe{
	method energia() = 77
	method esFeliz() = true
}

object melina{
	var energia = 8
	
	method energia(nuevo){energia = nuevo}
	method energia() = energia
	method esFeliz() = energia > 8
}