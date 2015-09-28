require 'rspec'
require_relative '../model/jugador'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/ronda'

describe 'ronda' do

  let(:ronda) {Ronda.new}
  let(:elemP) {Piedra.new}
  let(:elemT) {Tijera.new}

  jug1 = Jugador.new
  jug2 = Jugador.new

  it 'deberia ganar Jugador1, si Jugador1 elige Piedra y Jugador2 elige Tijera' do
    jug1.elegir_elemento(elemP)
    jug2.elegir_elemento(elemT)
    expect(ronda.jugar_ronda(jug1,jug2)).to eq 'gana Jugador1'
  end

end

