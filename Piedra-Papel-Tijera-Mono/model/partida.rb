class Partida

  def initialize(jug1, jug2)
    @jugador1 = jug1
    @puntosJugador1 = 0

    @jugador2 = jug2
    @puntosJugador2 = 0

    @rondaActual = 1
  end

  def jugar_ronda()
    if @rondaActual < 4
      resultado_ronda = @jugador1.elementoJuego.contra(@jugador2.elementoJuego)
      @rondaActual += 1

      sumar_punto_a_jugador(resultado_ronda)
      estado_partida(resultado_ronda, diccionario_numero_ronda(@rondaActual - 1))
    else
      raise 'Ya se jugaron todas las rondas'
    end
  end

  def sumar_punto_a_jugador(resultado_ronda)
    if resultado_ronda.eql? :GANA
      @puntosJugador1 += 1
    elsif resultado_ronda.eql? :PIERDE
      @puntosJugador2 += 1
    end
  end

  def diccionario_numero_ronda(ronda_actual)
    hs = {1 => 'primera', 2 => 'segunda', 3 => 'tercera'}

    hs[ronda_actual]
  end

  def estado_partida(resultado_ronda, numero_ronda)
    if (@puntosJugador1.eql? @puntosJugador2) || (numero_ronda.eql? 'primera')
      if numero_ronda.eql? 'tercera'
        [diccionario_de_rondas(resultado_ronda, numero_ronda), 'No hay ganador de la partida, empatan los dos']
      else
        [diccionario_de_rondas(resultado_ronda, numero_ronda), 'Hasta el momento no hay ganador de la partida']
      end
    else
      if @puntosJugador1 > @puntosJugador2
        [diccionario_de_rondas(resultado_ronda, numero_ronda), "#{@jugador1.nombreJugador} gana la partida"]
      elsif @puntosJugador2 > @puntosJugador1
        [diccionario_de_rondas(resultado_ronda, numero_ronda), "#{@jugador2.nombreJugador} gana la partida"]
      else
      end
    end
  end

  def diccionario_de_rondas(arg1, numero_de_ronda)
    hs = {:GANA => "#{@jugador1.nombreJugador} gana la #{numero_de_ronda} ronda",
          :PIERDE => "#{@jugador2.nombreJugador} gana la #{numero_de_ronda} ronda"}
    hs.default = "Empatan la ronda #{@jugador1.nombreJugador} y #{@jugador2.nombreJugador}"

    hs[arg1]
  end

end