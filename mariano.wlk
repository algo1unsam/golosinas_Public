
import golosinas.*


object mariano {
	
const property golosinas = []


method comprar(unaGolosina){
	golosinas.add(unaGolosina)
}
method desechar(unaGolosina){
	golosinas.remove(unaGolosina)
}

method cantidadDeGolosinas() = golosinas.size()
method tieneLaGolosina(unaGolosina) =  golosinas.contains(unaGolosina)
	

method probarGolosinas() {
	golosinas.forEach({golosina => golosina.mordisco()})
}

method hayGolosinaSinTACC() =	golosinas.any({golosina => golosina.libreGluten()})

method preciosCuidados() =	golosinas.all({golosina => golosina.precio() <= 10})

method golosinaDeSabor(unSabor) = golosinas.find({	golosina => golosina.gusto() == unSabor }) //si compara obj mejor

method golosinasDeSabor(unSabor) =	golosinas.filter({golosina => golosina.gusto().equals(unSabor)})  //  == 

method sabores() =	golosinas.map({golosina => golosina.gusto()}).asSet()

method golosinaMasCara() =	golosinas.max({golosina => golosina.precio()})

method pesoGolosinas() =	golosinas.sum({golosina => golosina.peso()})

method golosinasFaltantes(golosinasDeseadas) =	golosinasDeseadas.difference(golosinas.asSet())  //o filter y contains  golosinasDeseadas.filter{golosina => not bolsaDeGolosinas.contains(golosina)}

method gustosFaltantes(gustosDeseados) =	gustosDeseados.difference(self.sabores())
}



