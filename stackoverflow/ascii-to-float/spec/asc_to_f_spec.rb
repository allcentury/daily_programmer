require 'rspec'
require_relative '../lib/ascii'

describe 'asci' do
  it 'finds the right value' do
    expect(ascii_to_i("255")).to eq(255)
  end
  it 'finds the right value' do
    expect(ascii_to_f("255.55")).to eq(255.55)
  end
  it 'finds the right value' do
    expect(ascii_to_f("1023.34343")).to eq(1023.34343)
  end
end
