require 'rspec'
require_relative '../model/jugador'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/ronda'

describe 'ronda' do

  let(:ronda) {Ronda.new}
  let(:elemP) {Piedra.new}
  let(:elemT) {Tijera.new}

  jug1 = Jugador.new('Jugador1')
  jug2 = Jugador.new('Jugador2')

  it 'deberia ganar Jugador1, si Jugador1 elige Piedra y Jugador2 elige Tijera' do
    jug1.elegir_elemento(elemP)
    jug2.elegir_elemento(elemT)
    expect(ronda.jugar(jug1,jug2)).to eq 'gana Jugador1'
  end

  it 'deberia ganar Jugador2, si Jugador1 elige Tijera y Jugador2 elige Piedra' do
    jug1.elegir_elemento(elemT)
    jug2.elegir_elemento(elemP)
    expect(ronda.jugar(jug1,jug2)).to eq 'gana Jugador2'
  end

  it 'deberian empatar los dos jugadores, si juegan el mismo elemento' do
    jug1.elegir_elemento(elemP)
    jug2.elegir_elemento(elemP)
    expect(ronda.jugar(jug1,jug2)).to eq 'empatan Jugador1 y Jugador2'
  end

end

