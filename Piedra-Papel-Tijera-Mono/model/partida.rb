class Partida

  def initialize(jug1, jug2, ron)
    @jugador1 = jug1
    @puntosJugador1 = 0
    @jugador2 = jug2
    @puntosJugador2 = 0
    @ronda = ron
    @rondaActual = 1
  end

  def jugar_primera_ronda()
    if @rondaActual.eql? 1
    resultado_ronda = @ronda.jugar(@jugador1, @jugador2)
    @rondaActual = 2

    sumar_punto_a_jugador(resultado_ronda)
    diccionario_de_rondas(resultado_ronda, "primera")
    else
      raise 'La primera ronda ya fue jugada'
    end
  end

  def jugar_segunda_ronda()
    if @rondaActual.eql? 2
      resultado_ronda = @ronda.jugar(@jugador1, @jugador2)
      @rondaActual = 3

      sumar_punto_a_jugador(resultado_ronda)
      estado_partida(resultado_ronda, "segunda")
    else
      raise 'La segunda ronda ya fue jugada'
    end
  end

  def jugar_tercera_ronda
    if @rondaActual.eql? 3
      resultado_ronda = @ronda.jugar(@jugador1, @jugador2)
      @rondaActual = 'se terminaron las rondas'

      sumar_punto_a_jugador(resultado_ronda)
      estado_partida(resultado_ronda, 'tercera')
    else
      raise 'La tercera ronda ya fue jugada'
    end
  end

  def diccionario_de_rondas(arg1, numero_de_ronda)
    hs = {"gana #{@jugador1.nombreJugador}" => "#{@jugador1.nombreJugador} gana la #{numero_de_ronda} ronda",
          "gana #{@jugador2.nombreJugador}" => "#{@jugador2.nombreJugador} gana la #{numero_de_ronda} ronda"}
    hs.default = "Empatan la ronda #{@jugador1.nombreJugador} y #{@jugador2.nombreJugador}"

    hs[arg1]
  end

  def estado_partida(resultado_ronda, numero_de_ronda)
    if @puntosJugador1 > @puntosJugador2
      [diccionario_de_rondas(resultado_ronda, numero_de_ronda), "#{@jugador1.nombreJugador} gana la partida"]
    elsif @puntosJugador2 > @puntosJugador1
      [diccionario_de_rondas(resultado_ronda, numero_de_ronda), "#{@jugador2.nombreJugador} gana la partida"]
    else
      if numero_de_ronda.eql? 'tercera'
        [diccionario_de_rondas(resultado_ronda, numero_de_ronda), 'No hay ganador de la partida, empatan los dos']
      else
        [diccionario_de_rondas(resultado_ronda, numero_de_ronda), 'Hasta el momento no hay ganador de la partida']
      end
    end
  end

  def sumar_punto_a_jugador(jugador_que_gano)
    if jugador_que_gano.include? @jugador1.nombreJugador
      @puntosJugador1 += 1
    elsif jugador_que_gano.include? @jugador2.nombreJugador
      @puntosJugador2 += 1
    end
  end

end