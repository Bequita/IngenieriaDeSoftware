class Barco

  attr_reader :tamanio, :nombre

  def initialize(nom)
    @nombre = nom
    @tamanio = tamanio_barco(nom)
  end

  def tamanio_barco(nom)
    hs = {:submarino => 1, :crucero => 2, :destructor => 3}

    if hs[nom] != nil
      hs[nom]
    elsif
      raise 'No se puede crear un barco con ese nombre'
    end
  end

end