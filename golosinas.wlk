
object bombon {
	var property peso = 15
	method precio() = 5
	//method gusto() = 
	method mordisco() { peso = peso * 0.8 - 1 }
}

object alfajor {
	var property peso = 300
	method precio() = 12
	//method gusto() = 
	method libreGluten() = false
	method mordisco() { peso = peso * 0.8 }
}

object caramelo {
	var property peso = 5
	method precio() = 1
	//method gusto() = 
	method mordisco() { peso = peso - 1 }
}

object chupetin {
	var property peso = 7
	method precio() = 2
	//method gusto() = 
	method mordisco() {
		if (peso > 2) peso = peso * 0.9
	}
}

object oblea {
	var property peso = 250
	method precio() = 5
	//method gusto() = 
	method libreGluten() = false
	method mordisco() {
		if (peso > 70) peso = peso * 0.5
		else peso = peso * 0.75
	}
}

object chocolatin {
	var property peso = 0
	var pesoInicial = 0
	var pesoActual = 0

	method precio() = pesoInicial * 0.5
	//method gusto() = 
	method libreGluten() = false

	method mordisco() {
		pesoActual -= 2
		peso = pesoActual
	}

	method pesoInicial(cuanto) {
		pesoInicial = cuanto
		pesoActual = cuanto
		peso = cuanto
	}

	method peso(nuevoPeso) {
		pesoActual = nuevoPeso
	}
	method peso() = pesoActual
}

object golosinaBaniada {
    var property golosinaBase = oblea
    var property pesoBanio = 4
    method pesoInicial() = golosinaBase.peso() + 4
    
    method sabor() = golosinaBase.sabor()


  method mordisco() {
    golosinaBase.mordisco()
   // if (pesoBanio > 0) { pesoBanio -= 2 }
    pesoBanio = (pesoBanio - 2).max(0) 
  } 


}

object tuttifrutti {
var property libreGluten = false
var property peso =  5
var property gusto = frutilla
//var saborActual = 0

//var property gustos = [frutilla, chocolate ,naranja] 
//method gusto() =  //gustos.get(saborActual)
method precio() = if (libreGluten) 7 else 10

method mordisco(){
gusto = gusto.siguiente()
}
}
// Sabores
object frutilla {
    method siguiente() = chocolate
  
}object naranja {
  
}object chocolate {
  
}

