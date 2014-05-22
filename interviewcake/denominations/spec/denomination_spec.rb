require 'rspec'
require_relative '../lib/denomination'

describe Cashier do
  it 'takes an amount of money and list of denominations and determines payout' do
    denoms = [3,2,1]
    amount = 4
    cashier = Cashier.new
    expect(cashier.denominations(amount, denoms)).to eq([[1,1,1,1],[1,1,2],[1,3],[2, 2]])
  end
end
