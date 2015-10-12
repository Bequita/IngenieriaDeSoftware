class Barco

  attr_reader :tamanio, :nombre

  def initialize(nom)
    @nombre = nom
    @tamanio = tamanio_barco(nom)
  end

  def tamanio_barco(nom)
    hs = {:submarino => 1, :crucero => 2, :destructor => 3}

    if hs[nom.to_sym] != nil
      hs[nom.to_sym]
    else
      raise 'No se puede crear un barco con ese nombre'
    end
  end

end