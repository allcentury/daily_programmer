require 'rspec'
require_relative '../lib/reverser'

describe ArrayReverser do
  it 'reverses an array' do
    arr_obj = ArrayReverser.new
    names = ["a", "b", "c", "d"]
    expect(arr_obj.reverse(names)).to eq(["d", "c", "b", "a"])
  end
end
