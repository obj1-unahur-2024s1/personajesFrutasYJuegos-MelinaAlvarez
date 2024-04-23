object equipo {
	var jugadorDerecho
	var jugadorIzquierdo
	var tecnico
	
	method asignarJugadorDerecho(jugador){
		jugadorDerecho = jugador
	}
	
	method asignarJugadorIzquierdo(jugador){
		jugadorIzquierdo = jugador
	}
	
	method asignarJugadorTecnico(jugador){
		tecnico = jugador
	}
	
	method intercambiarJugadores(){
		const jugador = jugadorDerecho 
		
		self.asignarJugadorDerecho(jugadorIzquierdo)
		self.asignarJugadorDerecho(jugador)
	}
	
	method evaluarIncorporacion(tecnicoNuevo){
		tecnico = if(tecnicoNuevo.energia() > tecnico.energia()) tecnicoNuevo else tecnico
	}
	
	method promedioEnergia(){
		return ((jugadorDerecho.energia()+jugadorIzquierdo.energia()+tecnico.energia())/3)
	}
	
	method sonFelices(){
		return jugadorDerecho.esFeliz() and jugadorIzquierdo.esFeliz() and tecnico.esFeliz()
	}
}
