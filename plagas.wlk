class Plaga {
  const poblacion

  method transmiteEnfermedades() = poblacion >= 10 && self.condisionAdicional()
  method condisionAdicional()
  method nivelDeDanio()
}
// clase nueva cuca inheris hera de Plaga
class Cucarachas inherits Plaga {
    const peso
    override method nivelDeDanio() {return poblacion * 0.5 }
    override method condisionAdicional() {return peso >= 10}
}

class Pulgas inherits Plaga {
    override method nivelDeDanio() {return poblacion * 2 }
    override method condisionAdicional()= true

  
}

class Garrapatas inherits Pulgas {
}

class Mosquitos inherits Plaga {

  method nivelDeDanio() = poblacion

  override method transmiteEnfermedades() =
    super.transmiteEnfermedades() && poblacion % 3 == 0
}