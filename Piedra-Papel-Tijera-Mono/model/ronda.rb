class Ronda

  def jugar(jugador1, jugador2)
    resultado = jugador1.elementoJuego.contra(jugador2.elementoJuego)

    if resultado.eql? 'Gana'
      "gana #{jugador1.nombreJugador}"
    elsif resultado.eql? 'Pierde'
      "gana #{jugador2.nombreJugador}"
    else
      "empatan los dos jugadores"
    end
  end

end