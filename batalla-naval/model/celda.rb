class Celda

  attr_reader :coordenada_celda, :estado
  attr_writer :estado

  def initialize(coord)
    @estado = 'libre'
    @coordenada_celda = coord
  end

  def cambiar_estado
    if @estado.eql? 'libre'
      @estado = 'ocupada'
    else
      @estado = 'libre'
    end
  end

end