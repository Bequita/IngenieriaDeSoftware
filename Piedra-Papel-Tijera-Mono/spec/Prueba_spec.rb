require 'rspec'
require_relative '../model/testing'

describe 'pruebita' do

  let(:tst) {Testing.new}

  it 'should be true' do
    expect(3).to eq 3
  end

  it 'true_method deberia retornar true' do
    expect(tst.true_method).to eq true
  end

  it 'another_method deberia retornar 5' do
    expect(tst.another_method).to eq 5
  end

end