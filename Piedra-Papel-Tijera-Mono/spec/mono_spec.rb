require 'rspec'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/papel'
require_relative '../model/mono'

describe 'mono' do

  let(:piedra) {Piedra.new}
  let(:tijera) {Tijera.new}
  let(:papel)  {Papel.new}
  let(:mono)   {Mono.new}

  it 'debe empatar cuando juega contra piedra' do
    expect(mono.contra(piedra)).to eq 'Empata'
  end

  it 'debe perder cuando juega contra tijera' do
    expect(mono.contra(tijera)).to eq 'Pierde'
  end

  it 'debe ganar cuando juega contra papel' do
    expect(mono.contra(papel)).to eq 'Gana'
  end

  it 'debe empatar cuando juega contra mono' do
    expect(mono.contra(mono)).to eq 'Empata'
  end

end