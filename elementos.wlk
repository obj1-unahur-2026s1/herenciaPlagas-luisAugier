class Hogar {
  var property nivelDeMugre
  var property confortQueOfrece
  method esBueno() = nivelDeMugre <= confortQueOfrece / 2
}

class Huerta {
  var property capacidadDeProduccion
  var property nivel
  method esBueno() = capacidadDeProduccion > nivel
}

class Mascota {
  var property nivelDeSalud
  method esBueno() = nivelDeSalud > 250
}

class Barrio {
  const property elementos
  method agregarTodos(coleccion){elementos.addAll(coleccion)}
 
  method cantidadElementosCopados() = elementos.count({ e => e.esBueno() })
  method cantidadElementosNoCopados() = elementos.count({ e => !e.esBueno() })
  method esCopado() = self.cantidadElementosCopados() > self.cantidadElementosNoCopados()
}