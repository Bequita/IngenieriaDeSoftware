require 'rspec'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/papel'
require_relative '../model/mono'

describe 'piedra' do

  let(:piedra) {Piedra.new}
  let(:tijera) {Tijera.new}
  let(:papel)  {Papel.new}
  let(:mono)   {Mono.new}

  it 'debe ganar cuando juega contra tijera' do
    expect(piedra.contra(tijera)).to eq 'Gana'
  end

  it 'debe perder cuando juega contra papel' do
    expect(piedra.contra(papel)).to eq 'Pierde'
  end

  it 'debe empatar cuando juega contra mono' do
    expect(piedra.contra(mono)).to eq 'Empata'
  end

  it 'debe empatar cuando juega contra piedra' do
    expect(piedra.contra(piedra)).to eq 'Empata'
  end

end