require_relative '../model/elementos'

class Piedra < Elementos

  def resultado(elem1)
    hs = {'Tijera' => 'Gana', 'Papel' => 'Pierde', 'Mono' => 'Empata', 'Piedra' => 'Empata'}

    hs[elem1.class.name]
  end

end