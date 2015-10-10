require_relative '../model/elementos'

class Mono < Elementos

  def resultado(elem1)
    hs = { :Tijera => :PIERDE, :Papel => :GANA}
    hs.default = :EMPATA

    hs[elem1.class.name.to_sym]
  end

  def contra(elem)
    elem.vence_a_mono(self)
  end

  def es_empatado
    :EMPATA
  end

  def es_perdido
    :PIERDE
  end

  def es_ganado
    :GANA
  end

  def vence_a_mono(elem)
    self.es_empatado
  end

end
