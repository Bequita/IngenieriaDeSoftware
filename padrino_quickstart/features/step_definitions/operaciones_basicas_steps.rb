Given(/^voy a la pagina operaciones y selecciono suma$/) do
  visit 'operaciones'
  select('Sumar', from: 'operacion')
end

Given(/^voy a la pagina operaciones y selecciono resta$/) do
  visit 'operaciones'
  select('Restar', from: 'operacion')
end

Given(/^voy a la pagina operaciones y selecciono promedio$/) do
  visit 'operaciones'
  select('Promedio', from: 'operacion')
end

Given(/^un operando es (\d+)$/) do |arg1|
  fill_in 'op1', with: arg1
end

Given(/^otro operando es (\d+)$/) do |arg1|
  fill_in 'op2', with: arg1
end

Given(/^un operando a promediar es (\d+)$/) do |arg1|
  fill_in 'lista_num', with: arg1
end

Given(/^otro operando a  promediar es (\d+)$/) do |arg1|
  valor_anterior = find_field('lista_num').value
  fill_in 'lista_num', with: (valor_anterior + ', ' + arg1)
end

When(/^los sumo$/) do
  click_button('operar')
end

When(/^los resto$/) do
  click_button('operar')
end

When(/^los promedio$/) do
  click_button('promediar')
end

Then(/^el resultado es (\d+)$/) do |arg1|
  expect(page).to have_content("El resultado de la operacion es: #{arg1}")
end
