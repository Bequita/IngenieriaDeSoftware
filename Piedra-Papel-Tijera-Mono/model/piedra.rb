class Piedra

  def contra(elem1)
    resultado(elem1)
  end

  def resultado(elem1)
    hs = {'Tijera' => 'Gana'}

    hs[elem1.class.name]
  end

end