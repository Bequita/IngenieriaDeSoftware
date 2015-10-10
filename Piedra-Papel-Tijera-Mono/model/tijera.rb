require_relative '../model/elementos'

class Tijera < Elementos

  def resultado(elem1)
    hs = {:Papel => :GANA, :Piedra => :PIERDE, :Mono => :GANA}
    hs.default = :EMPATA

    hs[elem1.class.name.to_sym]
  end

  def vence_a_mono(elem)
    elem.es_perdido
  end

end