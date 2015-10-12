require_relative '../model/tablero'
require_relative '../model/barco'

class BatallaNaval

  attr_reader :tablero

  def initialize()
    @tablero = Tablero.new
  end

  def poner_barco(coordenada, tipo_barco, direccion)
    @tablero.ubicar_barco(coordenada, Barco.new(tipo_barco), direccion)
  end

  def consultar_estado_en(coordenada)
    @tablero.consultar_estado_celda(coordenada)
  end

  def disparar(coordenada)
    @tablero.disparar_en_celda(coordenada)
  end

end