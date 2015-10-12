class Barco

  attr_reader :tamanio, :nombre, :sectores_activos, :estado_barco

  def initialize(nom)
    @nombre = nom
    @tamanio = tamanio_barco(nom)
    @sectores_activos = @tamanio
    @estado_barco = 'activo'
  end

  def tamanio_barco(nom)
    hs = {:submarino => 1, :crucero => 2, :destructor => 3}

    if hs[nom.to_sym] != nil
      hs[nom.to_sym]
    else
      raise 'No se puede crear un barco con ese nombre'
    end
  end

  def restar_sector
    @sectores_activos -= 1
    if @sectores_activos.eql? 0
      hundir_barco
    else
      @estado_barco = 'golpeado'
    end
  end

  def hundir_barco
    @estado_barco = 'hundido'
  end

end