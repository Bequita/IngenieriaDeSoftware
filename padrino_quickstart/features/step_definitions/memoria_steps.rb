Given(/^no hice operaciones$/) do
  @calculadora = Calculadora.new
end

Then(/^la cantidad de operaiones es (\d+)$/) do |arg1|
  expect(@calculadora.cantidad_operaciones).to eq 0
end
