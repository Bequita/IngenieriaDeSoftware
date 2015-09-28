class Jugador

  attr_reader :nombreJugador
  attr_accessor :elementoJuego

  def initialize(nombre)
    @nombreJugador = nombre
  end

  def elegir_elemento(elemento_juego)
    @elementoJuego = elemento_juego
  end

end
