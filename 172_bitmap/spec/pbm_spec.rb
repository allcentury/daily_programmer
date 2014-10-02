require 'rspec'
require 'pry'
require_relative '../lib/pbm'

describe Pbm do
  it 'translates a letter into a bitmap' do
    pbm = Pbm.new
    input = 'j'
    expect(pbm.convert(input)).to eq("0 0 0 0 1
                           0 0 0 0 1
                           0 0 0 0 1
                           0 0 0 0 1
                           0 0 0 0 1
                           1 0 0 0 1
                           0 1 1 1 1
                                     ")

  end
end
