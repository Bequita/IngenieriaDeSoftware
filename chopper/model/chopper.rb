class Chopper

  def chop(arg1, arg2)
    (arg2.include? arg1) ? arg2.index(arg1) : -1
  end

  def sum(arg1)
    if arg1.eql?([])
      'vacio'
    else
      aux = 0
      arg1.each { |n| aux = aux + n }

      decompose_number(aux)
    end
  end

  def decompose_number(arg1)
    if arg1 >= 100
      'demasiado grande'
    elsif arg1 < 10
      dictionary_number_to_string(arg1)
    else
      dictionary_number_to_string(arg1.to_s[0]) + ',' + dictionary_number_to_string(arg1.to_s[1])
    end
  end

  def dictionary_number_to_string(arg1)
    hs = {0 => 'cero', 1 => 'uno', 2 => 'dos', 3 => 'tres', 4 => 'cuatro',
          5 => 'cinco', 6 => 'seis', 7 => 'siete', 8 => 'ocho', 9 => 'nueve'}
    hs[Integer(arg1)]
  end

end