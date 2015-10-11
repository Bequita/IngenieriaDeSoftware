require_relative 'celda'

class Tablero

  attr_reader :lista_celdas

  def initialize
    @lista_celdas = crear_matriz_celdas()
  end

  def crear_matriz_celdas()
    lista = []

    fila = 0
    10.times do
      lista[fila] = []
      array_fila = lista[fila]
      columna = 0
      10.times do
        array_fila[columna] = Celda.new([fila,columna])
        columna += 1
      end
      fila += 1
    end

    lista
  end

end
