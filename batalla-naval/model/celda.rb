class Celda

  attr_reader :coordenada_celda, :estado, :barco_ocupante, :fue_impactada

  def initialize(coord)
    @estado = 'libre'
    @coordenada_celda = coord
    @barco_ocupante = :vacia
    @fue_impactada = false
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

  def impactar_celda
    @fue_impactada = true
    @barco_ocupante.restar_sector

    @barco_ocupante.estado_barco
  end

end