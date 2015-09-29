require 'rspec'
require_relative '../model/partida'
require_relative'../model/jugador'
require_relative'../model/piedra'
require_relative'../model/tijera'
require_relative'../model/papel'
require_relative'../model/mono'

describe 'partida' do

  let(:piedra) {Piedra.new}
  let(:tijera) {Tijera.new}
  let(:papel) {Papel.new}
  let(:mono) {Mono.new}

  jug1 = Jugador.new('Jugador1')
  jug2 = Jugador.new('Jugador2')
  partida = Partida.new(jug1, jug2)

  context 'cuando se juega la primera ronda' do

    it 'Jugador1 deberia ganar la primer ronda' do
      jug1.elige_elemento(piedra)
      jug2.elige_elemento(tijera)
      expect(partida.jugar_primera_ronda).to eq 'Jugador1 gana la primera ronda'
    end

    it 'no se tendria que poder volver a jugar la primer ronda' do
      expect{partida.jugar_primera_ronda}.to raise_error('La primera ronda ya fue jugada')
    end

  end

  context 'cuando se juega la segunda ronda' do

    it 'Jugador2 deberia ganar la segunda ronda' do
      jug1.elige_elemento(papel)
      jug2.elige_elemento(tijera)
      expect(partida.jugar_segunda_ronda).to eq ['Jugador2 gana la segunda ronda', 'Hasta el momento no hay ganador de la partida']
    end

    it 'no se tendria que poder volver a jugar la segunda ronda' do
      expect{partida.jugar_segunda_ronda}.to raise_error('La segunda ronda ya fue jugada')
    end

  end

  context 'cuando se juega la tercera ronda' do

    it 'Jugador2 deberia ganar la tercer ronda, y la partida' do
      jug1.elige_elemento(mono)
      jug2.elige_elemento(tijera)
      expect(partida.jugar_tercera_ronda).to eq ['Jugador2 gana la tercera ronda', 'Jugador2 gana la partida']
    end

    it 'no se tendria que poder volver a jugar la tercera ronda' do
      expect{partida.jugar_tercera_ronda}.to raise_error('La tercera ronda ya fue jugada')
    end

  end

end