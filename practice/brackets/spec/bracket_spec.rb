require 'rspec'
require_relative '../lib/bracket'

describe BracketValidator do
  it 'validates when the brackets are in the right order' do
    str = "{ [ ] ( ) }"
    expect(BracketValidator.validate(str)).to eq(true)
  end
  it 'invalidates when the brackets are in the wrong order' do
    str = "{ [ ( ] ) }"
    expect(BracketValidator.validate(str)).to eq(false)
  end
  it 'invalidates when the brackets are in the wrong order' do
    str = "{ [ }"
    expect(BracketValidator.validate(str)).to eq(false)
  end
end
