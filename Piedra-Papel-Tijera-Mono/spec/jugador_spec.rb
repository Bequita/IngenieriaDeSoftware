require 'rspec'
require_relative '../model/jugador'

describe 'jugador' do

  jugador1 = Jugador.new
  jugador2 = Jugador.new

  it 'el nombre del primer jugador deberia ser Jugador1' do
    expect(jugador1.nombreJugador).to eq 'Jugador1'
  end

  it 'el nombre del segundo jugador deberia ser Jugador2' do
    expect(jugador2.nombreJugador).to eq 'Jugador2'
  end

end