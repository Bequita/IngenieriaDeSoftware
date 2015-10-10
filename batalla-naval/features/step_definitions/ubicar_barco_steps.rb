require_relative '../../model/batalla_naval'

Given(/^Una batalla naval$/) do
  @batalla_naval = BatallaNaval.new
end

Given(/^Un tablero$/) do
  @tablero = @batalla_naval.tablero
end

When(/^Quiero ubicar un barco$/) do
  # @barco = Barco.new(1)
  # @batalla_naval.ubicarBarco(@barco)
end

Then(/^El barco ocupa una posicion en el tablero$/) do
end

Then(/^El barco no se puede ubicar$/) do
end
