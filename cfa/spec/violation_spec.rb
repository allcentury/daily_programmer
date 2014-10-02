require 'rspec'
require_relative '../lib/violation'

describe Violation do
  let(:violation) { Violation.new(
      "204851",
      "261019",
      "Garbage and Refuse",
      "2012-01-03 00:00:00",
      "2012-02-02 00:00:00",
      "Refuse Accumulation"
    )
  }

  it 'requires 6 fields to be valid' do
    expect(violation[:errors]).to be_empty
      end
  it 'is invalid without the 6 fields' do
    violation.valid?
    expect(violation[:errors]).to be_present
  end
end
