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

  def obtener_celda(coord)
    fila = dic_fila_a_numero_de_fila(coord[0])
    columna = Integer(coord[1])

    @lista_celdas[fila][columna]
  end

  def dic_fila_a_numero_de_fila(letraFila)
    hs = {'a' => 0, 'b' => 1, 'c' => 2, 'd' => 3, 'e' => 4, 'f' => 5, 'g' => 6, 'h' => 7, 'i' => 8, 'j' => 9}

    hs[letraFila]
  end

end
