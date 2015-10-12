require 'rspec'
require_relative '../model/batalla_naval'

describe 'batalla naval' do

  let(:batalla_naval) {BatallaNaval.new}

  context 'cuando quiero ubicar un barco destructor en las celdas a3 a4 a5' do

    it 'deberian estar ocupadas esas celdas' do
      batalla_naval.poner_barco('a3', 'destructor', :horizontal)

      expect(batalla_naval.tablero.obtener_celda('a3').estado).to eq 'ocupada'
      expect(batalla_naval.tablero.obtener_celda('a4').estado).to eq 'ocupada'
      expect(batalla_naval.tablero.obtener_celda('a5').estado).to eq 'ocupada'
    end

  end

  context 'cuando quiero consultar el estado de las coordenadas a3 a4 a5' do

    it 'deberian estar ocupadas esas celdas' do
      batalla_naval.poner_barco('a3', 'destructor', :vertical)

      expect(batalla_naval.tablero.obtener_celda('a3').estado).to eq 'ocupada'
      expect(batalla_naval.tablero.obtener_celda('b3').estado).to eq 'ocupada'
      expect(batalla_naval.tablero.obtener_celda('c3').estado).to eq 'ocupada'
    end

  end

  context 'cuando quiero disparar a un barco enemigo' do

    it 'deberia tocar agua' do
      batalla_naval.disparar('a3')

      expect(batalla_naval.consultar_estado_en('a3')).to eq :agua
    end

    it 'deberia golpear un barco' do
      batalla_naval.poner_barco('b5', :destructor, :vertical)
      barco = batalla_naval.tablero.obtener_celda('b5').barco_ocupante
      expect(barco.estado_barco).to eq 'activo'

      batalla_naval.disparar('b5')
      expect(barco.estado_barco).to eq 'golpeado'
    end

    it 'deberia hundir un barco' do
      batalla_naval.poner_barco('b5', :crucero, :horizontal)
      barco = batalla_naval.tablero.obtener_celda('b5').barco_ocupante
      expect(barco.estado_barco).to eq 'activo'

      batalla_naval.disparar('b5')
      expect(barco.estado_barco).to eq 'golpeado'
      batalla_naval.disparar('b6')
      expect(barco.estado_barco).to eq 'hundido'
    end

  end

end