object tito {
  var peso = 70
  var bebidaConsumida = terere
  var dosis = 10 /* "Este 10 lo invente" - Profe */
  
  method peso() = peso
  
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
  
  method consumir(cantidad, bebida) {
    bebidaConsumida = bebida
    dosis = cantidad
  }
  
  method velocidad() = (bebidaConsumida.rendimientoQueOtorga(
    dosis,
    self
  ) * 490) / peso
  
  method esFeliz() = self.velocidad() >= 7
}

object pepe {
  var peso = 80
  var bebidaConsumida = whisky
  var dosis = 10
  var edad = 30
  
  method peso() = peso
  
  method cambiarPeso(nuevoPeso) {
    peso = nuevoPeso
  }
  
  method cumplirAnios() {
    edad += 1
  }
  
  method consumir(cantidad, bebida) {
    bebidaConsumida = bebida
    dosis = cantidad
  }
  
  method velocidad() = ((bebidaConsumida.rendimientoQueOtorga(
    dosis,
    self
  ) * 490) / peso) - if (edad > 10) 10 else 0
}

object whisky {
  method rendimientoQueOtorga(dosis, unDeportista) = 0.9 ** dosis
}

object terere {
  method rendimientoQueOtorga(dosis, unDeportista) = (0.1 * dosis).max(1)
}

object cianuro {
  method rendimientoQueOtorga(dosis, unDeportista) {
    if (unDeportista.peso() > 70) {
      return (unDeportista.peso() * 0.01) + dosis
    } else {
      return 0
    }
  }
}