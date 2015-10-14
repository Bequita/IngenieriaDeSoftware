require 'rspec'
require_relative '../model/tablero'
require_relative '../model/celda'
require_relative '../model/barco'

describe 'tablero' do

  let(:tablero) {Tablero.new}

  context 'cuando se crea un tablero' do

    it 'deberia crear una matriz de celdas de tamanio 10' do
      expect(tablero.lista_celdas.size).to eq 10
    end

    it 'deberia cualquier fila del array contener una columna de tamanio 10' do
      expect(tablero.lista_celdas[3].size).to eq 10
    end

  end

  context 'cuando se accede a una celda del tablero' do

    it 'deberia tener una celda' do
      expect(tablero.lista_celdas[2][0].coordenada_celda).to eq [2,0]
    end

    it 'deberia retornar la celda con posicion [3,5]' do
      expect(tablero.obtener_celda('d5').coordenada_celda).to eq [3,5]
    end

    it 'deberia no tener asignado ningun barco' do
      celda = tablero.obtener_celda('f5')

      expect(celda.barco_ocupante).to eq :vacia
    end

  end

  context 'cuando se ubica un barco en el tablero' do

    it 'deberia poder ubicarse el barco, porque las celdas no estan ocupadas' do
      expect(tablero.celdas_horizontales_ocupadas?('a3', 3)).to eq false
      expect(tablero.se_puede_ubicar_el_barco?('a3', 3, :horizontal)).to eq true
    end

    it 'deberia no poder ubicarse el barco, porque una celda esta ocupada' do
      celda_a4 = tablero.obtener_celda('a4')
      celda_a4.cambiar_estado

      expect(tablero.celdas_horizontales_ocupadas?('a3', 3)).to eq true
      expect(tablero.se_puede_ubicar_el_barco?('a3', 3, :horizontal)).to eq false
    end

    it 'deberia poder ubicarse el barco, porque las celdas no estan ocupadas' do
      expect(tablero.celdas_verticales_ocupadas?('a3', 3)).to eq false
      expect(tablero.se_puede_ubicar_el_barco?('a3', 3, :vertical)).to eq true
    end

    it 'deberia no poder ubicarse el barco, porque una celda esta ocupada' do
      celda_b3 = tablero.obtener_celda('b3')
      celda_b3.cambiar_estado

      expect(tablero.celdas_verticales_ocupadas?('a3', 3)).to eq true
      expect(tablero.se_puede_ubicar_el_barco?('a3', 3, :vertical)).to eq false
    end

    it 'deberia lanzar una excepcion porque cae fuera del tablero' do
      expect{tablero.se_puede_ubicar_el_barco?('a8', 3, :horizontal)}.to raise_exception(CoordenadaInvalidaError)
    end

    it 'deberia lanzar una excepcion porque cae fuera del tablero' do
      expect{tablero.se_puede_ubicar_el_barco?('i7', 3, :vertical)}.to raise_exception(CoordenadaInvalidaError)
    end

    it 'deberia cambiarle el estado a la celdas a3 a4 a5' do
      tablero.cambiar_estado_celdas('a3', Barco.new('destructor'), :horizontal)

      expect(tablero.obtener_celda('a3').estado).to eq 'ocupada'
      expect(tablero.obtener_celda('a4').estado).to eq 'ocupada'
      expect(tablero.obtener_celda('a5').estado).to eq 'ocupada'
    end

    it 'deberia cambiarle el estado a la celdas a3 a4 a5' do
      tablero.cambiar_estado_celdas('a3', Barco.new('destructor'), :vertical)

      expect(tablero.obtener_celda('a3').estado).to eq 'ocupada'
      expect(tablero.obtener_celda('b3').estado).to eq 'ocupada'
      expect(tablero.obtener_celda('c3').estado).to eq 'ocupada'
    end

    it 'deberia cambiarle el estado a las celdas cuando se ubica el barco exitosamente' do
      tablero.ubicar_barco('a3', Barco.new('destructor'), :horizontal)

      expect(tablero.obtener_celda('a3').estado).to eq 'ocupada'
      expect(tablero.obtener_celda('a4').estado).to eq 'ocupada'
      expect(tablero.obtener_celda('a5').estado).to eq 'ocupada'
    end

    it 'deberia cambiarle el estado a las celdas cuando se ubica el barco exitosamente' do
      tablero.ubicar_barco('a3', Barco.new('destructor'), :vertical)

      expect(tablero.obtener_celda('a3').estado).to eq 'ocupada'
      expect(tablero.obtener_celda('b3').estado).to eq 'ocupada'
      expect(tablero.obtener_celda('c3').estado).to eq 'ocupada'
    end

    it 'deberia lanzar una excepcion cuando se quiere colocar un barco en una posicion ocupada' do
      tablero.ubicar_barco('f7', Barco.new('submarino'), :horizontal)

      expect{tablero.ubicar_barco('f6', Barco.new('crucero'), :horizontal)}.to raise_exception(ExisteBarcoError)
    end

  end

  context 'cuando ubico un barco en el tablero, la celda tiene un barco asignado' do

    it 'deberia tener un barco destructor asignado' do
      barco = Barco.new('destructor')
      tablero.ubicar_barco('a3', barco, :vertical)

      expect(tablero.obtener_celda('a3').barco_ocupante).to eq barco
      expect(tablero.obtener_celda('b3').barco_ocupante).to eq barco
      expect(tablero.obtener_celda('c3').barco_ocupante).to eq barco
    end

  end

end