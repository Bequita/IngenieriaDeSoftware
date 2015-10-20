require 'rspec'
require_relative '../app/models/calculadora'

describe 'calculadora' do

  calculadora = Calculadora.new

  context 'cuando se crea una calculadora' do

    it 'deberia tener la cantidad de operaciones en 0' do
      expect(calculadora.cantidad_operaciones).to eq 0
    end

  end

  context 'cuando hago operaciones con la calculadora deberia incrementarse el contador' do

    it 'deberia incrementarse en 1 cuando sumo' do
      calculadora.sumar(4,5)
      expect(calculadora.cantidad_operaciones).to eq 1
    end

  end

end