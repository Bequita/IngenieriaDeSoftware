Given(/^no hice operaciones$/) do
  @calculadora = Calculadora.new
end

Then(/^la cantidad de operaciones es (\d+)$/) do |arg1|
  expect(@calculadora.cantidad_operaciones).to eq arg1.to_i
end

Given(/^hago una suma$/) do
  @calculadora = Calculadora.new
  @calculadora.sumar(4,5)
end

Given(/^hago una resta$/) do
  @calculadora.restar(9,4)
end

Given(/^reseteo la memoria$/) do
  @calculadora.resetear_memoria
end
