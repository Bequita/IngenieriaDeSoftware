class Ronda

  def jugar_ronda(jugador1, jugador2)
    resultado = jugador1.elementoJuego.contra(jugador2.elementoJuego)

    if resultado.eql? 'Gana'
      "gana #{jugador1.nombreJugador}"
    elsif resultado.eql? 'Pierde'
      "gana #{jugador2.nombreJugador}"
    else
      "empatan #{jugador1.nombreJugador} y #{jugador2.nombreJugador}"
    end
  end

end