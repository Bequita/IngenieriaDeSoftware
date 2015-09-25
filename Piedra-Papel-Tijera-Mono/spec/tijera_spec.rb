require 'rspec'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/papel'
require_relative '../model/mono'

describe 'tijera' do

  let(:piedra) {Piedra.new}
  let(:tijera) {Tijera.new}
  let(:papel)  {Papel.new}
  let(:mono)   {Mono.new}

  it 'debe ganar cuando juega contra papel' do
    expect(tijera.contra(papel)).to eq 'Gana'
  end

  it 'debe perder cuando juega contra piedra' do
    expect(tijera.contra(piedra)).to eq 'Pierde'
  end

  it 'debe ganar cuando juega contra mono' do
    expect(tijera.contra(mono)).to eq 'Gana'
  end

  it 'debe empatar cuando juega contra tijera' do
    expect(tijera.contra(tijera)).to eq 'Empata'
  end

end