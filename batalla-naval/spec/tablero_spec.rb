require 'rspec'
require_relative '../model/tablero'
require_relative '../model/celda'

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

    it 'deberia tener una celda vacia' do
      expect(tablero.lista_celdas[2][0].coordenada_celda).to eq [2,0]
    end

    it 'deberia retornar la celda con posicion [3,5]' do
      expect(tablero.obtener_celda('d5').coordenada_celda).to eq [3,5]
    end

  end

end