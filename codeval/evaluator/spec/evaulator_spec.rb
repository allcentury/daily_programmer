require 'rspec'
require_relative '../lib/evaluator'

describe Evaluator do
  it 'takes a string and returns an integer' do
    str = '776 a+bc'
    expect(Evaluator.new(str).result).to eq(83)
  end
  it 'evaluates a larger expressoin' do
    str = "3413289830 a-bcdefghij"
    expect(Evaluator.new(str).result).to eq(-413289827)
  end
  it 'does more' do
    str = "12345 a+bcde"
    expect(Evaluator.new(str).result).to eq(2346)
  end
  it 'tries antoher' do
    str = "1232 ab+cd"
    expect(Evaluator.new(str).result).to eq(44)
  end
  it 'tries antoher' do
    str = "90602 a+bcde"
    expect(Evaluator.new(str).result).to eq(611)
  end
end
