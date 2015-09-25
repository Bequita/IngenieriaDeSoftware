require_relative '../model/elementos'

class Mono < Elementos

  def resultado(elem1)
    hs = {'Piedra' => 'Empata', 'Tijera' => 'Pierde', 'Papel' => 'Gana', 'Mono' => 'Empata'}

    hs[elem1.class.name]
  end

end