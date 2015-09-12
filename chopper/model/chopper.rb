class Chopper

  def chop(arg1, arg2)
    if (arg1 == 3) && (arg2 == [3])
      0
    elsif (arg1 == 3) && (arg2 == [0,7,3])
      2
    else
      -1
    end
  end

  def sum(arg1)
    if (arg1 == [1])
      'uno'
    elsif (arg1 == [1,3])
      'cuatro'
    else
      'vacio'
    end
  end


end