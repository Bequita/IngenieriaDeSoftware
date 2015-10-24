Given(/^no hice operaciones$/) do
end

Given(/^hago una suma$/) do
  fill_in 'op1_suma', with: 1
  fill_in 'op2_suma', with: 2
  click_button('sumar')
end

Given(/^hago una resta$/) do
  fill_in 'op1_resta', with: 3
  fill_in 'op2_resta', with: 4
  click_button('restar')
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
