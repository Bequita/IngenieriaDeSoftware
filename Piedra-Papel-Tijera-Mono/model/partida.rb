class Partida

  attr_reader :jugador1, :jugador2, :ronda, :rondaActual

  def initialize(jug1, jug2, ron)
    @jugador1 = jug1
    @jugador2 = jug2
    @ronda = ron
    @rondaActual = 1
  end

  def jugar_primera_ronda()
    if @rondaActual.eql? 1
    resultado = ronda.jugar(jugador1, jugador2)

    @rondaActual = 2
    diccionario_de_rondas(resultado, "primera")
    else
      raise 'La primera ronda ya fue jugada'
    end
  end

  def diccionario_de_rondas(arg1, numero_de_ronda)
    hs = {"gana #{jugador1.nombreJugador}" => "#{jugador1.nombreJugador} gana la #{numero_de_ronda} ronda"}

    hs[arg1]
  end

end