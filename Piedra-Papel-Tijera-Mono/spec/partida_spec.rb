require 'rspec'
require_relative '../model/partida'
require_relative'../model/ronda'
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
  ronda = Ronda.new
  partida = Partida.new(jug1, jug2, ronda)

  context 'primera ronda' do

    it 'Jugador1 deberia ganar la primer ronda' do
      jug1.elige_elemento(piedra)
      jug2.elige_elemento(tijera)
      expect(partida.jugar_primera_ronda).to eq 'Jugador1 gana la primera ronda'
    end

    it 'no se tendria que poder volver a jugar la primer ronda' do
      jug1.elige_elemento(piedra)
      jug2.elige_elemento(tijera)
      expect{partida.jugar_primera_ronda}.to raise_error('La primera ronda ya fue jugada')
    end

  end

end