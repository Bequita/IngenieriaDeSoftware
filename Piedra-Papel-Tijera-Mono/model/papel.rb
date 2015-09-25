require_relative '../model/elementos'

class Papel < Elementos

  def resultado(elem1)
    hs = {'Piedra' => 'Gana', 'Tijera' => 'Pierde', 'Mono' => 'Pierde', 'Papel' => 'Empata'}

    hs[elem1.class.name]
  end

end