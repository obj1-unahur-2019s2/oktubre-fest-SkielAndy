class Marca{
	var property contenidoDeLupulo
	var property paisDeFabrica
	var property graduacion
}
class MarcasRubias inherits Marca{
	
}
class MarcasRojas inherits MarcasNegras{
	override method graduacion(){
		return super() *1.25
	}
}
class MarcasNegras inherits Marca{
	override method graduacion(){
		graduacion=graduacionesReglamentarias.graduacionReglamentaria().min(2*contenidoDeLupulo)
		return graduacion
		} 
}
class Jarras{
	var property capacidad
	var property marca
	
	method contenidoDeAlcohol(){
		return capacidad*marca.graduacion()
	}
}
object graduacionesReglamentarias{
	var property graduacionReglamentaria=0.064
}