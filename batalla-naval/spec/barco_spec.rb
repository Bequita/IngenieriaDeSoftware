require 'rspec'
require_relative '../model/barco'

describe 'barco' do

  context 'cuando creo un barco nuevo' do

    it 'deberia crearse con el nombre submarino, y tener 1 sector activo' do
      barco = Barco.new('submarino')
      expect(barco.tamanio).to eq 1
      expect(barco.sectores_activos).to eq 1
      expect(barco.estado_barco).to eq 'activo'
    end

    it 'deberia crearse con el nombre crucero, y tener 2 sectores activo' do
      barco = Barco.new('crucero')
      expect(barco.tamanio).to eq 2
      expect(barco.sectores_activos).to eq 2
      expect(barco.estado_barco).to eq 'activo'
    end

    it 'deberia crearse con el nombre destructor, y tener 3 sectores activo' do
      barco = Barco.new('destructor')
      expect(barco.tamanio).to eq 3
      expect(barco.sectores_activos).to eq 3
      expect(barco.estado_barco).to eq 'activo'
    end

    it 'deberia tirar una excepcion' do
      expect{Barco.new('acorazado')}.to raise_error('No se puede crear un barco con ese nombre')
    end

  end

  context 'cuando le resto todos los sectores a un barco' do

    it 'deberia tener estado hundido' do
      barco = Barco.new('crucero')

      barco.restar_sector
      expect(barco.sectores_activos).to eq 1
      expect(barco.estado_barco).to eq 'golpeado'

      barco.restar_sector
      expect(barco.sectores_activos).to eq 0
      expect(barco.estado_barco).to eq 'hundido'
    end

  end

end