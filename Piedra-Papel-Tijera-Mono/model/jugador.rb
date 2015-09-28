class Jugador

  attr_reader :nombreJugador
  attr_reader :elementoJuego

  def initialize(nombre)
    @nombreJugador = nombre
  end

  def elige_elemento(elemento_juego)
    @elementoJuego = elemento_juego
  end

end
