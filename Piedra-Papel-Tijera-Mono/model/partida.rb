class Partida

  attr_reader :jugador1, :jugador2, :ronda

  def initialize(jug1, jug2, ron)
    @jugador1 = jug1
    @jugador2 = jug2
    @ronda = ron
  end

  def jugar_primera_ronda()
    resultado = ronda.jugar(jugador1, jugador2)

    diccionario_de_rondas(resultado, "primera")
  end

  def diccionario_de_rondas(arg1, numero_de_ronda)
    hs = {"gana #{jugador1.nombreJugador}" => "#{jugador1.nombreJugador} gana la #{numero_de_ronda} ronda"}

    hs[arg1]
  end

end