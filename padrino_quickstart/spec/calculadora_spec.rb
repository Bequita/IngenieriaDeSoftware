require 'rspec'
require_relative '../app/models/calculadora'

describe 'calculadora' do

  context 'cuando se crea una calculadora' do

    it 'deberia tener la cantidad de operaciones en 0' do
      calculadora = Calculadora.new

      expect(calculadora.cantidad_operaciones).to eq 0
    end

  end

end