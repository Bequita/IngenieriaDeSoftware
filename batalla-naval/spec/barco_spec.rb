require 'rspec'
require_relative '../model/barco'

describe 'barco' do

  context 'cuando creo un barco nuevo' do

    it 'deberia crearse con el nombre acorazado' do
      barco = Barco.new(5)
      expect(barco.nombre).to eq 'acorazado'
    end

    it 'deberia tirar una excepcion' do
      expect{Barco.new(7)}.to raise_error('No se puede crear un barco de ese tamanio')
    end

  end

end