require 'pry'
class Evaluator

  def initialize(formula)
    @formula = formula
  end

  def result
    patterns = @formula.split
    opp = opp_index(patterns.last)
    first = patterns.first[0...opp]
    last = patterns.first[opp..-1]
    if patterns.last[opp] == "+"
      return first.to_i + last.to_i
    elsif patterns.last[opp] == "-"
      return first.to_i - last.to_i
    end
  end

  private

  def opp_index(str)
    result = nil
    str.each_char.with_index do |letter, index|
      if /\W/.match(letter)
        result = index
      end
    end
    result
  end
end
