require 'rspec'
require_relative '../lib/stock.rb'

describe Import do
  it 'get generates stock data for Apple' do
    expect(Import.apple_stock.count).to eq(480)
  end
end

describe StockStalker do
  it 'finds the best time to buy' do
    apple = Import.apple_stock
    stock = StockStalker.new(apple)
    expect(stock.best_buy).should be > 3
  end
end
