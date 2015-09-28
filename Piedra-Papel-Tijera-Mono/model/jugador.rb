class Jugador

  attr_reader :nombreJugador
  attr_accessor :elementoJuego
  @@numeroJugador = 0

  def initialize()
    @nombreJugador = 'Jugador' + (@@numeroJugador+1).to_s
    @@numeroJugador = @@numeroJugador + 1
  end

  def elegir_elemento(elemento_juego)
    @elementoJuego = elemento_juego
  end

end
