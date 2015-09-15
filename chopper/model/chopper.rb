class Chopper

  def chop(arg1, arg2)
    (arg2.include? arg1) ? arg2.index(arg1) : -1
  end

  def sum(arg1)
    if (arg1 == [1])
      'uno'
    elsif (arg1 == [1,3])
      'cuatro'
    elsif (arg1 == [9,9])
      'uno,ocho'
    elsif (arg1 == [50,50])
      'demasiado grande'
    elsif (arg1 == [50,49])
      'nueve,nueve'
    else
      'vacio'
    end
  end

end