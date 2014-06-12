require 'rspec'
require 'benchmark'
require_relative '../lib/occurences'

describe 'occurences' do
  it 'returns occurences greater than 1' do
    str_array = ["A", "B", "C", "C"]
    expect(occurences(str_array)).to eq(['C'])
  end
  it 'returns nothing for a unique list' do
    alphabet = ('a'..'z').to_a
    expect(occurences(alphabet)).to be_empty
  end
end

alphabet = ('a'..'z').to_a
many_letters = []
(1..1000000).each { many_letters << alphabet.sample }


Benchmark.bm do |bm|
  bm.report do 
    occurences(many_letters)      
  end
  bm.report do 
    function(many_letters)
  end
end
