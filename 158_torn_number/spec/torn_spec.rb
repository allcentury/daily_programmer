require_relative '../lib/torn'

describe 'it finds a torn number' do
  it 'is a valid torn number' do
    num = '3025'
    expect(istorn?(num)).to eq(true)
  end

end
