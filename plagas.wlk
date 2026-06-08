class Plaga {
  var poblacion

  method transmiteEnfermedades() = poblacion >= 10 && self.condisionAdicional()
  method condisionAdicional()
  method nivelDeDanio()
  method atacar(unElemento){ 
    unElemento.recibirAtaque(self)
    poblacion = poblacion * 1.10
  }
}
// clase nueva cuca inheris hera de Plaga
class Cucarachas inherits Plaga {
    var peso
    override method nivelDeDanio() {return poblacion * 0.5 }
    override method condisionAdicional() {return peso >= 10}
    override method atacar(unElemento){
        super(unElemento)
        peso = peso + 2
    }
}

class Pulgas inherits Plaga {
    override method nivelDeDanio() {return poblacion * 2 }
    override method condisionAdicional()= true
}

class Garrapatas inherits Pulgas {
  override method atacar(unElemento){ 
    unElemento.recibirAtaque(self)
    poblacion = poblacion * 1.20
  }

}

class Mosquitos inherits Plaga {
    override method nivelDeDanio() {return poblacion  }
    override method condisionAdicional()= poblacion % 3 == 0
    
}

