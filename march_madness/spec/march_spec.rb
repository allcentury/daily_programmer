require_relative '../lib/march'
describe 'March Madness' do
  it 'tests sample 1' do
    string = "((your[drink {remember to}]) ovaltine)"
    expect(march_madness(string)).to eq("remember to drink your ovaltine")
  end
  it 'tests sample 2' do
    string = "[racket for {brackets (matching) is a} computers]"
    expect(march_madness(string)).to eq("matching brackets is a racket for computers")
  end
  it 'tests sample 3' do
    string = "[can {and it(it (mix) up ) } look silly]"
    expect(march_madness(string)).to eq("mix it up and it can look silly")
  end
end
