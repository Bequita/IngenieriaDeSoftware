Given(/^voy a la pagina operaciones$/) do
  visit 'operaciones'
end

Given(/^no hice operaciones$/) do
end

Given(/^hago una suma$/) do
  select('Sumar', from: 'operacion')
  fill_in 'op1', with: 1
  fill_in 'op2', with: 2
  click_button('operar')
end

Given(/^hago una resta$/) do
  select('Sumar', from: 'operacion')
  fill_in 'op1', with: 3
  fill_in 'op2', with: 4
  click_button('operar')
end

Given(/^reseteo la memoria$/) do
  click_button('resetear')
end

When(/^consulto cantidad de operaciones realizadas$/) do
  click_button('consultar_operaciones')
end

Then(/^la cantidad de operaciones es (\d+)$/) do |arg1|
  expect(page).to have_content("La cantidad de operaciones realizadas fueron: #{arg1}")
end
