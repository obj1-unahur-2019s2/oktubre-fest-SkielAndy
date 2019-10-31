import marcas.*
class Personas{
	var property peso
	var property jarrasCompradas=[]
	var property escuchaMusicaTradicional
	var property nivelDeAguante
	method comprarJarra(jarra){
		jarrasCompradas.add(jarra)
	}
	method estaEbrio(){
		return jarrasCompradas.sum({jarra=> jarra.contenidoDeAlcohol()})*peso>nivelDeAguante
	}
	method leGusta(cerveza)
}
class Belga inherits Personas{
	override method leGusta(cerveza){
		return cerveza.contenidoDeLupulo()>4
	}
}
class Checo inherits Personas{
	override method leGusta(cerveza){
		return cerveza.graduacion()>=0.08
	}
}
class Aleman inherits Personas{
	override method leGusta(cerveza) = true
}
