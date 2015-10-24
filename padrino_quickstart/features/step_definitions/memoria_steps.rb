Given(/^no hice operaciones$/) do
end

Given(/^hago una suma$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^hago una resta$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^reseteo la memoria$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^consulto cantidad de operaciones realizadas$/) do
  click_button('consultar_operaciones')
end

Then(/^la cantidad de operaciones es (\d+)$/) do |arg1|
  expect(page).to have_content("La cantidad de operaciones realizadas fueron: #{arg1}")
end
