Given(/^voy a la pagina sumar$/) do
  visit 'sumar'
end

Given(/^un operando es (\d+)$/) do |arg1|
  fill_in 'op1', with: arg1
end

Given(/^otro operando es (\d+)$/) do |arg1|
  fill_in 'op2', with: arg1
end

When(/^los sumo$/) do
  click_button('sumar')
end

Then(/^el resultado es (\d+)$/) do |arg1|
  expect(page).to have_content("El resultado de tu suma es: #{arg1}")
end
