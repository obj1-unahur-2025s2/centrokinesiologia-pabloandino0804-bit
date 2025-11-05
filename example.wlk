class Paciente {
  const property edad
  var fortaleza
  var nivelDolor

  method fortaleza() = fortaleza
  method nivelDolor() = nivelDolor

  method usar(unAparato) {
    if (unAparato.seUtiliza(self)) {
      fortaleza = fortaleza + unAparato.cantFortaleza(self)
      nivelDolor = nivelDolor - unAparato.cantDolor(self)
    }
  }
}


class Magneto {
  method seUtiliza(unPaciente) = true
  method cantFortaleza(unPaciente) = 0
  method cantDolor(unPaciente) = (unPaciente.nivelDolor() * 0.1)
}

class Bicicleta {
  method seUtiliza(unPaciente) = unPaciente.edad() > 8
  method cantFortaleza(unPaciente) = 3
  method cantDolor(unPaciente) = 4
}

class Minitramp{
  method seUtiliza(unPaciente) = unPaciente.nivelDolor() < 20
  method cantFortaleza(unPaciente) = (unPaciente.edad() * 0.1)
  method cantDolor(unPaciente) = 0
}