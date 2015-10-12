require_relative 'celda'
require_relative 'barco'

class Tablero

  attr_reader :lista_celdas

  def initialize
    @lista_celdas = crear_matriz_celdas
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

  def siguiente_fila(letraFila)
    hs = {'a' => 'b', 'b' => 'c', 'c' => 'd', 'd' => 'e', 'e' => 'f', 'f' => 'g', 'g' => 'h', 'h' => 'i', 'i' => 'j'}

    hs[letraFila]
  end

  def ubicar_barco(coordenada, barco, direccion)
    if se_puede_ubicar_el_barco?(coordenada, barco.tamanio, direccion)
      cambiar_estado_celdas(coordenada, barco, direccion)
    end
  end

  def se_puede_ubicar_el_barco?(coordenada, tamanio_barco, direccion)
    if no_se_cae_del_tablero(coordenada, tamanio_barco, direccion)
      if direccion.eql? :horizontal
        !celdas_horizontales_ocupadas?(coordenada, tamanio_barco)
      elsif direccion.eql? :vertical
        !celdas_verticales_ocupadas?(coordenada, tamanio_barco)
      end
    else
      raise 'La coordenada cae fuera del tablero'
    end
  end

  def no_se_cae_del_tablero(coordenada, tamanio_barco, direccion)
    if direccion.eql? :horizontal
      posicion_final = Integer(coordenada[1]) + tamanio_barco
      posicion_final <= 10
    else
      posicion_final = dic_fila_a_numero_de_fila(coordenada[0]) + tamanio_barco
      posicion_final <= 10
    end
  end

  def celdas_horizontales_ocupadas?(coordenada, tamanio_barco)
    while tamanio_barco > 0
      celda_actual = obtener_celda(coordenada)
      if celda_actual.esta_ocupada?
        return true
      end

      coordenada = "#{coordenada[0]}#{Integer(coordenada[1]) + 1}"
      tamanio_barco -= 1
    end

    false
  end

  def celdas_verticales_ocupadas?(coordenada, tamanio_barco)
    while tamanio_barco > 0
      celda_actual = obtener_celda(coordenada)
      if celda_actual.esta_ocupada?
        return true
      end

      coordenada = "#{siguiente_fila(coordenada[0])}#{coordenada[1]}"
      tamanio_barco -= 1
    end

    false
  end

  def cambiar_estado_celdas(coordenada, barco, direccion)
    if direccion.eql? :horizontal
      cambiar_estado_celdas_horizontal(coordenada, barco)
    else
      cambiar_estado_celdas_vertical(coordenada, barco)
    end
  end

  def cambiar_estado_celdas_horizontal(coordenada, barco)
    tamanio_barco = barco.tamanio

    while tamanio_barco > 0
      celda = obtener_celda(coordenada)
      celda.cambiar_estado
      celda.asignar_barco(barco)

      coordenada = "#{coordenada[0]}#{Integer(coordenada[1]) + 1}"
      tamanio_barco -= 1
    end
  end

  def cambiar_estado_celdas_vertical(coordenada, barco)
    tamanio_barco = barco.tamanio

    while tamanio_barco > 0
      celda = obtener_celda(coordenada)
      celda.cambiar_estado
      celda.asignar_barco(barco)

      coordenada = "#{siguiente_fila(coordenada[0])}#{coordenada[1]}"
      tamanio_barco -= 1
    end
  end

end

