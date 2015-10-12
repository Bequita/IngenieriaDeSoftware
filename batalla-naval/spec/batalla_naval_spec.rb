require 'rspec'
require_relative '../model/batalla_naval'

describe 'batalla naval' do

  let(:batalla_naval) {BatallaNaval.new}

  context 'cuando quiero ubicar mis barcos' do

    it 'deberia ubicar un barco en el tablero' do
      batalla_naval.poner_barco('a3', 'destructor', :horizontal)

      expect(batalla_naval.tablero.obtener_celda('a3').estado).to eq 'ocupada'
      expect(batalla_naval.tablero.obtener_celda('a4').estado).to eq 'ocupada'
      expect(batalla_naval.tablero.obtener_celda('a5').estado).to eq 'ocupada'
    end

  end

end