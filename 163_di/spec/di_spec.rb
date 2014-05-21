require 'rspec'
require_relative '../lib/di'

describe Di do
  it 'randomly rolls a di 10 times' do
    di = Di.new
    di.roll(10)
    expect(di.results.count).to eq(10)
  end

  it 'gives back a table of results' do
    di = Di.new
    di.roll(10)
    expect(di.results_table).to_not be_empty
  end

  it 'checkes the odds at a variety of rolls' do
    rolls = [10, 100, 1000, 10000, 100000, 1000000]
    6.times do |i|
      di = Di.new
      di.roll(rolls[i])
      di.results_table
    end
  end
end
