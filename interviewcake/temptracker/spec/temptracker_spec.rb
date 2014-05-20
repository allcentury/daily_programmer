require 'rspec'
require 'pry'
require_relative '../lib/temptracker'

describe TempTracker do
  before(:each) do
    @temp = TempTracker.new
    (0..25).each do |count|
      @temp.insert(count)
    end
  end
  it 'can insert a new temp' do
    temp = TempTracker.new
    prev_count = temp.temps.count
    expect(temp.insert(25)).to eq("Temperature Inserted")
    expect(temp.temps.count).to eq(prev_count + 1)
  end
  it 'returns the highest temp we have seen so far' do
    expect(@temp.max).to eq(25)
  end
  it 'returns the lowest temperature' do
    expect(@temp.min).to eq(0)
  end
  it 'gets the mean of all temperatures' do
    expect(@temp.mean).to eq(12)
  end
  it 'gets the median of all temperatures' do
    expect(@temp.median).to eq(13)
  end
end
