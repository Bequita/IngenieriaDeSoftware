class Calculadora

  attr_reader :cantidad_operaciones

  def initialize
    @cantidad_operaciones = 0
  end

  def sumar(arg1, arg2)
    @cantidad_operaciones += 1
  end

end