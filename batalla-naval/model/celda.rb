class Celda

  attr_reader :coordenada_celda, :estado

  def initialize(coord)
    @estado = 'libre'
    @coordenada_celda = coord
  end

end