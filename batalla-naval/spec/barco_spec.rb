require 'rspec'
require_relative '../model/barco'

describe 'barco' do

  context 'cuando creo un barco nuevo' do

    it 'deberia crearse con el nombre balsa' do
      barco = Barco.new(:submarino)
      expect(barco.tamanio).to eq 1
    end

    it 'deberia crearse con el nombre destructor' do
      barco = Barco.new(:crucero)
      expect(barco.tamanio).to eq 2
    end

    it 'deberia crearse con el nombre acorazado' do
      barco = Barco.new(:destructor)
      expect(barco.tamanio).to eq 3
    end

    it 'deberia tirar una excepcion' do
      expect{Barco.new(:acorazado)}.to raise_error('No se puede crear un barco con ese nombre')
    end

  end

end