class ExisteBarcoError < StandardError

  def message
    self.class.name
  end

end