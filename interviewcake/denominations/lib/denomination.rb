require 'pry'
class Cashier

  def denominations(amount, denoms)
    results = []
    binding.pry
    if denoms.length == 0
      return results
    elsif amount >= denoms[0]
      results << (amount / denoms[0])
      amt = amount % denoms[0]
    end
    denoms.shift
    denominations(amt, denoms)
    results
  end

end
