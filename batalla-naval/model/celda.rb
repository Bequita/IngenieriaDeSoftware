class Celda

  attr_reader :id_celda, :estado

  def initialize(id)
    @estado = 'libre'
    @id_celda = id
  end

end