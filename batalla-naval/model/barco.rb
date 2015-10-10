class Barco

  attr_reader :tamanio, :nombre

  def initialize(tam)
    @tamanio = tam
    @nombre = nombrar_barco(tam)
  end

  def nombrar_barco(tam)
    hs = {1 => 'balsa', 3 => 'semirapido', 5 => 'acorazado'}

    if hs[tam] != nil
      hs[tam]
    elsif
      raise 'No se puede crear un barco de ese tamanio'
    end
  end

end