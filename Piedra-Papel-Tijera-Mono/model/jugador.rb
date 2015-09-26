class Jugador

  attr_accessor :nombreJugador
  @@numeroJugador = 0

  def initialize()
    @nombreJugador = 'Jugador' + (@@numeroJugador+1).to_s
    @@numeroJugador = @@numeroJugador + 1
  end

end