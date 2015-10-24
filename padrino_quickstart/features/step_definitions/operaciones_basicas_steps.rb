Given(/^voy a la pagina sumar$/) do
  visit 'operaciones'
end

Given(/^un operando es (\d+)$/) do |arg1|
  fill_in 'op1_suma', with: arg1
end

Given(/^otro operando es (\d+)$/) do |arg1|
  fill_in 'op2_suma', with: arg1
end

When(/^los sumo$/) do
  click_button('sumar')
end

Then(/^el resultado es (\d+)$/) do |arg1|
  expect(page).to have_content("El resultado de la operacion es: #{arg1}")
end
