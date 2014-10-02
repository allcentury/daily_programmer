require 'rspec'
require_relative '../lib/camel'

describe CamelCaser do
  it 'camels a simple string' do
    str = "To be, or not to be: that is the question."
    expect(CamelCaser.new(str).convert).to eq("To Be, Or NoT tO bE: tHaT iS tHe QuEsTiOn.")
  end
  it 'camels the entire string' do
    str = "Whether 'tis nobler in the mind to suffer"
    result = "WhEtHeR 'tIs NoBlEr In ThE mInD tO sUfFeR"
    expect(CamelCaser.new(str).convert). to eq(result)
  end
end
