require_relative 'ostruct'
require 'rspec'

describe Foo do

  subject { Foo.new }

  let(:foo) { OpenStruct.new() }

  before do
    expect(Bar).to receive(:find).and_return(foo)
  end

  it 'fetch object with name' do
    expect(foo).to receive(:fail)
    # subject.fetch_object
  end

end
