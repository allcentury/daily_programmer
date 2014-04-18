require_relative '../lib/fibo'

describe 'it finds a valid fibonacci sequence' do
  it 'is valid when' do
    num = 7
    expect(fibo(num)).to eq(13)
  end

  it 'finds the zeckendorf numbers' do
    num = 100
    expect(zeck(100)).to eq("89\n8\n3")
  end
end
