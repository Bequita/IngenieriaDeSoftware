class Calculadora

  attr_reader :cantidad_operaciones

  def initialize
    @cantidad_operaciones = 0
  end

  def sumar(arg1, arg2)
    @cantidad_operaciones += 1

    arg1 + arg2
  end

  def restar(arg1, arg2)
    @cantidad_operaciones += 1

    arg1 - arg2
  end

  def promedio(arg1)
    @cantidad_operaciones += 1

    acum = 0
    arg1.each { |i| acum += i }
    acum / arg1.size
  end

  def resetear_memoria
    @cantidad_operaciones = 0
  end

end