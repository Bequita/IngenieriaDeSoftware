class Celda

  attr_reader :coordenada_celda, :estado

  def initialize(coord)
    @estado = 'libre'
    @coordenada_celda = coord
    @barco_ocupante = :vacia
  end

  def cambiar_estado
    @estado = 'ocupada'
  end

  def asignar_barco(barco)
    @barco_ocupante = barco
  end

  def esta_ocupada?
    @estado.eql? 'ocupada'
  end

end