require_relative '../../model/batalla_naval'

Given(/^Una batalla naval$/) do
  @batalla_naval = BatallaNaval.new
end

When(/^Ubico un barco destructor en la posicion a3$/) do
  @batalla_naval.poner_barco('a3', :destructor, :horizontal)
end

Then(/^El barco destructor ocupa 3 posiciones en el tablero, a3 a4 a5$/) do
  @estado_celda_a3 = @batalla_naval.consultar_estado_en('a3')
  @estado_celda_a4 = @batalla_naval.consultar_estado_en('a4')
  @estado_celda_a5 = @batalla_naval.consultar_estado_en('a5')

  expect(@estado_celda_a3).to eq 'ocupada'
  expect(@estado_celda_a4).to eq 'ocupada'
  expect(@estado_celda_a5).to eq 'ocupada'
end

Given(/^Una posicion del juego y un barco, con un barco ya ubicado en esa celda$/) do
end

Given(/^Una posicion del juego y un barco, y la posicion cae fuera del tablero$/) do
end

Then(/^El barco no se puede ubicar$/) do
end
