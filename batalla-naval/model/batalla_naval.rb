require_relative '../model/tablero'

class BatallaNaval

  attr_reader :tablero

  def initialize()
    @tablero = Tablero.new
  end

end