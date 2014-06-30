require 'rspec'
require_relative '../lib/sentence'

describe Sentence do
  let(:sentence) { Sentence.new("The lazy cat slept in the sunlight.") }
  it 'takes a sentence and allows an word look up' do
    expect(sentence[3]).to eq('cat')
  end
  it 'starts at one index' do
    expect(sentence[1]).to eq("The")
  end
  it 'gives a blank string at 0' do
    expect(sentence[0]).to eq("")
  end
  it 'gives a blank string with a zero call' do
    expect(sentence[-1]).to eq("")
  end
end
