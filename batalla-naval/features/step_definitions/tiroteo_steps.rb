require_relative '../../model/batalla_naval'

Given(/^Una batalla naval y un tablero vacio$/) do
  @batalla_naval = BatallaNaval.new
end

When(/^Disparo a la coordenada a(\d+)$/) do |arg1|
  @batalla_naval.disparar('a3')
end

Then(/^Toco agua, porque no habia ningun barco$/) do
  expect(@batalla_naval.consultar_estado_en('a3')).to eq :agua
end

Given(/^Una batalla naval y un barco ubicado en las coordenadas b(\d+) b(\d+) b(\d+)$/) do |arg1, arg2, arg3|
  @batalla_naval = BatallaNaval.new
  @batalla_naval.poner_barco('b5', :destructor, :horizontal)
end

When(/^Disparo a la coordenada b(\d+)$/) do |arg1|
  @batalla_naval.disparar('b5')
end

Then(/^Le acierto al barco, pero no lo hundo$/) do
  @barco_impactado = @batalla_naval.tablero.obtener_celda('b5').barco_ocupante
  expect(@barco_impactado.estado_barco).to eq 'golpeado'
end

Given(/^Una batalla naval y un barco ubicado en las coordenadas f(\d+)$/) do |arg1|
  @batalla_naval = BatallaNaval.new
  @batalla_naval.poner_barco('f7', :submarino, :horizontal)
end

When(/^Disparo a la coordenada f(\d+)$/) do |arg1|
  @batalla_naval.disparar('f7')
end

Then(/^Le acierto al barco, y lo hundo$/) do
  @barco_impactado = @batalla_naval.tablero.obtener_celda('f7').barco_ocupante
  expect(@barco_impactado.estado_barco).to eq 'hundido'
end
