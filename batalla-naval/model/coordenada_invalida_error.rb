class CoordenadaInvalidaError < StandardError

  def message
    self.class.name
  end

end