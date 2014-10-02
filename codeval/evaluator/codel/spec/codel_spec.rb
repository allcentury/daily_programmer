require 'rspec'
require_relative '../lib/codel'

describe Codel do
  it 'takes a string an translates' do
    str = "rbc vjnmkf kd yxyqci na rbc zjkfoscdd ew rbc ujllmcp"
    expect(Codel.new(str).translate).to eq("the public is amazed by the quicknes of the juggler")
  end
end
