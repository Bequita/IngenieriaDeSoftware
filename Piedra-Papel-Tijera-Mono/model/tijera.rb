require_relative '../model/elementos'

class Tijera < Elementos

  def resultado(elem1)
    hs = {'Papel' => 'Gana', 'Piedra' => 'Pierde', 'Mono' => 'Gana', 'Tijera' => 'Empata'}

    hs[elem1.class.name]
  end

end