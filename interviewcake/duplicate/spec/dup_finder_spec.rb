require 'rspec'
require_relative '../lib/dup_finder'

describe Finder do
  it 'finds duplicate values in an array' do
    array = [1, 2, 3, 4, 5, 6, 2]
    find = Finder.new
    expect(find.duplicates(array)).to eq([2])
  end

  it 'finds the dups faster with only one duplicate' do
    array = [1, 2, 3, 4, 5, 6, 2]
    find = Finder.new
    expect(find.faster_dups_search(array)).to eq(2)
  end
end
