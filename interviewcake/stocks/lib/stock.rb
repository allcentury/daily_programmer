class Import
  def self.apple_stock
    apple_stock = []
    minutes = 60 * 8
    dollars = Random.new
    (1..minutes).each do
      new_stock_price = dollars.rand(400...550)
      apple_stock << new_stock_price
    end
    apple_stock
  end
end

class StockStalker
  def initialize(stock)
    @stock = stock
  end

  def best_buy
    min_price = @stock.first
    max_profit = 0
    index = 0
    @stock.each do |price|
      min_price = [price, min_price].min
      max_profit = [max_profit, price - min_price].max
    end
    max_profit
  end
end
