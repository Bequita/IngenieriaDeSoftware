require_relative '../model/elementos'

class Mono < Elementos

  def resultado(elem1)
    hs = { :Tijera => :PIERDE, :Papel => :GANA}
    hs.default = :EMPATA

    hs[elem1.class.name.to_sym]
  end

end
