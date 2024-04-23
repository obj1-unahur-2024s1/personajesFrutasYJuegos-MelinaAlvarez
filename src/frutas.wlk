object agua{
	method energia(){return 0} 
	method calmaElHambre() = true
	method efectoCambioDeDia(){}
}

object manzana{
	var estado = manzanaVerde
	
	method madurar(){estado = manzanaRoja}
	method cambiarEstado(nuevo){estado = nuevo}
	method energia(){return estado.energia()}	
	method calmaElHambre() = true
	method efectoCambioDeDia(){estado = manzanaAmarilla}
	method estado() = estado
}

object manzanaRoja{
	method energia() = 14
}
object manzanaAmarilla{
	method energia() = 5
}
object manzanaVerde{
	method energia() = 7
}


object mandarina{
	var peso = 60
	
	method peso() = peso
	method peso(gramos){peso=gramos}
	method energia(){return 2*peso/10}
	method calmaElHambre() = true
	method efectoCambioDeDia(){self.peso(peso * 0.9)}
}

object banana{
	
	method energia(){return 5} 
	method calmaElHambre() = true
	method efectoCambioDeDia(){}
}