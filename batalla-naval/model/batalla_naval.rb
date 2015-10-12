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

end