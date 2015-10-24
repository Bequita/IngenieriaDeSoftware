Given(/^voy a la pagina operaciones$/) do
  visit 'operaciones'
end

Given(/^un operando suma es (\d+)$/) do |arg1|
  fill_in 'op1_suma', with: arg1
end

Given(/^otro operando suma es (\d+)$/) do |arg1|
  fill_in 'op2_suma', with: arg1
end

Given(/^un operando resta es (\d+)$/) do |arg1|
  fill_in 'op1_resta', with: arg1
end

Given(/^otro operando resta es (\d+)$/) do |arg1|
  fill_in 'op2_resta', with: arg1
end

Given(/^un operando a promediar es (\d+)$/) do |arg1|
  fill_in 'lista_num', with: arg1
end

Given(/^otro operando a  promediar es (\d+)$/) do |arg1|
  valor_anterior = find_field('lista_num').value
  fill_in 'lista_num', with: (valor_anterior + ', ' + arg1)
end

When(/^los sumo$/) do
  click_button('sumar')
end

When(/^los resto$/) do
  click_button('restar')
end

When(/^los promedio$/) do
  click_button('promediar')
end

Then(/^el resultado es (\d+)$/) do |arg1|
  expect(page).to have_content("El resultado de la operacion es: #{arg1}")
end
