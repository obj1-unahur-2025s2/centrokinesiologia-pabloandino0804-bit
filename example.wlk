class Paciente {
  const property edad
  var fortaleza
  var nivelDolor
  const property rutina 

  method fortaleza() = fortaleza
  method nivelDolor() = nivelDolor

  method usar(unAparato) {
    if (unAparato.puedeUsarse(self)) {
      fortaleza = unAparato.cantFortaleza(self)
      nivelDolor = unAparato.cantDolor(self)
    }
  }

  method puedeRealizarLaRutina() = rutina.all({aparato => aparato.puedeUsarse(self)})

  method realizarRutina() {
    if (self.puedeRealizarLaRutina()) {
      rutina.forEach({aparato => self.usar(aparato)})
    }
  }
}


class Magneto {
  method puedeUsarse(unPaciente) = true
  method cantFortaleza(unPaciente) = unPaciente.fortaleza() + 0
  method cantDolor(unPaciente) = unPaciente.nivelDolor() - (unPaciente.nivelDolor() * 0.1)
}

class Bicicleta {
  method puedeUsarse(unPaciente) = unPaciente.edad() > 8
  method cantFortaleza(unPaciente) = unPaciente.fortaleza() + 3
  method cantDolor(unPaciente) = unPaciente.nivelDolor() - 4
}

class Minitramp{
  method puedeUsarse(unPaciente) = unPaciente.nivelDolor() < 20
  method cantFortaleza(unPaciente) = unPaciente.fortaleza() + (unPaciente.edad() * 0.1)
  method cantDolor(unPaciente) = unPaciente.nivelDolor() - 0
}