require 'rspec'
require_relative '../lib/string_math'

describe 'string math' do
  it 'runs math operations on a string' do
    str = "10 + 2 * 3 / 4"
    expect(compute_math(str)).to eq(11.5)
  end
end
