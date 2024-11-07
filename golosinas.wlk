object bombon {
var property precio = 5
var property peso =  15
const property gusto = "frutilla"
var property gluten = true

method mordisco() {
peso = (peso*0.8) -1
  }
  }

object alfajor {
  var property precio = 12
var property peso =  300
const property gusto = "chocolate"
var property gluten = false

method mordisco() {
    peso = (peso*0.8)
  }
}

object caramelo {
  var property precio = 1
var property peso =  5
const property gusto = "frutilla"
var property gluten = true

method mordisco() {
    peso -= 1
  }
}

object chupetin {
var property precio = 2
var property peso =  7
const property gusto = "naranja"
var property gluten = true

method mordisco() {
    if(peso >= 2){
        peso = (peso*0.90)
      }
  }
}

object oblea {
var property precio = 5
var property peso =  250
const property gusto = "vainilla"
var property gluten = false

method mordisco() {
    if(peso >= 70){
        peso = (peso/2)
      }
      else {
        peso = (peso*0.75)
      }
     }
    }



object chocolatin {
method precio() = peso*0.5
var property peso = 0
const property gusto = "chocolate"
var property gluten = false

method mordisco(){ peso -= 2 
}
}

object golosinaBaniada {
  var property baniochocolate = 4
  var property golosinaBase = null

 method peso() = golosinaBase.peso() + baniochocolate
 method precio() = golosinaBase.precio() + 2
 method gusto() = golosinaBase.gusto()
 method gluten()= golosinaBase.gluten()

 
 method mordisco(){ 
   golosinaBase.mordisco()
  if(baniochocolate>0){
    baniochocolate-=2
  }
  }
  
}

object pastilla {
  var property peso = 5
  var property precio = 0
  var property gluten = null
  var property gustos = ["frutilla","chocolate","naranja"]

  method glutenSON(valor) {
    gluten=valor
  }
  
  method esLibreono(){
    if(gluten==1){
     precio = 7
    }
    else if (gluten==0) {
     precio = 10
    }
  } 

  method mordisco() {
    gustos.add(gustos.first())
    gustos.remove(gustos.first())
  }
  method gusto() = gustos.first()
}

//parte 2


object mariano {
    const property bolsa = []


    method comprar(golosina){
        bolsa.add(golosina)
        } 
    
    method desechar(golosina) {
      bolsa.remove(golosina)
    }

    method probar() {
      bolsa.forEach({golosina=> golosina.mordisco()})
          }

    method hayGolosina(golosina) {
        bolsa.any({golosina => golosina.gluten()})
    } 

    method precioCuidado() =  bolsa.all({golosina => golosina.precio()>10})
    
    method golosinaDeSabor()= bolsa.first().gusto()

    method golosinasDeSabor(unSabor)= bolsa.filter({golosina => golosina.gusto()== unSabor})
    

    method sabores() = bolsa.map({golosina=>golosina.gusto()}).asSet()
    
    
    method golosinaMasCara()= bolsa.max({golosina=>golosina.precio()})
    
    method pesoGolosinas()= bolsa.sum({golosina=>golosina.peso()})
    
      
    method golosinasFaltantes() = juliana.golosinaDeseadas().filter({golosina=>!bolsa.contains(golosina)}) 
      
    method saboresFaltantes() = juliana.saborDeseado().filter({golosina=>!bolsa.contains(golosina)}) 
      
}
   
object juliana {
   var property golosinaDeseadas = [bombon, alfajor] 
   var property saborDeseado = ["chocolate", "frutilla"]
 
}