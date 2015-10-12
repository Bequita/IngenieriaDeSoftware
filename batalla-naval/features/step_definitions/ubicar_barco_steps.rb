require_relative '../../model/batalla_naval'

Given(/^Una batalla naval$/) do
  @batalla_naval = BatallaNaval.new
end

When(/^Ubico un barco destructor en la posicion a3$/) do
  @batalla_naval.poner_barco('a3', :destructor, :horizontal)
end

Then(/^El barco destructor ocupa 3 posiciones en el tablero, a3 a4 a5$/) do
  @estado_celda_a3 = @batalla_naval.tablero.obtener_celda('a3').estado
  @estado_celda_a4 = @batalla_naval.tablero.obtener_celda('a4').estado
  @estado_celda_a5 = @batalla_naval.tablero.obtener_celda('a5').estado

  expect(@estado_celda_a3).to eq 'ocupada'
  expect(@estado_celda_a4).to eq 'ocupada'
  expect(@estado_celda_a5).to eq 'ocupada'
end

Given(/^Una batalla naval, un barco y la posicion f5 ocupada$/) do
  @batalla_naval = BatallaNaval.new
  @batalla_naval.poner_barco('f5', :submarino, :horizontal)
end

When(/^Ubico un barco crucero en la posicion f(\d+)$/) do |arg1|
  begin
    @batalla_naval.poner_barco('f5', :crucero, :horizontal)
  rescue Exception => e
    @excepcion = e
  end
end

Then(/^El barco no se puede ubicar, porque ya hay un barco en esa posicion$/) do
  expect(@excepcion.message).to eq 'Ya hay un barco en esa posicion'
end

When(/^Ubico un barco en la posicion k(\d+)$/) do |arg1|
  begin
    @batalla_naval.poner_barco('k5', :destructor, :vertical)
  rescue Exception => e
    @excepcion = e
  end
end

Then(/^El barco no se puede ubicar, porque cae fuera del tablero$/) do
  expect(@excepcion.message).to eq 'La coordenada cae fuera del tablero'
end

