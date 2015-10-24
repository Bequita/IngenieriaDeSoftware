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

When(/^los sumo$/) do
  click_button('sumar')
end

When(/^los resto$/) do
  click_button('restar')
end


Then(/^el resultado es (\d+)$/) do |arg1|
  expect(page).to have_content("El resultado de la operacion es: #{arg1}")
end
