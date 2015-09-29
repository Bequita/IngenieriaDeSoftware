require 'rspec'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/papel'
require_relative '../model/mono'

describe 'papel' do

  let(:piedra) {Piedra.new}
  let(:tijera) {Tijera.new}
  let(:papel)  {Papel.new}
  let(:mono)   {Mono.new}

  it 'debe ganar cuando juega contra piedra' do
    expect(papel.contra(piedra)).to eq :GANA
  end

  it 'debe perder cuando juega contra tijera' do
    expect(papel.contra(tijera)).to eq :PIERDE
  end

  it 'debe perder cuando juega contra mono' do
    expect(papel.contra(mono)).to eq :PIERDE
  end

  it 'debe empatar cuando juega contra papel' do
    expect(papel.contra(papel)).to eq :EMPATA
  end

end