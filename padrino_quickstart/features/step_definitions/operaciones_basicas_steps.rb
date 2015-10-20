Given(/^una calculadora$/) do
  @calculadora = Calculadora.new
end

Given(/^un operando es (\d+)$/) do |arg1|
  @operando_1 = arg1.to_i
end

Given(/^otro operando es (\d+)$/) do |arg1|
  @operando_2 = arg1.to_i
end

When(/^los sumo$/) do
  @resultado = @calculadora.sumar(@operando_1, @operando_2)
end

Then(/^el resultado es (\d+)$/) do |arg1|
  expect(@resultado).to eq arg1.to_i
end

When(/^los resto$/) do
  @resultado = @calculadora.restar(@operando_1, @operando_2)
end

When(/^los promedio$/) do
end
